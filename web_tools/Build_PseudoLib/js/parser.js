window.PALABRAS_RESERVADAS = new Set([
    'como', 'texto', 'numero', 'real', 'logico', 'si', 'entonces', 'mientras',
    'hacer', 'para', 'definir', 'dimension', 'longitud', 'convertiranumero',
    'convertiratexto', 'minusculas', 'mayusculas', 'subcadena', 'trunc', 'abs',
    'redon', 'raiz', 'sen', 'cos', 'tan', 'log', 'ln', 'exp', 'escribir',
    'leer', 'limpiar', 'pantalla', 'horaactual', 'fechaactual', 'fecha', 'hora',
    'azar', 'aleatorio', 'remplazar'
]);

window.PSEINT_KEYWORDS = new Set([
    'algoritmo', 'finalgoritmo', 'funcion', 'finfuncion', 'subproceso', 'finsubproceso',
    'si', 'entonces', 'sino', 'finsi', 'segun', 'hacer', 'finsegun', 'caso', 'de_otro_modo',
    'mientras', 'findmientras', 'para', 'hasta', 'con_paso', 'finpara', 'repetir', 'hasta_que',
    'definir', 'dimension', 'como', 'escribir', 'leer', 'borrar'
]);

window.MODULE_TABLE_OVERRIDES = {
    "#TMP": { code: "#TMP", name: "TEMPORAL/CHRONO_UNIT", prefixes: ["temporal_", "chrono_unit_"], state: "[+]" },
    "#LDT": { code: "#LDT", name: "LOCALDATE_TIME", prefixes: ["localDate_time_"], state: "[+]" },
};

window.MODULE_FILE_NAMES = {
    '#NAV': 'NATIVE', '#INP': 'INPUT', '#STR': 'STRING', '#ARR': 'ARRAY',
    '#PRN': 'PRINTERS', '#SLP': 'SLEEP', '#LOG': 'LOGS', '#TST': 'TEST',
    '#NUM': 'NUMBER', '#BST': 'BINARY_STRING', '#MAT': 'MATH', '#BOO': 'BOOLEAN',
    '#CDT': 'CONDITIONS', '#COL': 'COLOR', '#VAL': 'VALUE', '#CLL': 'COLLECTION',
    '#MDA': 'MANAGER_DATA', '#LCL': 'LINEARCOLLECTION', '#DEQ': 'DEQUE',
    '#QUE': 'QUEUE', '#STA': 'STACK', '#TMP': 'TEMPORAL_CHRONO_UNIT',
    '#LDA': 'LOCALDATE', '#LTI': 'LOCALTIME', '#LDT': 'LOCALDATE_TIME',
    '#DUR': 'DURATION', '#PER': 'PERIOD', '#LIS': 'LIST', '#CST': 'COLLECTION_STORAGE',
    '#CCO': 'CELLS_COLLECTION', '#CCD': 'CELLS_COLLECTION_DYNAMIC',
    '#CCS': 'CELLS_COLLECTION_SETTER', '#SET': 'SET', '#DCC': 'DUAL_CELLS_COLLECTION',
    '#SCC': 'STORAGE_CELLS_COLLECTION', '#MAP': 'MAP', '#OBJ': 'OBJECTS',
    '#CAN': 'CANVAS', '#SPR': 'SPRITE', '#TUI': 'TUI', '#TCO': 'TCOMPONENT',
    '#ASC': 'ASCII_HASH',
};

window.MODULE_ORDER = [
    '#NAV', '#INP', '#STR', '#ARR', '#PRN', '#SLP', '#LOG', '#TST',
    '#NUM', '#BST', '#MAT', '#BOO', '#CDT', '#COL', '#VAL',
    '#CLL', '#MDA', '#LCL',
    '#DEQ', '#QUE', '#STA',
    '#TMP', '#LDA', '#LTI', '#LDT', '#DUR', '#PER',
    '#LIS', '#CST',
    '#CCO', '#CCD', '#CCS', '#SET', '#DCC', '#SCC',
    '#MAP', '#OBJ',
    '#CAN', '#SPR', '#TUI', '#TCO',
    '#ASC',
];

