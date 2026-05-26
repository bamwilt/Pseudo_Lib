# dualCellsCollection_Dynamic_ensureCapacity_left

**Módulo:** [DUAL_CELLS_COLLECTION](../DUAL_CELLS_COLLECTION.md)

## Descripción
Asegura que el lado izquierdo tenga capacidad suficiente para un elemento, redimensionando si es necesario (wrapper de `cellsCollection_Dynamic_ensureCapacity`).

## Sintaxis
```
Funcion result_cells <- dualCellsCollection_Dynamic_ensureCapacity_left(struct_cells, cell_length, required_length)
```

## Parámetros
- `struct_cells`: Estructura de colección dual
- `cell_length`: Longitud actual de celda
- `required_length`: Longitud requerida

## Retorna
La estructura con capacidad asegurada.
