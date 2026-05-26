# cellsCollection_setter_getIndex_byString_inRange

**Módulo:** [CELLS_COLLECTION_SETTER](../CELLS_COLLECTION_SETTER.md)

## Descripción
Obtiene el índice de un string dentro de un rango específico de índices.

## Sintaxis
```
index_cell <- cellsCollection_setter_getIndex_byString_inRange(struct_cells, element_string, index_start, index_end)
```

## Parámetros
- `struct_cells`: Texto con la estructura de celdas
- `element_string`: Texto con el valor a buscar
- `index_start`: Número con el índice inicial del rango
- `index_end`: Número con el índice final del rango

## Retorna
Número con el índice del elemento, o -1 si no se encuentra.
