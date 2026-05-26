# PseudoLib Wiki

**PseudoLib** es una librería escrita en **PSeInt (Pseudocódigo)** que proporciona un conjunto modular de funciones reutilizables para facilitar el desarrollo de algoritmos, estructuras de datos, manipulación de cadenas, operaciones matemáticas, entrada/salida, sistemas de colecciones, componentes de interfaz TUI y más.

> **Versión:** 0.8.7
> **Lenguaje:** PSeInt (Estándar 2023)
> **Líneas de código:** ~9600
> **Módulos totales:** 43

---

## Índice de Módulos

| # | Código | Módulo | Prefijo | Estado | Enlace |
|---|--------|--------|---------|--------|--------|
| 1 | #NAV | NATIVE | `native_` | [+] | [NATIVE](modules/NATIVE/NATIVE.md) |
| 2 | #INP | INPUT | `user_input_` | [+] | [INPUT](modules/INPUT/INPUT.md) |
| 3 | #STR | STRING | `string_` | [+] | [STRING](modules/STRING/STRING.md) |
| 4 | #ARR | ARRAY | `array_` | [p] | [ARRAY](modules/ARRAY/ARRAY.md) |
| 5 | #PRN | PRINTERS | `print_ / println_` | [p] | [PRINTERS](modules/PRINTERS/PRINTERS.md) |
| 6 | #SLP | SLEEP | `sleep_` | [+] | [SLEEP](modules/SLEEP/SLEEP.md) |
| 7 | #LOG | LOGS | `log_` | [+] | [LOGS](modules/LOGS/LOGS.md) |
| 8 | #TST | TEST | `test_` | [+] | [TEST](modules/TEST/TEST.md) |
| 9 | #NUM | NUMBER | `int_ / number_ / float_` | [+] | [NUMBER](modules/NUMBER/NUMBER.md) |
| 10 | #BST | BINARY_STRING | `binarystring_` | [+] | [BINARY_STRING](modules/BINARY_STRING/BINARY_STRING.md) |
| 11 | #MAT | MATH | `math_` | [+] | [MATH](modules/MATH/MATH.md) |
| 12 | #BOO | BOOLEAN | `boolean_` | [+] | [BOOLEAN](modules/BOOLEAN/BOOLEAN.md) |
| 13 | #CDT | CONDITIONS | `if_ / condition_` | [+] | [CONDITIONS](modules/CONDITIONS/CONDITIONS.md) |
| 14 | #COL | COLOR | `COLOR_` | [+] | [COLOR](modules/COLOR/COLOR.md) |
| 15 | #VAL | VALUE | `value_` | [+] | [VALUE](modules/VALUE/VALUE.md) |
| 16 | #CLL | COLLECTION | `collection_` | [+] | [COLLECTION](modules/COLLECTION/COLLECTION.md) |
| 17 | #MDA | MANAGER_DATA | `managerData_` | [+] | [MANAGER_DATA](modules/MANAGER_DATA/MANAGER_DATA.md) |
| 18 | #LCL | LINEAR_COLLECTION | `linearCollection_` | [+] | [LINEAR_COLLECTION](modules/LINEAR_COLLECTION/LINEAR_COLLECTION.md) |
| 19 | #DEQ | DEQUE | `util_deque_` | [+] | [DEQUE](modules/DEQUE/DEQUE.md) |
| 20 | #QUE | QUEUE | `util_queue_` | [+] | [QUEUE](modules/QUEUE/QUEUE.md) |
| 21 | #STA | STACK | `util_stack_` | [+] | [STACK](modules/STACK/STACK.md) |
| 22 | #TMP | TEMPORAL/CHRONO_UNIT | `temporal_ / chrono_unit` | [+] | [TEMPORAL_CHRONO_UNIT](modules/TEMPORAL_CHRONO_UNIT/TEMPORAL_CHRONO_UNIT.md) |
| 23 | #LDA | LOCALDATE | `localDate_` | [+] | [LOCALDATE](modules/LOCALDATE/LOCALDATE.md) |
| 24 | #LTI | LOCALTIME | `localTime_` | [+] | [LOCALTIME](modules/LOCALTIME/LOCALTIME.md) |
| 25 | #LDT | LOCALDATE_TIME | `localDate_time_` | [+] | [LOCALDATE_TIME](modules/LOCALDATE_TIME/LOCALDATE_TIME.md) |
| 26 | #DUR | DURATION | `duration_` | [+] | [DURATION](modules/DURATION/DURATION.md) |
| 27 | #PER | PERIOD | `period_` | [+] | [PERIOD](modules/PERIOD/PERIOD.md) |
| 28 | #LIS | LIST | `util_List_` | [+] | [LIST](modules/LIST/LIST.md) |
| 29 | #CST | COLLECTION_STORAGE | `collectionStorage_` | [+] | [COLLECTION_STORAGE](modules/COLLECTION_STORAGE/COLLECTION_STORAGE.md) |
| 30 | #CCO | CELLS_COLLECTION | `cellsCollection_` | [+] | [CELLS_COLLECTION](modules/CELLS_COLLECTION/CELLS_COLLECTION.md) |
| 31 | #CCD | CELLS_COLLECTION_DYNAMIC | `cellsCollection_dynamic_` | [+] | [CELLS_COLLECTION_DYNAMIC](modules/CELLS_COLLECTION_DYNAMIC/CELLS_COLLECTION_DYNAMIC.md) |
| 32 | #CCS | CELLS_COLLECTION_SETTER | `cellsCollection_setter_` | [+] | [CELLS_COLLECTION_SETTER](modules/CELLS_COLLECTION_SETTER/CELLS_COLLECTION_SETTER.md) |
| 33 | #SET | SET | `util_set_` | [+] | [SET](modules/SET/SET.md) |
| 34 | #DCC | DUAL_CELLS_COLLECTION | `collectionDualCells_` | [+] | [DUAL_CELLS_COLLECTION](modules/DUAL_CELLS_COLLECTION/DUAL_CELLS_COLLECTION.md) |
| 35 | #SCC | STORAGE_CELLS_COLLECTION | `collStorageCells_` | [p] | [STORAGE_CELLS_COLLECTION](modules/STORAGE_CELLS_COLLECTION/STORAGE_CELLS_COLLECTION.md) |
| 36 | #MAP | MAP | `util_map_` | [+] | [MAP](modules/MAP/MAP.md) |
| 37 | #OBJ | OBJECTS | `object_` | [+] | [OBJECTS](modules/OBJECTS/OBJECTS.md) |
| 38 | #CAN | CANVAS | `canvas_` | [+] | [CANVAS](modules/CANVAS/CANVAS.md) |
| 39 | #SPR | SPRITE | `sprite_` | [+] | [SPRITE](modules/SPRITE/SPRITE.md) |
| 40 | #TUI | TUI | `tui_` | [+] | [TUI](modules/TUI/TUI.md) |
| 41 | #TCO | TCOMPONENT | `tComponent_` | [+] | [TCOMPONENT](modules/TCOMPONENT/TCOMPONENT.md) |
| 42 | #VEC | VEC | `vec_` | [x] | [VEC](modules/VEC/VEC.md) |
| 43 | #ASC | ASCII/HASH | `ascii_` | [+] | [ASCII_HASH](modules/ASCII_HASH/ASCII_HASH.md) |

