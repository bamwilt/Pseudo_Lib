// js/ui_controller.js

window.AppUIController = {
    crearBotoneraModulos() {
        const { listaNombresOrdenada } = window.AppGlobalVars;
        const zonaBotones = document.getElementById('zonaBotones');
        zonaBotones.innerHTML = ""; 

        listaNombresOrdenada.forEach(nombre => {
            const boton = document.createElement('button');
            boton.innerText = nombre;
            boton.className = "btn-modulo";
            boton.onclick = () => { this.toggleSeleccion(nombre, boton); };
            zonaBotones.appendChild(boton);
        });
    },

    toggleSeleccion(nombre, botonElemento) {
        const { seleccionadosOrdenados } = window.AppGlobalVars;
        const indice = seleccionadosOrdenados.indexOf(nombre);
        
        if (indice === -1) {
            botonElemento.classList.add('seleccionado');
            seleccionadosOrdenados.push(nombre);
        } else {
            botonElemento.classList.remove('seleccionado');
            seleccionadosOrdenados.splice(indice, 1);
        }
        
        if (typeof actualizarVistaPreviaGlobal === 'function') {
            actualizarVistaPreviaGlobal();
        }
    },

    // Lógica para capturar el arrastre vertical
    initResizer() {
        const resizer = document.getElementById('resizerDerecho');
        const panelDerecho = document.getElementById('panelDerecho');
        
        if (!resizer || !panelDerecho) return;

        resizer.addEventListener('mousedown', (e) => {
            e.preventDefault();
            resizer.classList.add('arrastrando');

            const anchoInicial = panelDerecho.getBoundingClientRect().width;
            const xInicial = e.clientX;

            function alMoverMouse(eventoMover) {
                const diferenciaX = xInicial - eventoMover.clientX;
                const nuevoAncho = anchoInicial + diferenciaX;

                // Límites mínimos y máximos en píxeles para proteger la interfaz
                if (nuevoAncho > 200 && nuevoAncho < window.innerWidth * 0.7) {
                    panelDerecho.style.width = nuevoAncho + 'px';
                }
            }

            function alSoltarMouse() {
                resizer.classList.remove('arrastrando');
                document.removeEventListener('mousemove', alMoverMouse);
                document.removeEventListener('mouseup', alSoltarMouse);
            }

            document.addEventListener('mousemove', alMoverMouse);
            document.addEventListener('mouseup', alSoltarMouse);
        });
    },

    reiniciarInterfaz() {
        document.getElementById('zonaBotones').innerHTML = "";
        document.getElementById('nombreArchivo').innerText = "Archivo: Ninguno";
        document.getElementById('indicadorPosicion').innerText = "0 / 0";
        document.getElementById('contenidoTexto').innerText = "";
        document.getElementById('btnAnterior').disabled = true;
        document.getElementById('btnSiguiente').disabled = true;
        document.getElementById('selectorCarpeta').value = "";
    },

    alternarTema() {
        const body = document.body;
        const btn = document.getElementById('btnTema');
        if (body.classList.contains('modo-oscuro')) {
            body.classList.replace('modo-oscuro', 'modo-claro');
            btn.innerText = "Modo Oscuro";
        } else {
            body.classList.replace('modo-claro', 'modo-oscuro');
            btn.innerText = "Modo Claro";
        }
    },

    colapsarPanel(idPanel) {
        const panel = document.getElementById(idPanel);
        const botonFlotante = idPanel === 'panelIzquierdo' ? 'btnAbrirIzquierdo' : 'btnAbrirDerecho';
        const btnFlotanteDoc = document.getElementById(botonFlotante);

        if (panel.classList.contains('oculto')) {
            panel.classList.remove('oculto');
            btnFlotanteDoc.style.display = "none";
        } else {
            panel.classList.add('oculto');
            btnFlotanteDoc.style.display = "block";
        }
    }
};

function alternarTema() { window.AppUIController.alternarTema(); }
function colapsarPanel(idPanel) { window.AppUIController.colapsarPanel(idPanel); }