window.KNOWN_MAPPINGS = {
    'true': '#BOO', 'false': '#BOO', 'boolean_tostring': '#BOO',
    'number_null': '#NUM', 'number_isnull': '#NUM', 'number_isempty': '#NUM',
    'type_int': '#NUM', 'type_float': '#NUM', 'type_string': '#NUM',
    'type_boolean': '#NUM', 'type_object': '#NUM',
    'string_null': '#STR',
    'error_message_function': '#CDT', 'error_message': '#CDT',
    'exection_error': '#CDT', 'message_validateindexrange': '#CDT',
    'number_validatenumberrange': '#CDT', 'number_isinrange': '#CDT',
    'log_error': '#LOG',
    'clear_console': '#NAV',
    'array_ofstring_separator': '#ARR',
    'num_indexvalidate': '#CDT',
    'symbol_escape': '#CLL', 'symbol_separator_simple': '#CLL',
    'symbol_separator': '#CLL', 'symbol_dataarea': '#CLL',
    'symbol_typearea': '#CLL', 'symbol_metadata': '#CLL',
    'symbol_extradata': '#CLL', 'symbol_key_value': '#CLL',
    'symbol_lengtharea': '#CLL',
    'symbol_objectseparator': '#OBJ',
    'symbol_tcomponent': '#TCO',
    'tproperty_position': '#TCO', 'tproperty_text': '#TCO',
    'tproperty_value': '#TCO', 'tproperty_input': '#TCO',
    'tproperty_simplename': '#TCO', 'tproperty_visible': '#TCO',
    'struct_type_list': '#NUM', 'struct_type_map': '#NUM',
    'struct_type_set': '#NUM', 'struct_type_queue': '#NUM',
    'struct_type_stack': '#NUM', 'struct_type_deque': '#NUM',
    'cell_fixed': '#DCC', 'cell_dynamic': '#DCC',
    'cell_setter': '#DCC', 'cell_setter_dynamic': '#DCC',
    'symbol_cell_length': '#DCC', 'symbol_cell_type': '#DCC',
    'dayofweek_monday': '#TMP', 'dayofweek_tuesday': '#TMP',
    'dayofweek_wednesday': '#TMP', 'dayofweek_thursday': '#TMP',
    'dayofweek_friday': '#TMP', 'dayofweek_saturday': '#TMP',
    'dayofweek_sunday': '#TMP',
    'month_january': '#TMP', 'month_february': '#TMP',
    'month_march': '#TMP', 'month_april': '#TMP',
    'month_may': '#TMP', 'month_june': '#TMP',
    'month_july': '#TMP', 'month_august': '#TMP',
    'month_september': '#TMP', 'month_october': '#TMP',
    'month_november': '#TMP', 'month_december': '#TMP',
    'month_of': '#TMP', 'month_value': '#TMP',
    'dayofweek_of': '#TMP',
    'chronounit_seconds': '#TMP', 'chronounit_minutes': '#TMP',
    'chronounit_hours': '#TMP', 'chronounit_days': '#TMP',
    'chronounit_weeks': '#TMP', 'chronounit_months': '#TMP',
    'chronounit_years': '#TMP', 'chronounit_decades': '#TMP',
    'chronounit_getduration': '#TMP', 'chronounit_istimebased': '#TMP',
    'chronounit_isdatebased': '#TMP', 'chronounit_issupportedto': '#TMP',
    'chronounit_isdurationestimated': '#TMP',
    'deg_to_rad': '#MAT',
    'taylor_sin': '#MAT', 'taylor_cos': '#MAT',
    'taylor_exp': '#MAT', 'taylor_ln': '#MAT',
    'pixel_qr_plain': '#CAN', 'pixel_qr_clear': '#CAN',
    'qr_getbase': '#CAN', 'qr_drawfinderpatterns': '#CAN',
    'qr_drawtimingpatterns': '#CAN', 'qr_getsprinterpositionpattern': '#CAN',
    'pixel_clear': '#TUI', 'pixel_plain': '#TUI',
    'pixel_medium': '#TUI', 'pixel_bold': '#TUI',
    'get_pixel_withindex': '#TUI',
    'spritestring_new': '#TUI', 'spritestring_titlebar_color': '#TUI',
    'spritestring_titlebar': '#TUI', 'spritestring_tocanvas': '#TUI',
    'spritestring_getwidth': '#TUI', 'spritestring_getsize': '#TUI',
    'spritestring_getheight': '#TUI', 'spritestring_updatemaxwidth': '#TUI',
    'spritestring_num_indexvalidate': '#TUI', 'spritestring_isspritevalid': '#TUI',
    'spritestring_modifyline': '#TUI', 'spritestring_modifyline_strict': '#TUI',
    'spritestring_writeline': '#TUI', 'spritestring_setline': '#TUI',
    'spritestring_addline': '#TUI', 'spritestring_display': '#TUI',
    'spritestring_display_monocolor': '#TUI',
    'sleep': '#SLP',
    'execution_timer': '#TST', 'sandbox_development': '#TST',
    'message_duration': '#TST',
    'if': '#CDT',
    'bitchar_and': '#BST', 'bitchar_or': '#BST',
    'bitchar_xor': '#BST', 'bitchar_not': '#BST',
    'main': null,
    'num_isinterger': '#NUM', 'interger_tostring': '#NUM',
    'char_at': '#STR', 'char_isnumber': '#STR',
    'remove_colors': '#COL',
    'print': '#PRN', 'println': '#PRN',
    'println_byseparator': '#PRN', 'println_progress': '#PRN',
    'println_shoot': '#PRN', 'println_shoot_clear': '#PRN',
    'println_array': '#PRN', 'println_array_color': '#PRN',
    'println_repeat': '#PRN',
    'break_line': '#PRN', 'hide_text': '#PRN',
    'util_get_size': '#LIS',
};

