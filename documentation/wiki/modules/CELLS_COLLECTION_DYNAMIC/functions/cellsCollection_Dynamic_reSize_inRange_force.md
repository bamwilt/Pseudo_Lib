# cellsCollection_Dynamic_reSize_inRange_force

**Módulo:** [CELLS_COLLECTION_DYNAMIC](../CELLS_COLLECTION_DYNAMIC.md)

## Descripción
Redimensiona celdas en un rango con parámetros precalculados, aplicando padding o cropping según el cambio.

## Sintaxis
```
result_cells <- cellsCollection_Dynamic_reSize_inRange_force(struct_cells, new_fixed_Length, index_start, index_end, index_endData, cell_length)
```

## Parámetros
- `struct_cells`: Texto con la estructura de celdas
- `new_fixed_Length`: Número con la nueva longitud
- `index_start`: Número con el índice inicial del rango
- `index_end`: Número con el índice final del rango
- `index_endData`: Número con el índice de fin de datos
- `cell_length`: Número con la longitud actual de celda

## Retorna
Texto con la estructura redimensionada.
