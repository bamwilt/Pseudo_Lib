# storageCellsCollection_modifyData_byCell_String

**Módulo:** [STORAGE_CELLS_COLLECTION](../STORAGE_CELLS_COLLECTION.md)

## Descripción
Modifica el valor asociado a una clave buscándola por string. Si el nuevo valor es nulo, no modifica.

## Sintaxis
```
Funcion result_storage <- storageCellsCollection_modifyData_byCell_String(struct_storageCells, string_search, value)
```

## Parámetros
- `struct_storageCells`: Estructura de almacenamiento
- `string_search`: String de la clave a buscar
- `value`: Nuevo valor

## Retorna
La estructura con el valor modificado.
