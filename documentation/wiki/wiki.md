# PseudoLib Wiki

**PseudoLib** es una librería escrita en **PSeInt (Pseudocódigo)** que proporciona un conjunto modular de funciones reutilizables para facilitar el desarrollo de algoritmos, estructuras de datos, manipulación de cadenas, operaciones matemáticas, entrada/salida, sistemas de colecciones, componentes de interfaz TUI y más.

> **Versión:** 0.9.3
> **Lenguaje:** PSeInt (Estándar 2023)
> **Líneas de código:** ~11000
> **Módulos totales:** 43

---

## Quick Start

### 1. Configuración de PSeInt

PseudoLib requiere opciones específicas de PSeInt. Aplica esta configuración en `config.txt`:

```
version=20230211
base_zero_arrays=1
allow_dinamyc_dimensions=1
enable_user_functions=1
lazy_syntax=1
coloquial_conditions=1
force_define_vars=1
force_semicolon=1
```

### 2. Uso básico

Incluye `PseudoLib.psc` como algoritmo principal o agrega los módulos que necesites:

```pseudocode
Algoritmo MiPrograma
    // Usar funciones de PseudoLib
    Definir mensaje Como Texto;
    mensaje = string_append("Hola ", "Mundo");
    println(mensaje);
    println(string_NULL());
    
    // Listas
    Definir lista Como Texto;
    lista = util_List_new(TYPE_STRING());
    lista = util_List_add(lista, "elemento 1");
    lista = util_List_add(lista, "elemento 2");
    
    // Mapas
    Definir mapa Como Texto;
    mapa = util_Map_new(TYPE_STRING(), TYPE_INT());
    mapa = util_Map_Put(mapa, "edad", 25);
FinAlgoritmo
```

### 3. Estructura del proyecto

```
src/
├── PseudoLib.psc          # Algoritmo principal (10,044 líneas)
└── modules/               # Módulos individuales
    ├── NATIVE.psc
    ├── STRING.psc
    ├── COLLECTION.psc
    └── ... (42 módulos)
documentation/
└── wiki/
    ├── wiki.md            # Esta página
    └── modules/           # Docs por módulo
examples/
├── FileSystem.txt         # Simulador de sistema de archivos
├── linux_sprite.txt       # Dibujo de sprite Tux en canvas
├── Object_example.txt     # Sistema de objetos con herencia
└── qr_old.txt             # Patrón QR en canvas
```

---

## Sistema de Tipos

PseudoLib define constantes de tipo que se usan en colecciones, listas, mapas y objetos:

| Tipo | Constante | Uso |
|------|-----------|-----|
| `Texto` | `TYPE_STRING()` | Cadenas de texto |
| `Numero` | `TYPE_INT()` | Números enteros |
| `Real` | `TYPE_FLOAT()` | Números decimales |
| `Logico` | `TYPE_BOOLEAN()` | Valores booleanos |
| `Texto` | `TYPE_OBJECT()` | Objetos serializados |

Ejemplo:
```pseudocode
lista = util_List_new(TYPE_INT());     // Lista de enteros
mapa  = util_Map_new(TYPE_STRING(), TYPE_FLOAT());  // Mapa string → float
```

---

## Arquitectura

PseudoLib usa el patrón **LVSI (Lazy Versioned String Index)** para almacenar datos estructurados como cadenas de texto con metadatos. La jerarquía de colecciones es:

```
Collection (símbolos, metadata)
  └── LinearCollection (estructura lineal con índices)
        ├── List       → util_List_*
        ├── Queue      → util_queue_*
        ├── Stack      → util_stack_*
        └── Deque      → util_deque_*

CellsCollection (colección de celdas de longitud fija)
  ├── Set             → util_set_*
  ├── DualCells       → collectionDualCells_*
  └── StorageCells    → collStorageCells_*
        └── Map       → util_map_*

ManagerData (gestión secuencial de datos)
CollectionStorage (almacenamiento indexado)
```

Cada estructura almacena su tipo, metadatos y datos serializados en un solo string, permitiendo composición.

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

## Ejemplos disponibles

