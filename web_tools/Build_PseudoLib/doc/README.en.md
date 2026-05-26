# PseudoLib Web — Unified Tool

100% native web application (HTML/CSS/JS) for analyzing, injecting dependencies, and concatenating PSeInt modules from PseudoLib.

## Features

- **Load Sources**: Select 1 or more `.psc`/`.txt` files. They are concatenated automatically in alphabetical order.
- **Load Oracle**: Load `PseudoLib.psc` as the dependency repository.
- **Analyze**: Scan source code, extract declared and called functions, find missing functions in the oracle, and build the transitive dependency tree (BFS).
- **Inject**: Copy missing functions from the oracle into the source code, grouped by module.
- **Download**: Save the result as `PseudoLib_merged.psc`.

## Usage

1. Open `index.html` in any modern browser (works with `file://`).
2. Click "Cargar Fuentes" and select PSeInt files.
3. Click "Cargar Padre" and select `PseudoLib.psc`.
4. Click "Analizar" to see the dependency tree.
5. Click "Inyectar" to add missing dependencies.
6. Click "Descargar" to get the final file.

## Compatibility

Modern browsers (Chrome, Firefox, Edge). No external dependencies or web server required.
