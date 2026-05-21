// js/main_controller.js

window.AppMainController = {
    async procesarArchivosCarpeta(archivos) {
        const archivosValidos = archivos.filter(a => {
            const nombreMinuscula = a.name.toLowerCase();
            return nombreMinuscula.endsWith('.txt') || nombreMinuscula.endsWith('.psc');
        });

        if (archivosValidos.length === 0) {
            alert("No se encontraron archivos .txt o .psc en esa carpeta.");
            return;
        }

        window.AppGlobalVars.archivosDiccionario = {};
        window.AppGlobalVars.listaNombresOrdenada = [];
        window.AppGlobalVars.seleccionadosOrdenados = [];
        window.AppGlobalVars.indiceActual = 0;

        archivosValidos.sort((a, b) => a.name.localeCompare(b.name, undefined, {numeric: true, sensitivity: 'base'}));

        for (let archivo of archivosValidos) {
            const text = await archivo.text();
            window.AppGlobalVars.archivosDiccionario[archivo.name.toLowerCase()] = text;
            window.AppGlobalVars.listaNombresOrdenada.push(archivo.name);
        }

        window.AppUIController.crearBotoneraModulos();
        window.AppViewer.mostrarArchivoEnVisor();
        this.actualizarVistaPreviaGlobal();
    },

    reiniciarAplicacion() {
        window.AppGlobalVars.archivosDiccionario = {};
        window.AppGlobalVars.listaNombresOrdenada = [];
        window.AppGlobalVars.seleccionadosOrdenados = [];
        window.AppGlobalVars.indiceActual = 0;

        window.AppUIController.reiniciarInterfaz();
        this.actualizarVistaPreviaGlobal();
    },

    actualizarVistaPreviaGlobal() {
        const textoFinal = window.AppBuilder.armarTextoCompleto();
        const visorRes = document.getElementById('contenidoResultado');
        visorRes.innerText = textoFinal || "Selecciona modulos a la izquierda haciendo clic en sus botones para ver el resultado en tiempo real...";
    }
};

// Funcion puente requerida por la interfaz
function actualizarVistaPreviaGlobal() {
    window.AppMainController.actualizarVistaPreviaGlobal();
}