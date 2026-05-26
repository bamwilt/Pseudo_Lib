# __private_cellsCollection_Dynamic_applyPadding

**Módulo:** [CELLS_COLLECTION_DYNAMIC](../CELLS_COLLECTION_DYNAMIC.md)

## Descripción
Aplica relleno (padding) de caracteres nulos a cada celda en un rango para aumentar su longitud.

## Sintaxis
```
result_Padding <- __private_cellsCollection_Dynamic_applyPadding(struct_cells, amount, index_endData, index_start, index_end, cell_length)
```

## Parámetros
- `struct_cells`: Texto con la estructura de celdas
- `amount`: Número con la cantidad de caracteres a añadir
- `index_endData`: Número con el índice de fin de datos
- `index_start`: Número con el índice inicial del rango
- `index_end`: Número con el índice final del rango
- `cell_length`: Número con la longitud actual de celda

## Retorna
Texto con las celdas con relleno aplicado.
