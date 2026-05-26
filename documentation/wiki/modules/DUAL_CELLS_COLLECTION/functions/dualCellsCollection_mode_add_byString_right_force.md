# dualCellsCollection_mode_add_byString_right_force

**Módulo:** [DUAL_CELLS_COLLECTION](../DUAL_CELLS_COLLECTION.md)

## Descripción
Agrega un elemento al lado derecho con índices calculados, delegando según el modo (fijo, setter, dinámico, setter dinámico).

## Sintaxis
```
Funcion result_cells <- dualCellsCollection_mode_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length, MODE)
```

## Parámetros
- `struct_cells`: Estructura de colección dual
- `element_string`: Elemento a agregar
- `index_endData`: Índice de fin de datos
- `index_insert`: Índice de inserción
- `cell_length`: Longitud de celda
- `MODE`: Modo de inserción

## Retorna
La estructura con el elemento agregado según el modo.
