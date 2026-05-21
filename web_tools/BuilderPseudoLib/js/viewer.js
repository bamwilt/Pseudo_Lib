// js/viewer.js
window.AppViewer = {
    mostrarArchivoEnVisor() {
        const { listaNombresOrdenada, indiceActual, archivosDiccionario } = window.AppGlobalVars;
        
        if (listaNombresOrdenada.length === 0) return;
        
        const nombre = listaNombresOrdenada[indiceActual];
        document.getElementById('nombreArchivo').innerText = "Archivo: " + nombre;
        document.getElementById('indicadorPosicion').innerText = (indiceActual + 1) + " / " + listaNombresOrdenada.length;
        document.getElementById('contenidoTexto').innerText = archivosDiccionario[nombre.toLowerCase()];

        document.getElementById('btnAnterior').disabled = (indiceActual === 0);
        document.getElementById('btnSiguiente').disabled = (indiceActual === listaNombresOrdenada.length - 1);
    },

    cambiarArchivo(dir) {
        window.AppGlobalVars.indiceActual += dir;
        this.mostrarArchivoEnVisor();
    }
};

function cambiarArchivo(dir) {
    window.AppViewer.cambiarArchivo(dir);
}