window.extraerMetaDelBloque = function(texto) {
    const declaradas = new Set();
    const llamadas = new Set();
    if (!texto) return { declaradas, llamadas };

    const lineas = texto.replace(/\r/g, '').split('\n');
    const regexLlamadas = /\b([a-zA-Z0-9_]+)\s*\(/gi;

    for (let linea of lineas) {
        let lineaUtil = linea.split('//')[0];
        lineaUtil = lineaUtil.replace(/"[^"\\]*(?:\\.[^"\\]*)*"/g, ' ');
        const lineaLimpia = lineaUtil.trim();
        const lineaMinuscula = lineaLimpia.toLowerCase();

        if (!lineaLimpia) continue;

        if (lineaMinuscula.startsWith("funcion ") || lineaMinuscula.startsWith("subproceso ")) {
            let parteDeclaracion = lineaLimpia;
            if (lineaMinuscula.includes("<-")) {
                parteDeclaracion = lineaLimpia.split(/<-/)[1] || "";
            } else if (lineaMinuscula.includes("=")) {
                parteDeclaracion = lineaLimpia.split(/=/)[1] || "";
            } else {
                parteDeclaracion = lineaLimpia.replace(/^(funcion|subproceso)\s+/i, '');
            }
            const nombreLimpio = parteDeclaracion.split('(')[0].trim();
            if (nombreLimpio && !window.PALABRAS_RESERVADAS.has(nombreLimpio.toLowerCase())) {
                declaradas.add(nombreLimpio);
            }
            continue;
        }

        let matchV2;
        regexLlamadas.lastIndex = 0;
        while ((matchV2 = regexLlamadas.exec(lineaLimpia)) !== null) {
            const token = matchV2[1].trim();
            if (!window.PALABRAS_RESERVADAS.has(token.toLowerCase()) && !window.PSEINT_KEYWORDS.has(token.toLowerCase())) {
                llamadas.add(token);
            }
        }
    }
    return { declaradas, llamadas };
};

window.getFunctionName = function(line) {
    const lineaLimpia = line.trim();
    const lineaMinuscula = lineaLimpia.toLowerCase();
    if (!lineaMinuscula.startsWith("funcion ") && !lineaMinuscula.startsWith("subproceso ")) return null;
    let parte = lineaLimpia;
    if (lineaMinuscula.includes("<-")) {
        parte = lineaLimpia.split(/<-/)[1] || "";
    } else if (lineaMinuscula.includes("=")) {
        parte = lineaLimpia.split(/=/)[1] || "";
    } else {
        parte = lineaLimpia.replace(/^(funcion|subproceso)\s+/i, '');
    }
    const name = parte.split('(')[0].trim();
    if (!name || window.PALABRAS_RESERVADAS.has(name.toLowerCase())) return null;
    return name;
};

window.parseModuleTableRaw = function(text) {
    const modules = [];
    const lines = text.replace(/\r/g, '').split('\n');
    for (let line of lines) {
        const cleanLine = line.trim().replace(/^\/\//, '').trim();
        const parts = cleanLine.split('::').map(s => s.trim());
        if (parts.length >= 4 && /^#[A-Z0-9]{3}$/.test(parts[0])) {
            const code = parts[0];
            const name = parts[1].trim();
            const prefijoRaw = parts[2].trim();
            const stateMatch = line.match(/\[\s*([+\-pDx])\s*\]/);
            const state = stateMatch ? stateMatch[0] : "[?]";
            const prefixes = prefijoRaw.split(':').map(p => p.trim().replace(/_+$/, '') + '_');
            modules.push({ code, name, prefixes, state });
        }
    }
    for (const key in window.MODULE_TABLE_OVERRIDES) {
        const idx = modules.findIndex(m => m.code === key);
        if (idx !== -1) modules[idx] = window.MODULE_TABLE_OVERRIDES[key];
    }
    return modules;
};

window.findModuleForFunction = function(funcName, moduleTable, modules) {
    const lowName = funcName.toLowerCase();
    const sortedMods = modules.map(m => ({
        ...m,
        sortedPrefixes: [...m.prefixes].sort((a, b) => b.length - a.length)
    }));
    sortedMods.sort((a, b) => {
        const maxA = Math.max(...a.sortedPrefixes.map(p => p.length));
        const maxB = Math.max(...b.sortedPrefixes.map(p => p.length));
        return maxB - maxA;
    });
    for (const mod of sortedMods) {
        for (const prefix of mod.sortedPrefixes) {
            if (lowName.startsWith(prefix.toLowerCase())) {
                return modules.find(m => m.code === mod.code) || mod;
            }
        }
    }
    const key = lowName;
    if (window.KNOWN_MAPPINGS[key]) {
        return modules.find(m => m.code === window.KNOWN_MAPPINGS[key]) || null;
    }
    return null;
};

window.indexarFromText = function(sourceText) {
    const lines = sourceText.replace(/\r/g, '').split('\n');
    const totalLines = lines.length;
    const modules = window.parseModuleTableRaw(sourceText);

    const sections = [];
    let currentSection = null;
    for (let i = 0; i < totalLines; i++) {
        const match = lines[i].match(/\/\/\/%%%%%\[(.+?)\]%%%%%%%\[\s*(#?\w+).*?\]%/);
        if (match) {
            const sectionName = match[1].trim();
            const sectionCode = match[2].trim();
            const sectionMod = modules.find(m => m.code === sectionCode);
            if (currentSection) sections.push(currentSection);
            currentSection = {
                name: sectionName,
                code: sectionCode,
                module: sectionMod || null,
                startLine: i,
            };
        } else if (currentSection) {
            currentSection.endLine = i;
        }
    }
    if (currentSection) sections.push(currentSection);
    for (let i = 1; i < sections.length; i++) {
        sections[i - 1].endLine = sections[i].startLine - 1;
    }

    const functionIndex = new Map();
    const functionsByModule = new Map();
    for (const mod of modules) functionsByModule.set(mod.code, []);
    functionsByModule.set('__main__', []);

    for (let i = 0; i < totalLines; i++) {
        const funcName = window.getFunctionName(lines[i]);
        if (!funcName) continue;

        let blockLines = [];
        let foundEnd = false;
        let j = i;
        while (j < totalLines && !foundEnd) {
            const lMinuscula = lines[j].trim().toLowerCase();
            blockLines.push(lines[j]);
            if (lMinuscula.startsWith("finfuncion") || lMinuscula.startsWith("finsubproceso")) foundEnd = true;
            j++;
        }
        const codeBlock = blockLines.join('\n');
        const meta = window.extraerMetaDelBloque(codeBlock);
        const section = sections.find(s => i >= s.startLine && i <= s.endLine);

        let moduleInfo = window.findModuleForFunction(funcName, null, modules);
        if (!moduleInfo && section && section.module) moduleInfo = section.module;

        const entry = {
            name: funcName,
            code: codeBlock,
            line: i,
            section: section ? section.name : null,
            module: moduleInfo ? { code: moduleInfo.code, name: moduleInfo.name, prefixes: [...moduleInfo.prefixes] } : null,
            calls: Array.from(meta.llamadas),
            declaredInBlock: Array.from(meta.declaradas),
        };
        functionIndex.set(funcName.toLowerCase(), entry);
        const modKey = moduleInfo ? moduleInfo.code : '__main__';
        if (!functionsByModule.has(modKey)) functionsByModule.set(modKey, []);
        functionsByModule.get(modKey).push(entry);
        i = j - 1;
    }

    return { modules, sections, functionIndex, functionsByModule, sourceText, stats: { totalFunctions: functionIndex.size, totalModules: modules.length } };
};

window.resolveDependencyTreeForModule = function(ownFunctions, allFunctionIndex, ownModuleCode, functionsByModule) {
    const needed = new Map();
    const queue = [];
    const resolved = new Set();

    for (const fn of ownFunctions) {
        resolved.add(fn.name.toLowerCase());
    }

    for (const fn of ownFunctions) {
        for (const call of fn.calls) {
            const callLow = call.toLowerCase();
            if (!resolved.has(callLow)) queue.push(call);
        }
    }

    let iterations = 0;
    while (queue.length > 0 && iterations < 10000) {
        iterations++;
        const current = queue.shift();
        const low = current.toLowerCase();
        if (resolved.has(low)) continue;

        const entry = allFunctionIndex.get(low);
        if (!entry || !entry.module) continue;
        if (ownModuleCode && entry.module.code === ownModuleCode) continue;

        if (!needed.has(low)) {
            needed.set(low, entry);
        }
        resolved.add(low);

        for (const call of entry.calls) {
            const callLow = call.toLowerCase();
            if (!resolved.has(callLow) && !queue.includes(call)) {
                queue.push(call);
            }
        }
    }

    return needed;
};

window.groupDependenciesByModule = function(deps, functionIndex, modules) {
    const groups = new Map();
    for (const [name, entry] of deps) {
        const modCode = entry.module ? entry.module.code : '__unknown__';
        if (!groups.has(modCode)) groups.set(modCode, []);
        groups.get(modCode).push(entry);
    }

    const ordered = [];
    for (const code of window.MODULE_ORDER) {
        if (groups.has(code)) {
            const mod = modules.find(m => m.code === code);
            ordered.push({ code, name: mod ? mod.name : code, prefix: mod ? mod.prefixes[0] : '', functions: groups.get(code) });
            groups.delete(code);
        }
    }
    for (const [code, funcs] of groups) {
        ordered.push({ code, name: code, prefix: '', functions: funcs });
    }
    return ordered;
};

window.getFunctionCalls = function(text) {
    const meta = window.extraerMetaDelBloque(text);
    return Array.from(meta.llamadas);
};

window.getFunctionDeclarations = function(text) {
    const meta = window.extraerMetaDelBloque(text);
    return Array.from(meta.declaradas);
};

window.extractFunctionBlocks = function(text) {
    const lines = text.replace(/\r/g, '').split('\n');
    const functions = [];
    for (let i = 0; i < lines.length; i++) {
        const funcName = window.getFunctionName(lines[i]);
        if (!funcName) continue;

        let blockLines = [];
        let foundEnd = false;
        let j = i;
        while (j < lines.length && !foundEnd) {
            const lMinuscula = lines[j].trim().toLowerCase();
            blockLines.push(lines[j]);
            if (lMinuscula.startsWith("finfuncion") || lMinuscula.startsWith("finsubproceso")) foundEnd = true;
            j++;
        }
        functions.push({
            name: funcName,
            code: blockLines.join('\n'),
            line: i
        });
        i = j - 1;
    }
    return functions;
};
