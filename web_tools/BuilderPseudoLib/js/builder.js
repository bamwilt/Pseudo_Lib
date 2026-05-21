// js/builder.js
window.AppBuilder = {
    armarTextoCompleto() {
        const { seleccionadosOrdenados, archivosDiccionario } = window.AppGlobalVars;
        if (seleccionadosOrdenados.length === 0) return "";
        
        
        let resultado = "///%%%%%[ Pseudo_lib ]%%%%%%%%%%%%%%%%%%%%%%[    #1      ]%%%%%%%%%%%%%%%%%%%%\n\n";

        seleccionadosOrdenados.forEach(nombre => {
            const contenido = archivosDiccionario[nombre.toLowerCase()];
            resultado += "--- ARCHIVO: " + nombre + " ---\n\n" + contenido + "\n\n";
        });

        return resultado;
    },

    descargarLibro() {
        const contenido = this.armarTextoCompleto();
        if (!contenido) {
            alert("Por favor, selecciona al menos un archivo.");
            return;
        }
        const blob = new Blob([contenido], { type: 'text/plain;charset=utf-8' });
        const enlace = document.createElement('a');
        enlace.href = URL.createObjectURL(blob);
        enlace.download = "libro_compilado.txt";
        enlace.click();
        URL.revokeObjectURL(enlace.href);
    }
};