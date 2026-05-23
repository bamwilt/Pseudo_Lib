const PALABRAS_RESERVADAS = new Set([
    'como', 'texto', 'numero', 'real', 'logico', 'si', 'entonces', 'mientras', 
    'hacer', 'para', 'definir', 'dimension', 'longitud', 'convertiranumero', 
    'convertiratexto', 'minusculas', 'mayusculas', 'subcadena', 'trunc', 'abs', 
    'redon', 'raiz', 'sen', 'cos', 'tan', 'log', 'ln', 'exp', 'escribir', 
    'leer', 'limpiar', 'pantalla', 'horaactual', 'fechaactual', 'fecha', 'hora'
]);

let INDEX_DICCIONARIO_PADRE = new Map();

function indexarArchivoPadre(textoCompleto) {
    INDEX_DICCIONARIO_PADRE.clear();
    if (!textoCompleto) return 0;

    const lineas = textoCompleto.replace(/\r/g, '').split('\n');
    const totalLineas = lineas.length;
    let i = 0;

    while (i < totalLineas) {
        const lineaLimpia = lineas[i].trim();
        const lineaMinuscula = lineaLimpia.toLowerCase();

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

            if (nombreLimpio && !PALABRAS_RESERVADAS.has(nombreLimpio.toLowerCase())) {
                let lineasBloque = [];
                let encontradoFin = false;
                
                while (i < totalLineas && !encontradoFin) {
                    const lOriginal = lineas[i];
                    const lMinuscula = lOriginal.trim().toLowerCase();
                    lineasBloque.push(lOriginal);
                    if (lMinuscula.startsWith("finfuncion") || lMinuscula.startsWith("finsubproceso")) {
                        encontradoFin = true;
                    }
                    i++;
                }
                INDEX_DICCIONARIO_PADRE.set(nombreLimpio.toLowerCase(), {
                    nombreOriginal: nombreLimpio,
                    codigo: lineasBloque.join('\n')
                });
                i--;
            }
        }
        i++;
    }
    return INDEX_DICCIONARIO_PADRE.size;
}

function extraerMetaDelBloque(texto) {
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
            if (nombreLimpio && !PALABRAS_RESERVADAS.has(nombreLimpio.toLowerCase())) {
                declaradas.add(nombreLimpio);
            }
            continue; 
        }

        let matchV2;
        regexLlamadas.lastIndex = 0; 
        while ((matchV2 = regexLlamadas.exec(lineaLimpia)) !== null) {
            const token = matchV2[1].trim();
            if (!PALABRAS_RESERVADAS.has(token.toLowerCase())) {
                llamadas.add(token);
            }
        }
    }
    return { declaradas, llamadas };
}

function analizarDependenciasModulares(moduloActualData, universoDeclaradas, todasLasLlamadasGlobales, consultarPadre = false) {
    const listaDeseos = new Set();
    moduloActualData.llamadas.forEach(ll => {
        const esLocal = Array.from(moduloActualData.declaradas).some(f => f.toLowerCase() === ll.toLowerCase());
        const esMismoPrefijo = ll.toLowerCase().startsWith(moduloActualData.prefijo.toLowerCase() + "_");
        if (!esLocal && !esMismoPrefijo) listaDeseos.add(ll);
    });

    const dependenciasResueltas = [];
    const dependenciasFaltantesLocales = [];
    const codigosFaltantesEncontrados = [];

    listaDeseos.forEach(funcionDeseada => {
        const coincidenciaSubmodulo = Array.from(universoDeclaradas).find(f => f.toLowerCase() === funcionDeseada.toLowerCase());
        if (coincidenciaSubmodulo) {
            dependenciasResueltas.push(coincidenciaSubmodulo);
        } else if (consultarPadre && INDEX_DICCIONARIO_PADRE.has(funcionDeseada.toLowerCase())) {
            const infoFunc = INDEX_DICCIONARIO_PADRE.get(funcionDeseada.toLowerCase());
            codigosFaltantesEncontrados.push({ nombre: infoFunc.nombreOriginal, codigo: infoFunc.codigo });
        } else if (consultarPadre) {
            codigosFaltantesEncontrados.push({ nombre: funcionDeseada, codigo: `// ADVERTENCIA: La función "${funcionDeseada}" no se encontró en la Librería Principal.` });
        } else {
            dependenciasFaltantesLocales.push(funcionDeseada);
        }
    });

    const funcionesSobrantes = [];
    moduloActualData.declaradas.forEach(f => {
        if (!Array.from(todasLasLlamadasGlobales).some(ll => ll.toLowerCase() === f.toLowerCase())) {
            funcionesSobrantes.push(f);
        }
    });

    return {
        modoPadreActivo: consultarPadre,
        faltantesLocales: dependenciasFaltantesLocales.sort(),
        faltantesCodigos: codigosFaltantesEncontrados,
        resueltas: dependenciasResueltas.sort(),
        sobrantes: funcionesSobrantes.sort(),
        declaradas: Array.from(moduloActualData.declaradas).sort()
    };
}

/**
 * Busca dependencias de forma recursiva hasta resolver todo el árbol.
 */
// Agregamos el parámetro 'funcionesYaDeclaradas' para filtrar desde el inicio
function resolverArbolDependencias(nombresFunciones, funcionesYaDeclaradas) {
    let colaPorResolver = new Set();
    
    // Convertimos a minúsculas para comparaciones seguras
    let conjuntoYaResuelto = new Set();
    funcionesYaDeclaradas.forEach(f => conjuntoYaResuelto.add(f.toLowerCase()));

    // Solo agregamos a la cola lo que no tenemos ya en casa
    nombresFunciones.forEach(f => {
        if (!conjuntoYaResuelto.has(f.toLowerCase())) {
            colaPorResolver.add(f);
        }
    });

    let mapaFunciones = new Map();

    while (colaPorResolver.size > 0) {
        let actual = Array.from(colaPorResolver)[0];
        colaPorResolver.delete(actual);
        
        if (conjuntoYaResuelto.has(actual.toLowerCase())) continue;
        
        if (INDEX_DICCIONARIO_PADRE.has(actual.toLowerCase())) {
            let info = INDEX_DICCIONARIO_PADRE.get(actual.toLowerCase());
            mapaFunciones.set(actual, info);
            conjuntoYaResuelto.add(actual.toLowerCase());
            
            let meta = extraerMetaDelBloque(info.codigo);
            // Al encontrar código nuevo, revisamos si sus dependencias también faltan
            meta.llamadas.forEach(ll => {
                if (!conjuntoYaResuelto.has(ll.toLowerCase())) {
                    colaPorResolver.add(ll);
                }
            });
        }
    }
    return mapaFunciones;
}