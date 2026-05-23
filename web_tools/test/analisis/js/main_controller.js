/**
 * Vuelca el archivo en el editor de la librería padre.
 */
function detectarCargaArchivoManual(input) {
    const archivo = input.files[0];
    if (!archivo) return;

    const lector = new FileReader();
    const statusDiv = document.getElementById("statusPadre");
    statusDiv.textContent = "Estado: Transfiriendo archivo...";

    lector.onload = function(evento) {
        document.getElementById("codigoPadreManual").value = evento.target.result;
        statusDiv.innerHTML = `<span style="color: var(--syntax-dep)">✔ Código volcado. Pulsa "Analizar Código".</span>`;
    };
    lector.readAsText(archivo, "UTF-8");
}

/**
 * Indexa el contenido del padre en memoria.
 */
function procesarArchivoPadreManual() {
    const textoCompleto = document.getElementById("codigoPadreManual").value;
    const statusDiv = document.getElementById("statusPadre");
    
    if (!textoCompleto.trim()) {
        alert("Primero carga o pega el código de la librería.");
        return;
    }

    const totalFunciones = indexarArchivoPadre(textoCompleto);
    statusDiv.innerHTML = `<span style="color: var(--syntax-ok)">✔ Éxito: <b>${totalFunciones}</b> funciones indexadas.</span>`;
}

/**
 * Solicita el análisis cruzado con el padre (sin combos).
 */
function solicitarAnalisis() {
    // Busca la tarjeta principal (data-id="1")
    const tarjeta = document.querySelector('.modulo-card[data-id="1"]');
    if (!tarjeta) {
        alert("No se encontró el módulo principal.");
        return;
    }
    // true: indica que debe consultar el índice del padre
    ejecutarAnalisisCore(tarjeta, true);
}

/**
 * Análisis local de una tarjeta (sin consultar al padre).
 */
function ejecutarAnalisisIndividual(boton) {
    ejecutarAnalisisCore(boton.closest('.modulo-card'), false);
}

/**
 * Corazón del análisis.
 */
function ejecutarAnalisisCore(tarjetaActual, consultarPadre) {
    const meta = extraerMetaDelBloque(tarjetaActual.querySelector('.modulo-codigo').value);
    
    // Obtenemos los metadatos de todas las tarjetas para el contexto global
    const tarjetas = document.querySelectorAll('#contenedorModulos .modulo-card');
    const universoDeclaradas = new Set();
    const todasLasLlamadasGlobales = new Set();
    
    tarjetas.forEach(t => {
        const m = extraerMetaDelBloque(t.querySelector('.modulo-codigo').value);
        m.declaradas.forEach(d => universoDeclaradas.add(d));
        m.llamadas.forEach(l => todasLasLlamadasGlobales.add(l));
    });

    const resultado = analizarDependenciasModulares(
        { 
            id: tarjetaActual.getAttribute('data-id'), 
            prefijo: tarjetaActual.querySelector('.modulo-prefijo').value.trim(),
            declaradas: meta.declaradas, 
            llamadas: meta.llamadas 
        }, 
        universoDeclaradas, 
        todasLasLlamadasGlobales, 
        consultarPadre
    );

    UIRenderer.renderizarReporte(tarjetaActual.getAttribute('data-id'), resultado);
}

/**
 * Inyecta las funciones faltantes al editor.
 */
function inyectarFuncionesAlModulo(idModulo) {
    const tarjeta = document.querySelector(`.modulo-card[data-id="${idModulo}"]`);
    const textarea = tarjeta.querySelector('.modulo-codigo');
    
    // 1. Extraemos qué tenemos YA declarado para que NO se inyecte de nuevo
    const metaActual = extraerMetaDelBloque(textarea.value);
    
    // Pasamos metaActual.declaradas como set para filtrar duplicados
    const mapaFunciones = resolverArbolDependencias(metaActual.llamadas, metaActual.declaradas);

    if (mapaFunciones.size === 0) {
        alert("Todo está en orden, no hay nuevas dependencias por inyectar.");
        return;
    }

    // 2. Ordenar por prefijo y construir el bloque (mantiene tu lógica anterior)
    let bloquesOrdenados = {};
    mapaFunciones.forEach((info, nombre) => {
        let prefijo = nombre.split('_')[0].toUpperCase() || "GENERAL";
        if (!bloquesOrdenados[prefijo]) bloquesOrdenados[prefijo] = [];
        bloquesOrdenados[prefijo].push(info.codigo);
    });

    let textoInyeccion = "\n\n///=====[ DEPENDENCIES ]=====[  ///   ]=====================================\n";
    Object.keys(bloquesOrdenados).sort().forEach(prefijo => {
        textoInyeccion += `//--[${prefijo}]-- -- -- -- -- -- -- -- -- -- -- -- -- --\n`;
        bloquesOrdenados[prefijo].forEach(c => {
            textoInyeccion += c.trim() + "\n\n";
        });
    });

    // 3. Aplicar
    textarea.value = textarea.value.trim() + textoInyeccion + "\n";
    
    // 4. Limpiar y re-analizar
    document.getElementById(`report-${idModulo}`).innerHTML = `<div class="status-ok">✔ Inyectado. Re-analizando...</div>`;
    setTimeout(solicitarAnalisis, 500);
}