> **Leyenda de estados:** [+] = Stable | [p] = Pending additions | [x] = Unusable

---

## Descripción de Módulos

| Código | Módulo | Descripción |
|--------|--------|-------------|
| #NAV | NATIVE | Funciones nativas del sistema: versión, autor, entorno, limpieza de pantalla, pausa, salida, etc. |
| #INP | INPUT | Captura de entrada del usuario con soporte para validación de tipos, rangos y modos. |
| #STR | STRING | Manipulación avanzada de cadenas: concatenación, búsqueda, extracción, transformación y análisis. |
| #ARR | ARRAY | Operaciones sobre arreglos: ordenamiento, búsqueda, filtrado, transformación y redimensionamiento. |
| #PRN | PRINTERS | Impresión formateada por consola con soporte de colores, estilos y alineación. |
| #SLP | SLEEP | Pausas y retardos en la ejecución con múltiples unidades de tiempo. |
| #LOG | LOGS | Sistema de registro de mensajes con niveles (info, warn, error, debug) y formato configurable. |
| #TST | TEST | Framework de pruebas unitarias: aserciones, suites, reportes y cobertura básica. |
| #NUM | NUMBER | Operaciones numéricas: conversión de tipos, redondeo, validación y manipulación de enteros/flotantes. |
| #BST | BINARY_STRING | Representación y manipulación de cadenas binarias: conversión, operaciones bit a bit. |
| #MAT | MATH | Funciones matemáticas avanzadas: trigonometría, logaritmos, estadística, combinatoria y constantes. |
| #BOO | BOOLEAN | Operaciones lógicas y álgebra booleana: tablas de verdad, reducción de expresiones. |
| #CDT | CONDITIONS | Evaluación de condiciones complejas: múltiples operandos, cortocircuito, patrones. |
| #COL | COLOR | Definición y manipulación de colores en formato RGB, HSL y nombres predefinidos. |
| #VAL | VALUE | Manejo de valores opcionales y nulos: Maybe, validación, asignación segura. |
| #CLL | COLLECTION | Interfaz abstracta para colecciones: iteración, búsqueda y operaciones comunes. |
| #MDA | MANAGER_DATA | Gestión dinámica de datos: creación, almacenamiento y manipulación de variables en tiempo de ejecución. |
| #LCL | LINEAR_COLLECTION | Colección lineal con acceso secuencial, inserción y eliminación en posiciones específicas. |
| #DEQ | DEQUE | Estructura de doble cola (deque) con inserción/extracción eficiente en ambos extremos. |
| #QUE | QUEUE | Cola FIFO clásica con operaciones de encolar, desencolar y consultar frente/final. |
| #STA | STACK | Pila LIFO con operaciones de apilar, desapilar y consultar tope. |
| #TMP | TEMPORAL/CHRONO_UNIT | Unidades de tiempo y conversión entre ellas: segundos, minutos, horas, días, etc. |
| #LDA | LOCALDATE | Representación y manipulación de fechas (día, mes, año) con operaciones aritméticas y comparación. |
| #LTI | LOCALTIME | Representación y manipulación de horas (hora, minuto, segundo) con operaciones aritméticas. |
| #LDT | LOCALDATE_TIME | Combinación de fecha y hora con operaciones integradas de ambos tipos. |
| #DUR | DURATION | Duración entre momentos en el tiempo con precisión de segundos/nanosegundos. |
| #PER | PERIOD | Período basado en días, meses y años para aritmética de fechas. |
| #LIS | LIST | Lista genérica ordenada con inserción, eliminación, búsqueda y ordenamiento. |
| #CST | COLLECTION_STORAGE | Almacenamiento persistente de colecciones en memoria con esquema de datos. |
| #CCO | CELLS_COLLECTION | Colección basada en celdas con acceso posicional y operaciones matriciales. |
| #CCD | CELLS_COLLECTION_DYNAMIC | Versión dinámica de Cells Collection con redimensionamiento automático. |
| #CCS | CELLS_COLLECTION_SETTER | Configurador y asignador de valores para Cells Collection. |
| #SET | SET | Conjunto sin elementos duplicados con operaciones de unión, intersección y diferencia. |
| #DCC | DUAL_CELLS_COLLECTION | Colección de celdas dobles con dos valores por posición para pares clave-valor. |
| #SCC | STORAGE_CELLS_COLLECTION | Almacenamiento de colecciones de celdas con soporte de metadatos. |
| #MAP | MAP | Mapa/diccionario con asociación clave-valor, búsqueda eficiente e iteración. |
| #OBJ | OBJECTS | Sistema de objetos simple con propiedades, métodos y herencia básica. |
| #CAN | CANVAS | Lienzo de dibujo bidimensional con píxeles, formas geométricas y transformaciones. |
| #SPR | SPRITE | Sprites para gráficos 2D: carga, posicionamiento, animación y detección de colisiones. |
| #TUI | TUI | Interfaz de usuario textual (TUI): ventanas, botones, menús y cuadros de diálogo. |
| #TCO | TCOMPONENT | Componente base para la TUI: renderizado, eventos, foco y contenedores. |
| #VEC | VEC | Vector geométrico en 2D/3D con operaciones de álgebra lineal. **No usable actualmente.** |
| #ASC | ASCII/HASH | Generación de hashes y representación ASCII: soporte para checksum y codificación. |
