function ejecutarAnalisisIndividual(botonPresionado) {
    const tarjetas = document.querySelectorAll('.modulo-card');
    const tarjetaActual = botonPresionado.closest('.modulo-card');
    
    const universoDeclaradas = new Set();
    const todasLasLlamadasGlobales = new Set();
    let moduloActualData = null;

    // 1. Mapeamos rápido el estado global de todos los módulos abiertos
    tarjetas.forEach(tarjeta => {
        const codigo = tarjeta.querySelector('.modulo-codigo').value;
        const prefijo = tarjeta.querySelector('.modulo-prefijo').value.trim();
        const meta = extraerMetaDelBloque(codigo);
        
        meta.declaradas.forEach(f => universoDeclaradas.add(f));
        meta.llamadas.forEach(ll => todasLasLlamadasGlobales.add(ll));
        
        if (tarjeta === tarjetaActual) {
            moduloActualData = {
                id: tarjeta.getAttribute('data-id'),
                prefijo,
                declaradas: meta.declaradas,
                llamadas: meta.llamadas
            };
        }
    });

    if (!moduloActualData) return;

    // 2. Procesamos e inyectamos el reporte ÚNICAMENTE en la tarjeta que se ejecutó
    const reportDiv = document.getElementById(`report-${moduloActualData.id}`);
    reportDiv.innerHTML = '';

    const listaDeseos = new Set();
    moduloActualData.llamadas.forEach(ll => {
        const esLocal = moduloActualData.declaradas.has(ll);
        const esMismoPrefijo = ll.toLowerCase().startsWith(moduloActualData.prefijo.toLowerCase() + "_");
        
        if (!esLocal && !esMismoPrefijo) {
            listaDeseos.add(ll);
        }
    });

    const dependenciasResueltas = [];
    const dependenciasFaltantes = [];

    listaDeseos.forEach(funcionDeseada => {
        if (universoDeclaradas.has(funcionDeseada)) {
            dependenciasResueltas.push(funcionDeseada);
        } else {
            dependenciasFaltantes.push(funcionDeseada);
        }
    });

    // --- SECCIÓN 1: MISSING ENDPOINTS ---
    const missingSection = document.createElement('div');
    missingSection.className = 'report-item';
    missingSection.innerHTML = '<h4 style="color: var(--syntax-error)">Missing Endpoints (Faltan)</h4>';
    const missingList = document.createElement('ul');

    if (dependenciasFaltantes.length === 0) {
        missingList.innerHTML = '<li class="status-ok">▶ Checklist complete</li>';
    } else {
        dependenciasFaltantes.sort().forEach(dep => {
            const li = document.createElement('li');
            li.className = 'status-missing';
            li.textContent = '⚠ ' + dep;
            missingList.appendChild(li);
        });
    }
    missingSection.appendChild(missingList);
    reportDiv.appendChild(missingSection);

    // --- SECCIÓN 2: RESOLVED DEPENDENCIES ---
    const resolvedSection = document.createElement('div');
    resolvedSection.className = 'report-item';
    resolvedSection.innerHTML = '<h4 style="color: var(--syntax-dep)">Resolved Dependencies (Vinculadas)</h4>';
    const resolvedList = document.createElement('ul');

    if (dependenciasResueltas.length === 0) {
        resolvedList.innerHTML = '<li style="color: var(--text-dim)">▪ No external links</li>';
    } else {
        dependenciasResueltas.sort().forEach(dep => {
            const li = document.createElement('li');
            li.style.color = 'var(--syntax-dep)';
            li.textContent = '▶ ' + dep;
            resolvedList.appendChild(li);
        });
    }
    resolvedSection.appendChild(resolvedList);
    reportDiv.appendChild(resolvedSection);

    // --- SECCIÓN 3: UNUSED FUNCTIONS ---
    const sobranSection = document.createElement('div');
    sobranSection.className = 'report-item';
    sobranSection.innerHTML = '<h4 style="color: var(--text-dim)">Unused Functions (Sobran)</h4>';
    const sobranList = document.createElement('ul');

    let tieneSobrantes = false;
    moduloActualData.declaradas.forEach(f => {
        if (!todasLasLlamadasGlobales.has(f)) {
            tieneSobrantes = true;
            const li = document.createElement('li');
            li.style.color = 'var(--text-dim)';
            li.textContent = '⌫ ' + f;
            sobranList.appendChild(li);
        }
    });

    if (!tieneSobrantes) sobranList.innerHTML = '<li class="status-ok">▶ Clean! No unused functions</li>';
    sobranSection.appendChild(sobranList);
    reportDiv.appendChild(sobranSection);

    // --- SECCIÓN 4: TOTAL DE DECLARADAS EN EL MÓDULO ---
    const funcSection = document.createElement('div');
    funcSection.className = 'report-item';
    funcSection.innerHTML = `<h4>Declared Functions (${moduloActualData.declaradas.size})</h4>`;
    const funcList = document.createElement('ul');

    Array.from(moduloActualData.declaradas).sort().forEach(f => {
        const li = document.createElement('li');
        const esPrivada = f.includes('private') || f.startsWith('_');
        li.className = esPrivada ? 'func-priv' : 'func-pub';
        li.textContent = (esPrivada ? '⧚ ' : '⚙ ') + f;
        funcList.appendChild(li);
    });

    funcSection.appendChild(funcList);
    reportDiv.appendChild(funcSection);
}