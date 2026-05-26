# storageCellsCollection_getCellIndex_force

**Módulo:** [STORAGE_CELLS_COLLECTION](../STORAGE_CELLS_COLLECTION.md)

## Descripción
Obtiene el índice de una clave con parámetros precalculados, normalizando el resultado invertido.

## Sintaxis
```
Funcion norm_target <- storageCellsCollection_getCellIndex_force(result_storage, string_search, count_size, right_startData, cell_length)
```

## Parámetros
- `result_storage`: Estructura de almacenamiento
- `string_search`: String de la clave
- `count_size`: Tamaño de la colección
- `right_startData`: Índice de inicio del lado derecho
- `cell_length`: Longitud de celda

## Retorna
Índice normalizado de la clave.
