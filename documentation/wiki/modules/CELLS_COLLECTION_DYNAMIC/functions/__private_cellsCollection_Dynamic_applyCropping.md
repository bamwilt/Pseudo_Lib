# __private_cellsCollection_Dynamic_applyCropping

**Módulo:** [CELLS_COLLECTION_DYNAMIC](../CELLS_COLLECTION_DYNAMIC.md)

## Descripción
Aplica recorte (cropping) a cada celda en un rango, eliminando caracteres del final para reducir su longitud.

## Sintaxis
```
result_cells <- __private_cellsCollection_Dynamic_applyCropping(struct_cells, amount, index_endData, index_start, index_end, cell_length)
```

## Parámetros
- `struct_cells`: Texto con la estructura de celdas
- `amount`: Número con la cantidad de caracteres a eliminar
- `index_endData`: Número con el índice de fin de datos
- `index_start`: Número con el índice inicial del rango
- `index_end`: Número con el índice final del rango
- `cell_length`: Número con la longitud actual de celda

## Retorna
Texto con las celdas recortadas.
