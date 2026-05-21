const PALABRAS_RESERVADAS = new Set([
    'true', 'false', 'verdadero', 'falso', 'como', 'texto', 'numero', 'real', 
    'logico', 'si', 'entonces', 'mientras', 'hacer', 'para', 'definir', 
    'dimension', 'longitud', 'convertiranumero', 'convertiratexto', 
    'minusculas', 'mayusculas', 'subcadena', 'trunc', 'abs', 'redon', 'raiz', 
    'sen', 'cos', 'tan', 'log', 'ln', 'exp', 'escribir', 'leer', 'limpiar', 'pantalla'
]);

function extraerMetaDelBloque(texto) {
    const declaradas = new Set();
    const llamadas = new Set();
    const lineas = texto.split('\n');
    
    for (let linea of lineas) {
        const lineaLimpia = linea.trim();
        if (!lineaLimpia) continue;

        // VARIANTE 1: DEFINICIÓN DE ENDPOINTS (Obligatorio iniciar por funcion/subproceso)
        const regexVariante1ConRetorno = /^\s*(?:funcion|subproceso)\s+[a-zA-Z0-9_]+\s*(?:<-|=)\s*([a-zA-Z0-9_]+)/gi;
        const regexVariante1SinRetorno = /^\s*(?:funcion|subproceso)\s+([a-zA-Z0-9_]+)/gi;

        let matchV1 = regexVariante1ConRetorno.exec(lineaLimpia);
        if (matchV1) {
            const nombreFuncion = matchV1[1].trim();
            if (!PALABRAS_RESERVADAS.has(nombreFuncion.toLowerCase()) && !nombreFuncion.toLowerCase().startsWith('native_')) {
                declaradas.add(nombreFuncion);
            }
            continue; 
        }

        matchV1 = regexVariante1SinRetorno.exec(lineaLimpia);
        if (matchV1) {
            const nombreFuncion = matchV1[1].trim();
            if (!PALABRAS_RESERVADAS.has(nombreFuncion.toLowerCase()) && !nombreFuncion.toLowerCase().startsWith('native_')) {
                declaradas.add(nombreFuncion);
            }
            continue;
        }

        // VARIANTE 2: EXTRAER LLAMADAS (Obligatorio llevar paréntesis pegado a su derecha)
        const regexVariante2 = /\b([a-zA-Z0-9_]+)\s*\(/gi;
        let matchV2;
        
        while ((matchV2 = regexVariante2.exec(lineaLimpia)) !== null) {
            const token = matchV2[1].trim();
            
            if (!PALABRAS_RESERVADAS.has(token.toLowerCase()) && !token.toLowerCase().startsWith('native_')) {
                llamadas.add(token);
            }
        }
    }

    return { declaradas, llamadas };
}