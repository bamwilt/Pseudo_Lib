# storageCellsCollection_mode_add

**Módulo:** [STORAGE_CELLS_COLLECTION](../STORAGE_CELLS_COLLECTION.md)

## Descripción
Agrega un par clave-valor usando un modo de celda específico.

## Sintaxis
```
Funcion result_storage <- storageCellsCollection_mode_add(struct_storage, value_cell, CELL_MODE, value_linear)
```

## Parámetros
- `struct_storage`: Estructura de almacenamiento
- `value_cell`: Clave
- `CELL_MODE`: Modo de celda (fijo, dinámico, setter, etc.)
- `value_linear`: Valor

## Retorna
La estructura con el nuevo par agregado.
