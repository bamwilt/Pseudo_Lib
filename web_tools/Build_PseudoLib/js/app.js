(function() {
    'use strict';

    var state = {
        sourceFiles: [],
        sourceRaw: '',
        cleanedCode: '',
        mainBody: '',
        parentText: '',
        parentIndex: null,
        missingDeps: null,
        depGroups: null,
        hadDups: false,
        dupList: [],
        resultText: '',
    };

    var $ = function(id) { return document.getElementById(id); };
    var logEl = function() { return $('statusLog'); };
    var depTreeEl = function() { return $('depTree'); };

    function log(msg, cls) {
        var el = logEl();
        if (!el) return;
        var div = document.createElement('div');
        div.className = 'status-line' + (cls ? ' ' + cls : '');
        div.textContent = msg;
        el.appendChild(div);
        el.scrollTop = el.scrollHeight;
    }

    function clearLog() {
        var el = logEl();
        if (el) el.innerHTML = '';
    }

    function normalizeBlankLines(text) {
        return text.replace(/\n{3,}/g, '\n\n');
    }

    // Strip Algoritmo/FinAlgoritmo lines AND capture code that was inside the block
    function stripAlgoritmoWithBody(text) {
        var lines = text.split('\n');
        var cleaned = [];
        var mainBody = [];
        var insideAlgo = false;
        var inFunc = false;
        var braceDepth = 0;

        for (var i = 0; i < lines.length; i++) {
            var raw = lines[i];
            var t = raw.trim();
            var tl = t.toLowerCase();

            if (/^Algoritmo\b/i.test(t)) {
                insideAlgo = true;
                continue;
            }
            if (/^FinAlgoritmo\b/i.test(t)) {
                insideAlgo = false;
                inFunc = false;
                continue;
            }

            if (insideAlgo) {
                var fn = window.getFunctionName(raw);
                if (fn) {
                    inFunc = true;
                    cleaned.push(raw);
                } else if (inFunc) {
                    if (tl.indexOf('finfuncion') === 0 || tl.indexOf('finsubproceso') === 0) {
                        inFunc = false;
                    }
                    cleaned.push(raw);
                } else {
                    mainBody.push(raw);
                }
            } else {
                // Outside Algoritmo — check for functions
                var fn2 = window.getFunctionName(raw);
                if (fn2) {
                    inFunc = true;
                    cleaned.push(raw);
                } else if (inFunc) {
                    if (tl.indexOf('finfuncion') === 0 || tl.indexOf('finsubproceso') === 0) {
                        inFunc = false;
                    }
                    cleaned.push(raw);
                } else {
                    // Non-function, non-main-body code outside Algoritmo block
                    // This could be blank lines or stray text
                    if (raw.trim() || (!raw.trim() && cleaned.length > 0)) {
                        cleaned.push(raw);
                    }
                }
            }
        }

        return {
            cleaned: cleaned.join('\n'),
            mainBody: mainBody.join('\n')
        };
    }

    function deduplicateFunctions(text) {
        var lines = text.split('\n');
        var seen = new Set();
        var removed = [];
        var keptLines = [];
        var inFunc = false;
        var skipBlock = false;

        for (var i = 0; i < lines.length; i++) {
            var line = lines[i];
            var funcName = window.getFunctionName(line);

            if (funcName) {
                if (inFunc) {
                    inFunc = false;
                    skipBlock = false;
                }
                var low = funcName.toLowerCase();
                if (seen.has(low)) {
                    skipBlock = true;
                    removed.push({ name: funcName, line: i + 1 });
                } else {
                    seen.add(low);
                    skipBlock = false;
                    keptLines.push(line);
                }
                inFunc = true;
            } else if (inFunc) {
                var t = line.trim().toLowerCase();
                if (t.indexOf('finfuncion') === 0 || t.indexOf('finsubproceso') === 0) {
                    if (!skipBlock) keptLines.push(line);
                    inFunc = false;
                    skipBlock = false;
                } else if (!skipBlock) {
                    keptLines.push(line);
                }
            } else {
                keptLines.push(line);
            }
        }
        return { cleaned: keptLines.join('\n'), removed: removed };
    }

    function updateFileTags() {
        var container = $('fileTags');
        if (!container) return;
        container.innerHTML = state.sourceFiles.map(function(f, i) {
            return '<span class="file-tag">' + f.name + ' <span class="remove" data-idx="' + i + '">&times;</span></span>';
        }).join('');
        container.querySelectorAll('.remove').forEach(function(el) {
            el.addEventListener('click', function() {
                var idx = parseInt(this.dataset.idx);
                state.sourceFiles.splice(idx, 1);
                updateFileTags();
                updateSourceEditor();
            });
        });
    }

    function updateSourceEditor() {
        var raw = state.sourceFiles.map(function(f) { return f.content; }).join('\n');
        state.sourceRaw = raw;

        var stripped = stripAlgoritmoWithBody(raw);
        var dd = deduplicateFunctions(stripped.cleaned);

        state.cleanedCode = normalizeBlankLines(dd.cleaned);
        state.mainBody = stripped.mainBody;
        state.hadDups = dd.removed.length > 0;
        state.dupList = dd.removed;

        $('sourceEditor').value = state.cleanedCode;
        $('sourceStats').textContent = state.sourceFiles.length + ' archivos, ' + state.cleanedCode.split('\n').length + ' lineas';
        if (window._sourceHL) window._sourceHL.render();
        checkButtons();
    }

    function checkButtons() {
        var ok = state.cleanedCode.trim().length > 0 && state.parentText.trim().length > 0;
        $('btnAnalyze').disabled = !ok;
        $('btnGenerate').disabled = state.cleanedCode.trim().length === 0;
        $('btnDownload').disabled = true;
    }

    // --- Highlighters ---
    window._sourceHL = new window.SyntaxHighlighter($('sourceEditor'));
    window._parentHL = new window.SyntaxHighlighter($('parentEditor'));
    window._resultHL = new window.SyntaxHighlighter($('resultEditor'));

    // --- File Loading ---

    $('sourceInput').addEventListener('change', function(e) {
        var files = Array.from(e.target.files);
        if (files.length === 0) return;
        var pending = files.length;

        function afterLoad() {
            if (state.sourceFiles.length > 0) {
                state.sourceFiles.sort(function(a, b) {
                    return a.name.localeCompare(b.name, undefined, { numeric: true, sensitivity: 'base' });
                });
            }
            updateFileTags();
            updateSourceEditor();
            log('Cargados ' + state.sourceFiles.length + ' archivos fuente', 'ok');
            $('footerSource').textContent = state.sourceFiles.length + ' fuentes';
            $('sourceInput').value = '';
        }

        Array.from(files).forEach(function(file) {
            var ext = '.' + file.name.split('.').pop().toLowerCase();
            if (ext !== '.psc' && ext !== '.txt') {
                pending--;
                log('Saltado (extension no valida): ' + file.name, 'warn');
                if (pending === 0) afterLoad();
                return;
            }
            var reader = new FileReader();
            reader.onload = function(ev) {
                state.sourceFiles.push({ name: file.name, content: ev.target.result });
                pending--;
                if (pending === 0) afterLoad();
            };
            reader.onerror = function() {
                log('Error leyendo: ' + file.name, 'missing');
                pending--;
                if (pending === 0) afterLoad();
            };
            reader.readAsText(file);
        });

        if (pending === 0) afterLoad();
    });

    $('parentInput').addEventListener('change', function(e) {
        var file = e.target.files[0];
        if (!file) return;
        var reader = new FileReader();
        reader.onload = function(ev) {
            state.parentText = ev.target.result;
            $('parentEditor').value = state.parentText;
            $('parentStats').textContent = file.name + ' - ' + state.parentText.split('\n').length + ' lineas';
            $('statusBadge').textContent = 'Padre cargado';
            log('Cargado padre: ' + file.name, 'dep');
            if (window._parentHL) window._parentHL.render();
            checkButtons();
            $('parentInput').value = '';
        };
        reader.readAsText(file);
    });

    // --- Analyze ---
    $('btnAnalyze').addEventListener('click', function() {
        if (!state.cleanedCode.trim() || !state.parentText.trim()) {
            alert('Carga primero los archivos fuente y el padre.');
            return;
        }

        clearLog();
        depTreeEl().innerHTML = '';
        $('btnDownload').disabled = true;

        if (state.hadDups && state.dupList.length > 0) {
            log('Funciones duplicadas:', 'warn');
            state.dupList.forEach(function(r) {
                log('  [DUP] ' + r.name + ' (linea ' + r.line + ')', 'missing');
            });
        } else {
            log('Sin funciones duplicadas.', 'ok');
        }

        log('Analizando dependencias...', '');

        var sourceFuncs = window.extractFunctionBlocks(state.cleanedCode);
        if (sourceFuncs.length === 0) {
            log('No se encontraron funciones en el codigo fuente.', 'missing');
            return;
        }

        var sourceDeclared = new Set();
        for (var fi = 0; fi < sourceFuncs.length; fi++) {
            sourceDeclared.add(sourceFuncs[fi].name.toLowerCase());
        }
        var sourceAllCalls = new Set();
        for (var fi2 = 0; fi2 < sourceFuncs.length; fi2++) {
            var calls = window.getFunctionCalls(sourceFuncs[fi2].code);
            for (var ci = 0; ci < calls.length; ci++) {
                sourceAllCalls.add(calls[ci].toLowerCase());
            }
        }
        var topCalls = window.getFunctionCalls(state.cleanedCode);
        for (var tci = 0; tci < topCalls.length; tci++) {
            sourceAllCalls.add(topCalls[tci].toLowerCase());
        }

        log('Funciones declaradas: ' + sourceDeclared.size, 'func');
        log('Llamadas totales: ' + sourceAllCalls.size, '');

        log('Indexando padre...', '');
        state.parentIndex = window.indexarFromText(state.parentText);
        var parentIndex = state.parentIndex.functionIndex;
        log('Funciones en padre: ' + parentIndex.size, 'ok');

        var missingNames = new Set();
        var callsArr = Array.from(sourceAllCalls);
        for (var mi = 0; mi < callsArr.length; mi++) {
            var call = callsArr[mi];
            if (!sourceDeclared.has(call) &&
                !window.PALABRAS_RESERVADAS.has(call) &&
                !window.PSEINT_KEYWORDS.has(call) &&
                call !== 'main') {
                missingNames.add(call);
            }
        }

        if (missingNames.size > 0) {
            log('Posibles dependencias faltantes: ' + missingNames.size, 'warn');
        } else {
            log('Sin dependencias externas.', 'ok');
        }

        var foundDeps = new Map();
        var notFound = [];
        var missArr = Array.from(missingNames);
        for (var ni = 0; ni < missArr.length; ni++) {
            var name = missArr[ni];
            var entry = parentIndex.get(name);
            if (entry && entry.module) {
                foundDeps.set(name, entry);
            } else {
                var mapped = window.KNOWN_MAPPINGS[name];
                if (mapped) {
                    var mod = state.parentIndex.modules.find(function(m) { return m.code === mapped; });
                    if (mod) {
                        foundDeps.set(name, {
                            name: name, code: '', line: -1,
                            module: { code: mod.code, name: mod.name, prefixes: [].concat(mod.prefixes) },
                            calls: [], declaredInBlock: []
                        });
                    } else {
                        notFound.push(name);
                    }
                } else {
                    notFound.push(name);
                }
            }
        }

        if (notFound.length > 0) {
            log('No encontradas en padre (' + notFound.length + '):', 'missing');
            notFound.slice(0, 12).forEach(function(n) {
                log('  [MISS] ' + n, 'missing');
            });
            if (notFound.length > 12) {
                log('  ... y ' + (notFound.length - 12) + ' mas', 'missing');
            }
        }

        if (foundDeps.size > 0) {
            var ownFuncs = sourceFuncs.map(function(f) {
                return {
                    name: f.name, code: f.code, line: f.line,
                    calls: window.getFunctionCalls(f.code),
                    declaredInBlock: [], module: null
                };
            });

            var deps = window.resolveDependencyTreeForModule(
                ownFuncs, parentIndex, null, state.parentIndex.functionsByModule
            );

            var depArr = Array.from(foundDeps);
            for (var di = 0; di < depArr.length; di++) {
                if (!deps.has(depArr[di][0])) {
                    deps.set(depArr[di][0], depArr[di][1]);
                }
            }

            state.missingDeps = deps;
            state.depGroups = window.groupDependenciesByModule(deps, parentIndex, state.parentIndex.modules);

            log('Dependencias totales (transitivas): ' + deps.size, 'dep');
            renderDepTree(state.depGroups);

            $('statusBadge').textContent = deps.size + ' deps';
            $('footerDeps').textContent = deps.size + ' dependencias';
        } else {
            state.missingDeps = null;
            state.depGroups = null;
            log('No se encontraron dependencias faltantes.', 'ok');
            $('statusBadge').textContent = 'Sin deps';
            $('footerDeps').textContent = '0 dependencias';
            depTreeEl().innerHTML = '<div class="empty-state">Sin dependencias externas.</div>';
        }

        $('footerSource').textContent = state.sourceFiles.length + ' fuentes';
    });

    function renderDepTree(groups) {
        var container = depTreeEl();
        container.innerHTML = '';
        if (!groups || groups.length === 0) {
            container.innerHTML = '<div class="empty-state">Sin dependencias externas.</div>';
            return;
        }

        for (var gi = 0; gi < groups.length; gi++) {
            var group = groups[gi];
            var modName = window.MODULE_FILE_NAMES[group.code] || group.name;
            var shortCode = group.code.replace('#', '');

            var gDiv = document.createElement('div');
            gDiv.className = 'dep-group';
            var header = document.createElement('div');
            header.className = 'dep-group-header';
            header.innerHTML = (group.prefix || group.code) + ' <span class="count">#' + shortCode + ' &mdash; ' + group.functions.length + ' funciones (' + modName + ')</span>';

            var body = document.createElement('div');
            body.className = 'dep-group-body';
            for (var fi3 = 0; fi3 < group.functions.length; fi3++) {
                var fn = group.functions[fi3];
                var fd = document.createElement('div');
                fd.className = 'dep-func';
                fd.textContent = fn.name;
                if (fn.line >= 0) {
                    var sp = document.createElement('span');
                    sp.className = 'source';
                    sp.textContent = ' (linea ' + fn.line + ')';
                    fd.appendChild(sp);
                }
                body.appendChild(fd);
            }

            (function(b) {
                header.addEventListener('click', function() {
                    b.style.display = b.style.display === 'none' ? 'block' : 'none';
                });
            })(body);

            gDiv.appendChild(header);
            gDiv.appendChild(body);
            container.appendChild(gDiv);
        }
    }

    // --- Generate (replaces Inject) ---

    $('btnGenerate').addEventListener('click', function() {
        if (!state.cleanedCode.trim()) {
            alert('Carga primero los archivos fuente.');
            return;
        }

        // Re-run dedup on current cleaned source
        var dd = deduplicateFunctions(state.cleanedCode);
        var srcCode = normalizeBlankLines(dd.cleaned);
        var hadDups = dd.removed.length > 0;

        if (hadDups) {
            log('Duplicados eliminados durante generacion.', 'warn');
            dd.removed.forEach(function(r) {
                log('  [DUP] ' + r.name + ' (linea ' + r.line + ')', 'missing');
            });
        }

        var lines = [];
        lines.push('// PseudoLib Web — Archivo generado');
        lines.push('');

        // Source functions
        lines.push(srcCode.trim());

        // Inject deps if available and parent is loaded
        var injectedCount = 0;
        var injectedGroups = 0;
        if (state.parentText.trim() && state.missingDeps && state.depGroups && state.depGroups.length > 0) {
            var groups = state.depGroups;
            lines.push('');
            lines.push('///==========[DEPENDECES]=============================================');
            lines.push('');

            for (var gi = 0; gi < groups.length; gi++) {
                var g = groups[gi];
                var sc = g.code.replace('#', '');
                var prefix = g.prefix || g.code;
                lines.push('//---[ ' + prefix + ' (#' + sc + ') ]------------------------------------------');
                for (var fi = 0; fi < g.functions.length; fi++) {
                    var fn = g.functions[fi];
                    lines.push('');
                    if (fn.code && fn.code.trim()) {
                        lines.push(fn.code);
                    } else {
                        lines.push('// ' + fn.name + ' — definida en ' + (fn.module ? fn.module.code : 'desconocido'));
                        lines.push('// Funcion ' + fn.name + '()');
                        lines.push('// TODO: cuerpo no disponible en el padre');
                        lines.push('// FinFuncion');
                    }
                    injectedCount++;
                }
                injectedGroups++;
            }
        }

        // Main body (code that was inside the original Algoritmo block)
        var mainBody = state.mainBody ? state.mainBody.trim() : '';
        if (mainBody) {
            mainBody = normalizeBlankLines(mainBody);
        }

        // Algoritmo placeHolder at the end with main body inside
        lines.push('');
        lines.push('Algoritmo placeHolder');
        if (mainBody) {
            lines.push(mainBody);
        }
        lines.push('FinAlgoritmo');
        lines.push('');

        // File import comments
        if (state.sourceFiles.length > 0) {
            lines.push('// Archivos fuente utilizados:');
            state.sourceFiles.forEach(function(f) {
                lines.push('// #import {' + f.name + '}');
            });
            lines.push('');
        }

        var result = lines.join('\n');
        // Final normalization: replace 3+ blank lines with 2
        result = normalizeBlankLines(result);
        // But ensure at least one blank before algorithm
        result = result.replace(/\n{2,}(Algoritmo placeHolder)/, '\n\n$1');

        state.resultText = result;
        $('resultEditor').value = state.resultText;
        $('resultStats').textContent = state.resultText.split('\n').length + ' lineas totales';
        if (window._resultHL) window._resultHL.render();

        var msg = 'Archivo generado: ' + state.sourceFiles.length + ' fuentes';
        if (injectedCount > 0) {
            msg += ', ' + injectedCount + ' dependencias inyectadas de ' + injectedGroups + ' modulos';
        }
        if (hadDups) {
            msg += ', ' + dd.removed.length + ' duplicados eliminados';
        }
        log(msg, 'ok');

        $('btnDownload').disabled = false;
    });

    // --- Download ---

    $('btnDownload').addEventListener('click', function() {
        if (!state.resultText.trim()) return;
        var blob = new Blob([state.resultText], { type: 'text/plain;charset=utf-8' });
        var url = URL.createObjectURL(blob);
        var a = document.createElement('a');
        a.href = url;
        a.download = 'PseudoLib_merged.psc';
        document.body.appendChild(a);
        a.click();
        document.body.removeChild(a);
        URL.revokeObjectURL(url);
        log('Descargado: PseudoLib_merged.psc', 'ok');
    });

    // --- Copy ---

    $('btnCopy').addEventListener('click', function() {
        if (!state.resultText.trim()) {
            alert('No hay resultado para copiar.');
            return;
        }
        if (navigator.clipboard && navigator.clipboard.writeText) {
            navigator.clipboard.writeText(state.resultText).then(function() {
                log('Copiado al portapapeles.', 'ok');
            }).catch(function() { fallbackCopy(); });
        } else {
            fallbackCopy();
        }
    });

    function fallbackCopy() {
        var ta = document.createElement('textarea');
        ta.value = state.resultText;
        ta.style.position = 'fixed';
        ta.style.left = '-9999px';
        document.body.appendChild(ta);
        ta.select();
        try {
            document.execCommand('copy');
            log('Copiado al portapapeles.', 'ok');
        } catch (e) {
            log('Error al copiar.', 'missing');
        }
        document.body.removeChild(ta);
    }

    // --- Clear ---

    $('btnClear').addEventListener('click', function() {
        state.sourceFiles = [];
        state.sourceRaw = '';
        state.cleanedCode = '';
        state.mainBody = '';
        state.parentText = '';
        state.parentIndex = null;
        state.missingDeps = null;
        state.depGroups = null;
        state.hadDups = false;
        state.dupList = [];
        state.resultText = '';

        $('sourceEditor').value = '';
        $('parentEditor').value = '';
        $('resultEditor').value = '';
        $('fileTags').innerHTML = '';
        $('sourceStats').textContent = '0 archivos';
        $('parentStats').textContent = 'Sin cargar';
        $('statusBadge').textContent = 'Sin cargar';
        $('resultStats').textContent = '0 lineas';
        $('footerSource').textContent = '0 fuentes';
        $('footerDeps').textContent = '0 dependencias';
        depTreeEl().innerHTML = '<div class="empty-state">Carga archivos y ejecuta el analisis.</div>';
        clearLog();

        if (window._sourceHL) window._sourceHL.render();
        if (window._parentHL) window._parentHL.render();
        if (window._resultHL) window._resultHL.render();

        checkButtons();
        $('btnDownload').disabled = true;
    });

    // --- Help ---

    $('btnHelp').addEventListener('click', function() {
        alert(
            'PseudoLib Web — Herramienta Unificada\n\n' +
            '1. Carga 1+ archivos .psc/.txt con "Cargar Fuentes"\n' +
            '2. Carga el oracle PseudoLib.psc con "Cargar Padre"\n' +
            '3. Presiona "Analizar" para ver el arbol de dependencias\n' +
            '4. Presiona "Generar" para crear el archivo final\n' +
            '5. Descarga o copia el resultado\n\n' +
            'Generar hace todo automaticamente:\n' +
            '  - Elimina lineas Algoritmo / FinAlgoritmo\n' +
            '  - Elimina funciones duplicadas\n' +
            '  - Inyecta dependencias faltantes\n' +
            '  - Anade Algoritmo placeHolder al final'
        );
    });

    console.log('PseudoLib Web — App initialized');
})();
