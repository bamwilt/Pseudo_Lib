let idCounter = 0;

document.addEventListener("DOMContentLoaded", () => {
    // Generar la primera pestaña automáticamente al cargar el entorno
    agregarCampoModulo();
});

function agregarCampoModulo() {
    idCounter++;
    const grid = document.getElementById('contenedorModulos');
    const card = document.createElement('div');
    card.className = 'modulo-card';
    card.setAttribute('data-id', idCounter);

    // Renderizado interno con el botón "Run" individual en su cabecera
    card.innerHTML = `
        <div class="modulo-header">
            <input type="text" class="modulo-prefijo" placeholder="Prefix...">
            <div style="display: flex; gap: 10px; align-items: center;">
                <button class="btn-ejecutar-modulo" onclick="ejecutarAnalisisIndividual(this)">Run</button>
                <button class="btn-eliminar" onclick="eliminarCampoModulo(this)">×</button>
            </div>
        </div>
        <div class="modulo-body">
            <div class="editor-section">
                <textarea class="modulo-codigo" spellcheck="false" placeholder="Code..."></textarea>
            </div>
            <div class="report-section" id="report-${idCounter}">
                <div class="vacio-hint">Run analysis to see results</div>
            </div>
        </div>`;
    grid.appendChild(card);
}

function eliminarCampoModulo(btn) {
    if (document.querySelectorAll('.modulo-card').length > 1) {
        btn.closest('.modulo-card').remove();
    }
}