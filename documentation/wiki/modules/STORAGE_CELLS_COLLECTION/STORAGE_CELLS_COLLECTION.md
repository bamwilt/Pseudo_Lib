# STORAGE_CELLS_COLLECTION

**Código:** #SCC
**Prefijo:** `storageCellsCollection_`
**Estado:** [+] Stable

## Descripción
Módulo que implementa un almacenamiento clave-valor basado en celdas, combinando una colección de celdas duales con un almacenamiento lineal indexado. Permite asociar una clave (celda) con un valor (dato lineal) y operaciones de modificación, consulta y eliminación.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`storageCellsCollection_new()`](functions/storageCellsCollection_new.md) | Crea un nuevo almacenamiento clave-valor |
| [`storageCellsCollection_new_setLengthCell()`](functions/storageCellsCollection_new_setLengthCell.md) | Crea con longitud de celda personalizada |
| [`storageCellsCollection_modifyData_byCell()`](functions/storageCellsCollection_modifyData_byCell.md) | Modifica el valor asociado a una clave |
| [`storageCellsCollection_modifyData_byCell_String()`](functions/storageCellsCollection_modifyData_byCell_String.md) | Modifica valor por string de clave |
| [`storageCellsCollection_getData_byCell()`](functions/storageCellsCollection_getData_byCell.md) | Obtiene el valor asociado a una clave |
| [`storageCellsCollection_getData_byCell_toString()`](functions/storageCellsCollection_getData_byCell_toString.md) | Obtiene el valor como string por clave |
| [`storageCellsCollection_getSize()`](functions/storageCellsCollection_getSize.md) | Obtiene cantidad de pares almacenados |
| [`storageCellsCollection_getCellLength()`](functions/storageCellsCollection_getCellLength.md) | Obtiene la longitud de celda |
| [`storageCellsCollection_getType()`](functions/storageCellsCollection_getType.md) | Obtiene el tipo de las claves |
| [`storageCellsCollection_getCellIndex()`](functions/storageCellsCollection_getCellIndex.md) | Obtiene el índice de una clave |
| [`storageCellsCollection_getCellIndex_byString()`](functions/storageCellsCollection_getCellIndex_byString.md) | Obtiene el índice de una clave por string |
| [`storageCellsCollection_getCellIndex_force()`](functions/storageCellsCollection_getCellIndex_force.md) | Obtiene el índice de clave forzado |
| [`storageCellsCollection_add()`](functions/storageCellsCollection_add.md) | Agrega un par clave-valor dinámico |
| [`storageCellsCollection_add_byType()`](functions/storageCellsCollection_add_byType.md) | Agrega par clave-valor tipado |
| [`storageCellsCollection_add_byString()`](functions/storageCellsCollection_add_byString.md) | Agrega par clave-valor por string |
| [`storageCellsCollection_add_setter()`](functions/storageCellsCollection_add_setter.md) | Agrega par clave-valor con setter |
| [`storageCellsCollection_add_setter_byType()`](functions/storageCellsCollection_add_setter_byType.md) | Agrega par setter tipado |
| [`storageCellsCollection_add_setter_byString()`](functions/storageCellsCollection_add_setter_byString.md) | Agrega par setter por string |
| [`storageCellsCollection_mode_add()`](functions/storageCellsCollection_mode_add.md) | Agrega par según modo de celda |
| [`storageCellsCollection_mode_add_byType()`](functions/storageCellsCollection_mode_add_byType.md) | Agrega par según modo y tipo |
| [`storageCellsCollection_mode_add_byString()`](functions/storageCellsCollection_mode_add_byString.md) | Agrega par según modo por string |
| [`storageCellsCollection_delete()`](functions/storageCellsCollection_delete.md) | Elimina un par por clave |
| [`storageCellsCollection_delete_byString()`](functions/storageCellsCollection_delete_byString.md) | Elimina un par por string de clave |
| [`storageCellsCollection_constainsValue()`](functions/storageCellsCollection_constainsValue.md) | Verifica si un valor existe |
| [`storageCellsCollection_constainsCell()`](functions/storageCellsCollection_constainsCell.md) | Verifica si una clave existe |
| [`storageCellsCollection_getSeparateString()`](functions/storageCellsCollection_getSeparateString.md) | Obtiene string separado de claves |
| [`storageCellsCollection_println_value()`](functions/storageCellsCollection_println_value.md) | Imprime los valores con salto |
| [`storageCellsCollection_print_value()`](functions/storageCellsCollection_print_value.md) | Imprime los valores sin salto |
| [`storageCellsCollection_println()`](functions/storageCellsCollection_println.md) | Imprime las claves con salto |
| [`storageCellsCollection_print()`](functions/storageCellsCollection_print.md) | Imprime las claves sin salto |
