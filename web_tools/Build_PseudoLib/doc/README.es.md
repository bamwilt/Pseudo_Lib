# PseudoLib Web — Herramienta Unificada

Aplicación web 100% nativa (HTML/CSS/JS) para analizar, inyectar dependencias y concatenar módulos PSeInt de PseudoLib.

## Funcionalidades

- **Cargar Fuentes**: Selecciona 1 o más archivos `.psc`/`.txt`. Se concatenan automáticamente en orden alfabético.
- **Cargar Padre**: Carga el archivo `PseudoLib.psc` (oracle) como repositorio de dependencias.
- **Analizar**: Escanea el código fuente, extrae funciones declaradas y llamadas, busca funciones faltantes en el padre, y construye el árbol transitivo de dependencias (BFS).
- **Inyectar**: Copia las funciones faltantes desde el padre al código fuente, agrupadas por módulo.
- **Descargar**: Guarda el resultado como `PseudoLib_merged.psc`.

## Uso

1. Abre `index.html` en cualquier navegador moderno (funciona con `file://`).
2. Presiona "Cargar Fuentes" y selecciona los archivos PSeInt.
3. Presiona "Cargar Padre" y selecciona `PseudoLib.psc`.
4. Presiona "Analizar" para ver el árbol de dependencias.
5. Presiona "Inyectar" para agregar las dependencias faltantes.
6. Presiona "Descargar" para obtener el archivo final.

## Compatibilidad

Navegadores modernos (Chrome, Firefox, Edge). Sin dependencias externas ni servidor web requerido.
