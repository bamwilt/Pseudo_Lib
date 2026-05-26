# cellsCollection_setter_getIndex_byString_inRange_force

**Módulo:** [CELLS_COLLECTION_SETTER](../CELLS_COLLECTION_SETTER.md)

## Descripción
Obtiene el índice de un string en un rango con parámetros precalculados, recorriendo las celdas y comparando bloques normalizados.

## Sintaxis
```
index_cell <- cellsCollection_setter_getIndex_byString_inRange_force(struct_cells, element_string, index_start, index_end, index_data, cell_length)
```

## Parámetros
- `struct_cells`: Texto con la estructura de celdas
- `element_string`: Texto con el valor a buscar
- `index_start`: Número con el índice inicial del rango
- `index_end`: Número con el índice final del rango
- `index_data`: Número con el índice de inicio de datos
- `cell_length`: Número con la longitud de celda

## Retorna
Número con el índice del elemento, o -1 si no se encuentra.
