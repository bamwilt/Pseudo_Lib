// js/main.js

document.getElementById('selectorCarpeta').addEventListener('change', (e) => {
    const archivos = Array.from(e.target.files);
    window.AppMainController.procesarArchivosCarpeta(archivos);
});

window.AppUIController.initResizer();

function reiniciarAplicacion() {
    window.AppMainController.reiniciarAplicacion();
}

function descargarLibro() { 
    window.AppBuilder.descargarLibro(); 
}