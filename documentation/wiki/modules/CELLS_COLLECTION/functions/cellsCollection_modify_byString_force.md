# cellsCollection_modify_byString_force

**Módulo:** [CELLS_COLLECTION](../CELLS_COLLECTION.md)

## Descripción
Modifica un elemento string normalizando el valor a la longitud de bloque y reemplazando en la posición calculada.

## Sintaxis
```
result_cells <- cellsCollection_modify_byString_force(struct_cells, element_string, cells_index, cell_length)
```

## Parámetros
- `struct_cells`: Texto con la estructura de celdas
- `element_string`: Texto con el nuevo valor
- `cells_index`: Número con el índice absoluto de la celda
- `cell_length`: Número con la longitud de celda

## Retorna
Texto con la estructura modificada.