| Archivo | Descripción | Módulos usados |
|---------|-------------|----------------|
| [`examples/FileSystem.txt`](../examples/FileSystem.txt) | Simulador de sistema de archivos con Map, List, String, TUI | MAP, LIST, STRING, PRINTERS, SLEEP, INPUT, CANVAS |
| [`examples/linux_sprite.txt`](../examples/linux_sprite.txt) | Dibuja logo de Tux en canvas con sprites | SPRITE, CANVAS |
| [`examples/Object_example.txt`](../examples/Object_example.txt) | Sistema de objetos con herencia (Persona, Empleado, Tarjeta) | OBJECTS, NUMBER, MATH, PRINTERS |
| [`examples/qr_old.txt`](../examples/qr_old.txt) | Patrón QR dibujado pixel por pixel en canvas | CANVAS, COLOR |

---

## Descripción de Módulos

| Código | Módulo | Descripción |
|--------|--------|-------------|
| #NAV | NATIVE | Wrappers directos sobre funciones nativas de PSeInt: `Longitud`, `ConvertirATexto`, `Subcadena`, `Mayusculas`, `Escribir`, `Limpiar Pantalla`, `Trunc`, `Raiz`, `Sen`, `Cos`, `Tan`, `Abs`, `Redon`, `Ln`, potencias y hora del sistema. |
| #INP | INPUT | Lectura de datos del usuario por consola: texto, entero, booleano, flotante. Soporta menús con opciones separadas por string y mensajes personalizados. |
| #STR | STRING | Manipulación de cadenas: concatenación, subcadenas, búsqueda de índices, padding, trim, reemplazo, detección de tipo (número, booleano), inversión. |
| #ARR | ARRAY | Utilidades para arreglos nativos de PSeInt: conversión a string con separador, valores booleanos por índice, búsqueda, ordenamiento QuickSort. |
| #PRN | PRINTERS | Funciones de impresión: `print`, `println`, impresión de arreglos con/sin color, barras de progreso, separadores, repetición de texto. |
| #SLP | SLEEP | Pausas en la ejecución usando `Esperar` nativo de PSeInt. Soporta milisegundos, segundos, limpieza de pantalla y animaciones de carga. |
| #LOG | LOGS | Sistema de registro con niveles: `INFO`, `WARNING`, `ERROR`, `DEBUG`. Cada nivel imprime con un color distinto y etiqueta. |
| #TST | TEST | Utilidades para testing: checkpoints, aserciones de igualdad, contador de pruebas pasadas, temporizador de ejecución. |
| #NUM | NUMBER | Constantes y utilidades numéricas: conversión a string, constantes de tipo (`TYPE_INT`, `TYPE_FLOAT`, `TYPE_BOOLEAN`), validación de rango, comparación, valor nulo. |
| #BST | BINARY_STRING | Operaciones lógicas bit a bit sobre strings binarios: `AND`, `OR`, `XOR`, `NOT`, desplazamiento, conversión a entero. |
| #MAT | MATH | Operaciones matemáticas básicas: incremento, decremento, suma, máximo/mínimo entre dos valores, truncado, módulo, límite de decimales, limitación por rango. |
| #BOO | BOOLEAN | Constantes booleanas: `true()`, `false()`, conversión `boolean_ToString()`. |
| #CDT | CONDITIONS | Condicionales funcionales: `if_else(cond, a, b)` y `if(cond, a, TYPE)` que retorna valor nulo si la condición falla. |
| #COL | COLOR | Sistema de colores por índice para consola: `COLOR_RED`, `COLOR_GREEN`, `COLOR_BLUE`, `COLOR_CYAN`, `COLOR_YELLOW`, `COLOR_WHITE`, `COLOR_TRANSPARENT`. Función `color_setColorText()` para aplicar color a textos. |
| #VAL | VALUE | Conversión y manejo de valores entre tipos: `value_stringToType()`, `value_TypeToString()`, `value_isNull()`, `value_catch()`, modificación de números dentro de cadenas en áreas delimitadas. |
| #CLL | COLLECTION | Símbolos y estructura base del sistema LVSI: símbolos de metadata, tipo, datos, separadores. Función `collection_new()` para crear estructuras base. |
| #MDA | MANAGER_DATA | Gestión de datos secuenciales dentro de colecciones: modificar, obtener, buscar por índice interno. Soporta operaciones de lectura/escritura en estructuras serializadas. |
| #LCL | LINEAR_COLLECTION | Estructura lineal base con metadatos. Proporciona: creación, agregar al inicio/fin, obtener/establecer elementos por índice, tamaño, vacío, modificación y eliminación. |
| #DEQ | DEQUE | Estructura de doble extremo (Deque) basada en `LinearCollection`. Permite agregar/obtener/eliminar tanto al inicio como al final. |
| #QUE | QUEUE | Cola FIFO basada en `LinearCollection`. Opera con `Offer` (encolar), `Poll` (desencolar), `Peek` (consultar frente). |
| #STA | STACK | Pila LIFO basada en `LinearCollection`. Opera con `Push` (apilar), `Pop` (desapilar), `Top` (consultar tope). |
| #TMP | TEMPORAL/CHRONO_UNIT | Constantes de unidades temporales: `chronoUnit_SECONDS`, `chronoUnit_MINUTES`, `chronoUnit_HOURS`, `chronoUnit_DAYS`, `chronoUnit_WEEKS`. Validación y conversión entre unidades. |
| #LDA | LOCALDATE | Fechas locales: `localDate_now()`, `localDate_of(year, month, day)`, obtener día/mes/año, validación de año bisiesto, longitud de meses, día de la semana. |
| #LTI | LOCALTIME | Horas locales: `localTime_now()`, `localTime_of(hours, minutes, seconds)`, `localTime_ToString()`, `localTime_ofSecondOfDays()`. |
| #LDT | LOCALDATE_TIME | Combinación de fecha y hora. Construcción desde nombre de mes, componentes individuales, y conversión a string. |
| #DUR | DURATION | Duración entre dos tiempos: `duration_between(start, end)`, `duration_ofDays()`, `duration_ofHours()`, `duration_ofMinutes()`, `duration_getSeconds()`, conversión entre unidades. |
| #PER | PERIOD | Períodos basados en día, mes, año: `period_of(year, month, day)`, getters, suma, multiplicación, negación, normalización. |
| #LIS | LIST | Lista dinámica genérica basada en `LinearCollection`. Operaciones: `new`, `add`, `get`, `set`, `delete`, `Size`, `println`. |
| #CST | COLLECTION_STORAGE | Almacenamiento indexado dentro de colecciones: crear, agregar por string, modificar, obtener por índice interno, búsqueda por clave. |
| #CCO | CELLS_COLLECTION | Colección de celdas de longitud fija: crear, obtener tamaño y longitud de celda, eliminar por índice, normalizar strings a longitud de bloque. |
| #CCD | CELLS_COLLECTION_DYNAMIC | Extensión dinámica de CellsCollection: redimensionar, asegurar capacidad, actualizar longitud de celda. |
| #CCS | CELLS_COLLECTION_SETTER | Setter para CellsCollection: agregar elementos (con detección automática de tipo), eliminar por string, buscar índice por string, verificar contención. |
| #SET | SET | Conjunto sin duplicados basado en `CellsCollection`. Operaciones: `Add`, `Delete`, `contains`, `Size`. |
| #DCC | DUAL_CELLS_COLLECTION | Colección de celdas dobles (valor + metadata). Soporta modos Fixed, Dynamic, Setter. Configurable para dos tipos distintos por celda. |
| #SCC | STORAGE_CELLS_COLLECTION | Almacenamiento con celdas: crear con longitud personalizada, agregar con setter/modo dinámico, obtener datos por celda, eliminar por string. |
| #MAP | MAP | Mapa clave-valor basado en `StorageCellsCollection`. Operaciones: `Put`, `Get`, `remove`, `Contains`, `Size`, `Keys`. |
| #OBJ | OBJECTS | Mini sistema de objetos: `object_new()`, propiedades con tipo, herencia entre objetos, getters/setters de propiedades con control de tipo. |
| #CAN | CANVAS | Lienzo de caracteres para gráficos ASCII. Dibuja puntos, líneas, rectángulos, texto, botones, paneles, sprites. Soporta QR, ventanas con color, y renderizado de componentes TUI. |
| #SPR | SPRITE | Sprites de caracteres: crear, agregar líneas, convertir a canvas. Efectos de renderizado: `CUTOUT`, `TRIMMED`, `FLIP_H`, `FLIP_V`. |
| #TUI | TUI | Interfaz de usuario textual: ventanas con título, color y tamaño; componentes (botones, labels, reglas, paneles, sprites); entrada de usuario con opciones; conversión a canvas. |
| #TCO | TCOMPONENT | Componentes TUI: crear botones, labels, reglas horizontales/verticales, paneles, sprite strings. Manejo de propiedades: texto, input, valor, posición. |
| #VEC | VEC | Vector geométrico. **No implementado actualmente.** |
| #ASC | ASCII/HASH | Clasificación de caracteres ASCII: determinar si un carácter es letra, número, símbolo de control, operador, etc. Obtener prefijos alfabéticos y numéricos desde una posición. |
