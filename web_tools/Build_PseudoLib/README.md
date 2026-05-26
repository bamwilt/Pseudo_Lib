# PseudoLib Web

Herramienta unificada para analizar e inyectar dependencias en módulos PSeInt de PseudoLib.

Una sola página web (`index.html`) que permite:
- Cargar archivos `.psc`/`.txt` (1 o más)
- Cargar el oracle `PseudoLib.psc`
- Analizar dependencias faltantes
- Inyectarlas automáticamente
- Descargar el resultado

Sin frameworks, sin dependencias externas, sin servidor web. Abre `index.html` y funciona.

## Archivos

```
Web_PseudoLib/
├── index.html          ← Página principal (todo en uno)
├── css/style.css       ← Estilos (tema oscuro)
├── js/parser.js        ← Parser PSeInt (indexar, árbol de dependencias)
├── js/app.js           ← UI (carga, análisis, inyección, descarga)
├── doc/
│   ├── README.es.md    ← Documentación en español
│   ├── README.en.md    ← Documentation in English
│   ├── help.es.md      ← Ayuda en español
│   └── help.en.md      ← Help in English
└── README.md           ← Este archivo
```

## Uso

1. Abre `index.html` en tu navegador.
2. Carga los archivos fuente.
3. Carga `PseudoLib.psc` como padre.
4. Analiza → Inyecta → Descarga.

## Licencia

Uso interno del proyecto PseudoLib.
