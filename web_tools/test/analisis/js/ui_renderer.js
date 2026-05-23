const UIRenderer = {
    renderizarReporte(idReporte, datosReporte) {
        const reportDiv = document.getElementById(`report-${idReporte}`);
        if (!reportDiv) return;
        reportDiv.innerHTML = ''; 

        const missingSection = document.createElement('div');
        missingSection.className = 'report-item';
        
        if (datosReporte.modoPadreActivo) {
            if (datosReporte.faltantesCodigos.length === 0) {
                missingSection.innerHTML = '<h4 style="color: var(--syntax-error)">Código de Funciones Faltantes</h4><div class="status-ok">▶ Todo en orden, no faltan funciones del padre.</div>';
            } else {
                missingSection.innerHTML = `<div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 0.8rem;"><h4 style="color: var(--syntax-error); margin: 0;">Código de Funciones Faltantes</h4><button onclick="inyectarFuncionesAlModulo(${idReporte})" style="background-color: var(--syntax-ok); color: white; border: none; padding: 4px 10px; border-radius: 4px; cursor: pointer; font-weight: bold; font-size: 0.8rem;">🗲 Inyectar Código</button></div>`;
                datosReporte.faltantesCodigos.forEach(item => {
                    const funcWrapper = document.createElement('div');
                    funcWrapper.style.cssText = "margin-bottom: 12px; border: 1px solid var(--border); border-radius: 4px; overflow: hidden;";
                    funcWrapper.innerHTML = `<div style="background: #2d2d2d; padding: 6px 10px; font-size: 0.8rem; color: #ffca28; font-family: monospace; font-weight: bold;">⚠ Falta: ${item.nombre}()</div><pre style="margin:0; padding:10px; background:#151515; overflow-x:auto; font-family:monospace; font-size:0.8rem; color:#a9b7c6;">${item.codigo}</pre>`;
                    missingSection.appendChild(funcWrapper);
                });
            }
        } else {
            missingSection.innerHTML = '<h4 style="color: var(--syntax-error)">Missing Endpoints</h4>';
            const ul = document.createElement('ul');
            if (datosReporte.faltantesLocales.length === 0) ul.innerHTML = '<li class="status-ok">▶ Checklist complete</li>';
            else datosReporte.faltantesLocales.forEach(dep => { ul.innerHTML += `<li class="status-missing">⚠ ${dep}</li>`; });
            missingSection.appendChild(ul);
        }
        reportDiv.appendChild(missingSection);

        this._crearBloque(reportDiv, 'Resolved Dependencies', 'var(--syntax-dep)', datosReporte.resueltas, '▶ ', '▪ No external links');
        this._crearBloque(reportDiv, 'Unused Functions', 'var(--text-dim)', datosReporte.sobrantes, '⌫ ', '▶ Clean! No unused functions', 'status-ok');
        this._crearDeclaradas(reportDiv, datosReporte.declaradas);
    },

    _crearBloque(contenedor, titulo, color, lista, prefijoItem, textoVacio, claseVacio = '') {
        const section = document.createElement('div');
        section.className = 'report-item';
        section.innerHTML = `<h4 style="color: ${color}">${titulo}</h4>`;
        const ul = document.createElement('ul');
        if (lista.length === 0) ul.innerHTML = `<li class="${claseVacio}" style="color: var(--text-dim)">${textoVacio}</li>`;
        else lista.forEach(item => { ul.innerHTML += `<li style="color: ${color}">${prefijoItem}${item}</li>`; });
        section.appendChild(ul);
        contenedor.appendChild(section);
    },

    _crearDeclaradas(contenedor, declaradas) {
        const section = document.createElement('div');
        section.className = 'report-item';
        section.innerHTML = `<h4>Declared Functions (${declaradas.length})</h4>`;
        const ul = document.createElement('ul');
        declaradas.forEach(f => {
            const esPrivada = f.includes('private') || f.startsWith('_');
            ul.innerHTML += `<li class="${esPrivada ? 'func-priv' : 'func-pub'}">${esPrivada ? '⧚ ' : '⚙ '}${f}</li>`;
        });
        section.appendChild(ul);
        contenedor.appendChild(section);
    }
};