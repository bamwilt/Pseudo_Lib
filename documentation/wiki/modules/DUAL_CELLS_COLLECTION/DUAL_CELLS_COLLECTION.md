# DUAL_CELLS_COLLECTION

**Código:** #DCC
**Prefijo:** `dualCellsCollection_`
**Estado:** [+] Stable

## Descripción
Módulo que implementa una colección con dos regiones de celdas (izquierda y derecha) que comparten el mismo contador de elementos, permitiendo almacenar pares de datos en una misma estructura lineal. Los elementos izquierdos se insertan desde el inicio hacia adelante y los derechos desde el final hacia atrás, separados por un marcador de metadatos. Soporta cuatro modos de adición por lado: fijo, dinámico (redimensiona las celdas), setter (sin duplicados) y setter dinámico.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`dualCellsCollection_new()`](functions/dualCellsCollection_new.md) | Crea una nueva colección de celdas dual |
| [`dualCellsCollection_UpdateLength_right()`](functions/dualCellsCollection_UpdateLength_right.md) | Actualiza la longitud de celda del lado derecho |
| [`dualCellsCollection_Dynamic_ensureCapacity_left()`](functions/dualCellsCollection_Dynamic_ensureCapacity_left.md) | Asegura capacidad dinámica en el lado izquierdo |
| [`dualCellsCollection_Dynamic_ensureCapacity_right()`](functions/dualCellsCollection_Dynamic_ensureCapacity_right.md) | Asegura capacidad dinámica en el lado derecho |
| [`dualCellsCollection_Dynamic_ensureCapacity_right_force()`](functions/dualCellsCollection_Dynamic_ensureCapacity_right_force.md) | Asegura capacidad dinámica forzada en el lado derecho |
| [`dualCellsCollection_validateFixedLength()`](functions/dualCellsCollection_validateFixedLength.md) | Valida que un elemento quepa en una celda |
| [`dualCellsCollection_validateFixedLength_Mode()`](functions/dualCellsCollection_validateFixedLength_Mode.md) | Valida longitud según modo de celda |
| [`dualCellsCollection_add_byString_right_force()`](functions/dualCellsCollection_add_byString_right_force.md) | Agrega elemento al lado derecho de forma forzada |
| [`dualCellsCollection_add_byString_left_force()`](functions/dualCellsCollection_add_byString_left_force.md) | Agrega elemento al lado izquierdo de forma forzada |
| [`dualCellsCollection_Dynamic_add_byString_right_force()`](functions/dualCellsCollection_Dynamic_add_byString_right_force.md) | Agrega elemento dinámico al lado derecho |
| [`dualCellsCollection_Dynamic_add_byString_left_force()`](functions/dualCellsCollection_Dynamic_add_byString_left_force.md) | Agrega elemento dinámico al lado izquierdo |
| [`dualCellsCollection_Dynamic_reSize_right()`](functions/dualCellsCollection_Dynamic_reSize_right.md) | Redimensiona las celdas del lado derecho |
| [`dualCellsCollection_Dynamic_reSize_right_force()`](functions/dualCellsCollection_Dynamic_reSize_right_force.md) | Redimensiona forzadamente el lado derecho |
| [`dualCellsCollection_setter_add_byString_left_force()`](functions/dualCellsCollection_setter_add_byString_left_force.md) | Agrega con setter al lado izquierdo |
| [`dualCellsCollection_setter_add_byString_right_force()`](functions/dualCellsCollection_setter_add_byString_right_force.md) | Agrega con setter al lado derecho |
| [`dualCellsCollection_setter_constains_right()`](functions/dualCellsCollection_setter_constains_right.md) | Verifica si un elemento existe en el lado derecho |
| [`dualCellsCollection_setter_constains_left()`](functions/dualCellsCollection_setter_constains_left.md) | Verifica si un elemento existe en el lado izquierdo |
| [`dualCellsCollection_setter_getIndex_left_byString()`](functions/dualCellsCollection_setter_getIndex_left_byString.md) | Obtiene el índice de un elemento en el lado izquierdo |
| [`dualCellsCollection_setter_getIndex_right()`](functions/dualCellsCollection_setter_getIndex_right.md) | Obtiene el índice de un valor en el lado derecho |
| [`dualCellsCollection_setter_getIndex_right_byString()`](functions/dualCellsCollection_setter_getIndex_right_byString.md) | Obtiene el índice por string en el lado derecho |
| [`dualCellsCollection_setter_getIndex_right_byString_force()`](functions/dualCellsCollection_setter_getIndex_right_byString_force.md) | Obtiene el índice forzado en el lado derecho |
| [`dualCellsCollection_setterDynamic_add_byString_right_force()`](functions/dualCellsCollection_setterDynamic_add_byString_right_force.md) | Agrega con setter dinámico al lado derecho |
| [`dualCellsCollection_setterDynamic_add_byString_left_force()`](functions/dualCellsCollection_setterDynamic_add_byString_left_force.md) | Agrega con setter dinámico al lado izquierdo |
| [`dualCellsCollection_mode_add()`](functions/dualCellsCollection_mode_add.md) | Agrega un par según modos especificados |
| [`dualCellsCollection_mode_add_byType()`](functions/dualCellsCollection_mode_add_byType.md) | Agrega un par tipado según modos |
| [`dualCellsCollection_mode_add_byString()`](functions/dualCellsCollection_mode_add_byString.md) | Agrega un par por string según modos |
| [`dualCellsCollection_mode_add_byString_left()`](functions/dualCellsCollection_mode_add_byString_left.md) | Agrega al lado izquierdo según modo |
| [`dualCellsCollection_mode_add_byString_right()`](functions/dualCellsCollection_mode_add_byString_right.md) | Agrega al lado derecho según modo |
| [`dualCellsCollection_mode_add_byString_left_force()`](functions/dualCellsCollection_mode_add_byString_left_force.md) | Agrega forzado al izquierdo según modo |
| [`dualCellsCollection_mode_add_byString_right_force()`](functions/dualCellsCollection_mode_add_byString_right_force.md) | Agrega forzado al derecho según modo |
| [`dualCellsCollection_getCellPair_byRightValue()`](functions/dualCellsCollection_getCellPair_byRightValue.md) | Obtiene el par izquierdo dado el valor derecho |
| [`dualCellsCollection_getCellPair_byRightValue_ToString()`](functions/dualCellsCollection_getCellPair_byRightValue_ToString.md) | Obtiene el par izquierdo como string dado el derecho |
| [`dualCellsCollection_getCellPair_byLeftValue()`](functions/dualCellsCollection_getCellPair_byLeftValue.md) | Obtiene el par derecho dado el valor izquierdo |
| [`dualCellsCollection_getCellPair_byLeftValue_ToString()`](functions/dualCellsCollection_getCellPair_byLeftValue_ToString.md) | Obtiene el par derecho como string dado el izquierdo |
| [`dualCellsCollection_getCell_left()`](functions/dualCellsCollection_getCell_left.md) | Obtiene el valor de la celda izquierda por índice |
| [`dualCellsCollection_getCell_left_toType()`](functions/dualCellsCollection_getCell_left_toType.md) | Obtiene la celda izquierda a un tipo específico |
| [`dualCellsCollection_getCell_left_toString()`](functions/dualCellsCollection_getCell_left_toString.md) | Obtiene la celda izquierda como string |
| [`dualCellsCollection_getCell_right()`](functions/dualCellsCollection_getCell_right.md) | Obtiene el valor de la celda derecha por índice |
| [`dualCellsCollection_getCell_right_toType()`](functions/dualCellsCollection_getCell_right_toType.md) | Obtiene la celda derecha a un tipo específico |
| [`dualCellsCollection_getCell_right_toString()`](functions/dualCellsCollection_getCell_right_toString.md) | Obtiene la celda derecha como string |
| [`dualCellsCollection_getEndData()`](functions/dualCellsCollection_getEndData.md) | Obtiene el índice de fin de datos |
| [`dualCellsCollection_getCellLength_left()`](functions/dualCellsCollection_getCellLength_left.md) | Obtiene la longitud de celda del lado izquierdo |
| [`dualCellsCollection_getCellLength_right()`](functions/dualCellsCollection_getCellLength_right.md) | Obtiene la longitud de celda del lado derecho |
| [`dualCellsCollection_getStartIndex_right()`](functions/dualCellsCollection_getStartIndex_right.md) | Obtiene el índice de inicio del lado derecho |
| [`dualCellsCollection_getType_left()`](functions/dualCellsCollection_getType_left.md) | Obtiene el tipo del lado izquierdo |
| [`dualCellsCollection_getType_right()`](functions/dualCellsCollection_getType_right.md) | Obtiene el tipo del lado derecho |
| [`dualCellsCollection_getSize()`](functions/dualCellsCollection_getSize.md) | Obtiene el tamaño de la colección |
| [`dualCellsCollection_modify_left_byString()`](functions/dualCellsCollection_modify_left_byString.md) | Modifica un elemento del lado izquierdo por string |
| [`dualCellsCollection_modify_right_byString()`](functions/dualCellsCollection_modify_right_byString.md) | Modifica un elemento del lado derecho por string |
| [`dualCellsCollection_swapData_left()`](functions/dualCellsCollection_swapData_left.md) | Intercambia datos en el lado izquierdo |
| [`dualCellsCollection_swapData_right()`](functions/dualCellsCollection_swapData_right.md) | Intercambia datos en el lado derecho |
| [`dualCellsCollection_delete()`](functions/dualCellsCollection_delete.md) | Elimina un elemento de ambos lados por índice |
| [`dualCellsCollection_delete_left_force()`](functions/dualCellsCollection_delete_left_force.md) | Elimina un elemento del lado izquierdo |
| [`dualCellsCollection_delete_right_force()`](functions/dualCellsCollection_delete_right_force.md) | Elimina un elemento del lado derecho |
| [`dualCellsCollection_getSeparateString_right()`](functions/dualCellsCollection_getSeparateString_right.md) | Obtiene el string separado del lado derecho |
| [`dualCellsCollection_println_right()`](functions/dualCellsCollection_println_right.md) | Imprime el lado derecho con salto de línea |
| [`dualCellsCollection_print_right()`](functions/dualCellsCollection_print_right.md) | Imprime el lado derecho sin salto de línea |

## Ejemplo de Uso
```pseudocode
Algoritmo ejemplo_DualCells
    Definir dual Como Texto;
    Definir valido Como Logico;
    Definir indice Como Entero;
    dual = dualCellsCollection_new("pares", TYPE_STRING(), 10, TYPE_INT(), 4);
    valido = dualCellsCollection_validateFixedLength("Hola", 10);
    Escribir valido;
    valido = dualCellsCollection_validateFixedLength("Cadena muy larga", 10);
    Escribir valido;
    dual = dualCellsCollection_add_byString_right_force(dual, "123", 0, 0, 4);
    Escribir dualCellsCollection_getSize(dual);
    indice = dualCellsCollection_setter_getIndex_right(dual, "123");
    Escribir indice;
FinAlgoritmo
```
