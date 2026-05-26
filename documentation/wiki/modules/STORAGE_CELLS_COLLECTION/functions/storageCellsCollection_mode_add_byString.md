# storageCellsCollection_mode_add_byString

**Módulo:** [STORAGE_CELLS_COLLECTION](../STORAGE_CELLS_COLLECTION.md)

## Descripción
Agrega un par clave-valor según modo. Si la clave no existe, agrega ambos; si existe, modifica el valor existente.

## Sintaxis
```
Funcion result_storage <- storageCellsCollection_mode_add_byString(struct_storageCells, value_string, CELL_MODE, data_string)
```

## Parámetros
- `struct_storageCells`: Estructura de almacenamiento
- `value_string`: String de la clave
- `CELL_MODE`: Modo de celda
- `data_string`: String del valor

## Retorna
La estructura actualizada.
