# CELLS_COLLECTION

**Código:** #CCO
**Prefijo:** `cellsCollection_`
**Estado:** [+] Stable

## Descripción
Módulo para la gestión de colecciones basadas en celdas de longitud fija. Cada elemento se almacena en un bloque de tamaño normalizado, permitiendo acceso directo por índice, operaciones de inserción, eliminación, modificación e intercambio de datos.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`cellsCollection_new()`](functions/cellsCollection_new.md) | Crea una nueva colección de celdas |
| [`cellsCollection_getMinFixed()`](functions/cellsCollection_getMinFixed.md) | Retorna la longitud mínima de celda |
| [`cellsCollection_setNormCellLength()`](functions/cellsCollection_setNormCellLength.md) | Normaliza y valida la longitud de celda |
| [`cellsCollection_isChanged()`](functions/cellsCollection_isChanged.md) | Verifica si la estructura cambió de tamaño |
| [`cellsCollection_calcule_indexBlock()`](functions/cellsCollection_calcule_indexBlock.md) | Calcula el índice de un bloque desde el inicio |
| [`cellsCollection_calcule_indexBlock_atEnd()`](functions/cellsCollection_calcule_indexBlock_atEnd.md) | Calcula el índice de un bloque desde el final |
| [`cellsCollection_String_normalizedToBlockLegth()`](functions/cellsCollection_String_normalizedToBlockLegth.md) | Normaliza un string a la longitud de bloque |
| [`cellsCollection_clear_cellString()`](functions/cellsCollection_clear_cellString.md) | Limpia los caracteres nulos de una celda |
| [`cellsCollection_indexOf_clearData()`](functions/cellsCollection_indexOf_clearData.md) | Índice donde termina el dato real en una celda |
| [`cellsCollection_CanLengthEntered()`](functions/cellsCollection_CanLengthEntered.md) | Verifica si un elemento cabe en la celda |
| [`cellsCollection_getSize()`](functions/cellsCollection_getSize.md) | Obtiene el tamaño de la colección |
| [`cellsCollection_getCellLength()`](functions/cellsCollection_getCellLength.md) | Obtiene la longitud de celda configurada |
| [`cellsCollection_getStartData()`](functions/cellsCollection_getStartData.md) | Obtiene el índice de inicio de datos |
| [`cellsCollection_getType()`](functions/cellsCollection_getType.md) | Obtiene el tipo de datos de la colección |
| [`cellsCollection_getCell()`](functions/cellsCollection_getCell.md) | Obtiene un elemento tipado por índice |
| [`cellsCollection_getCell_toType()`](functions/cellsCollection_getCell_toType.md) | Obtiene un elemento al tipo especificado |
| [`cellsCollection_getCell_toString()`](functions/cellsCollection_getCell_toString.md) | Obtiene un elemento como string |
| [`cellsCollection_getCell_toString_force()`](functions/cellsCollection_getCell_toString_force.md) | Obtiene un elemento string con parámetros precalculados |
| [`cellsCollection_add()`](functions/cellsCollection_add.md) | Añade un elemento a la colección |
| [`cellsCollection_add_byType()`](functions/cellsCollection_add_byType.md) | Añade un elemento tipado |
| [`cellsCollection_add_byString()`](functions/cellsCollection_add_byString.md) | Añade un elemento string |
| [`cellsCollection_add_byString_force()`](functions/cellsCollection_add_byString_force.md) | Añade un elemento string con parámetros precalculados |
| [`cellsCollection_delete_byIndex()`](functions/cellsCollection_delete_byIndex.md) | Elimina un elemento por índice |
| [`cellsCollection_delete_byIndex_force()`](functions/cellsCollection_delete_byIndex_force.md) | Elimina un elemento con parámetros precalculados |
| [`cellsCollection_modify()`](functions/cellsCollection_modify.md) | Modifica un elemento por índice |
| [`cellsCollection_modify_byType()`](functions/cellsCollection_modify_byType.md) | Modifica un elemento tipado |
| [`cellsCollection_modify_byString()`](functions/cellsCollection_modify_byString.md) | Modifica un elemento string |
| [`cellsCollection_modify_byString_force()`](functions/cellsCollection_modify_byString_force.md) | Modifica un elemento string con parámetros precalculados |
| [`cellsCollection_swapData()`](functions/cellsCollection_swapData.md) | Intercambia dos elementos por índice |
| [`cellsCollection_swapData_force()`](functions/cellsCollection_swapData_force.md) | Intercambia elementos con parámetros precalculados |
| [`cellsCollection_getSeparateString()`](functions/cellsCollection_getSeparateString.md) | Obtiene los datos como string separado |
| [`cellsCollection_println()`](functions/cellsCollection_println.md) | Imprime la colección con salto de línea |
| [`cellsCollection_print()`](functions/cellsCollection_print.md) | Imprime la colección sin salto de línea |
| [`__private_cellsCollection_printer()`](functions/__private_cellsCollection_printer.md) | Imprime los datos internos de la colección |
| [`cellsCollection_symbol_null()`](functions/cellsCollection_symbol_null.md) | Retorna el símbolo nulo de celda |
| [`cellsCollection_setterDynamic_add()`](functions/cellsCollection_setterDynamic_add.md) | Añade un elemento con verificación de duplicados |
| [`cellsCollection_setterDynamic_add_byType()`](functions/cellsCollection_setterDynamic_add_byType.md) | Añade un elemento tipado con verificación |
| [`cellsCollection_setterDynamic_add_byString()`](functions/cellsCollection_setterDynamic_add_byString.md) | Añade un elemento string con verificación |
