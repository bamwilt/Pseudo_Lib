# Ayuda de PseudoLib Web

## ¿Qué hace esta herramienta?

Analiza archivos de código PSeInt, encuentra qué funciones de PseudoLib están siendo usadas pero no están definidas en tus archivos, y las inyecta automáticamente desde el archivo PseudoLib.psc.

## Guía paso a paso

### 1. Cargar archivos fuente
- Presiona "Cargar Fuentes".
- Selecciona uno o más archivos `.psc` o `.txt`.
- Los archivos se concatenan en orden alfabético en el editor de código fuente.

### 2. Cargar el oracle padre
- Presiona "Cargar Padre".
- Selecciona el archivo `PseudoLib.psc`.
- Este archivo contiene todas las funciones disponibles de PseudoLib.

### 3. Analizar dependencias
- Presiona "Analizar".
- La herramienta examina tu código fuente, encuentra todas las funciones llamadas y verifica cuáles no están definidas localmente.
- Busca esas funciones en el archivo padre.
- Muestra un árbol de dependencias agrupado por módulo (cada módulo colapsable).

### 4. Inyectar dependencias
- Presiona "Inyectar".
- Copia todas las funciones faltantes desde el padre hacia el editor de resultado.
- Las dependencias se agrupan bajo la sección `///==========[DEPENDECES]`.

### 5. Descargar resultado
- Presiona "Descargar".
- Guarda el archivo `PseudoLib_merged.psc` con todo el código fuente más las dependencias inyectadas.

## Notas técnicas

- El análisis usa BFS (búsqueda en anchura) para resolver dependencias transitivas.
- Funciones con prefijos específicos se asignan automáticamente a sus módulos.
- `KNOWN_MAPPINGS` resuelve ~85 funciones especiales que no siguen el patrón de prefijos.
- Palabras reservadas de PSeInt y funciones nativas se excluyen del análisis.

## Solución de problemas

- **No pasa nada al hacer clic**: Asegúrate de haber cargado tanto archivos fuente como el padre.
- **Muchas dependencias "desconocidas"**: Verifica que el padre sea el archivo PseudoLib.psc correcto.
- **El resultado no compila en PSeInt**: Revisa el orden de las dependencias; algunas funciones pueden requerir que otras estén definidas antes.
