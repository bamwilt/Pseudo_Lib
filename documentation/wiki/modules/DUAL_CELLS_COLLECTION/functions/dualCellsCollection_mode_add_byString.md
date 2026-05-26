# dualCellsCollection_mode_add_byString

**Módulo:** [DUAL_CELLS_COLLECTION](../DUAL_CELLS_COLLECTION.md)

## Descripción
Agrega un par de strings usando los modos de inserción. Primero agrega el derecho y si hay cambio, agrega el izquierdo e incrementa el contador.

## Sintaxis
```
Funcion result_cells <- dualCellsCollection_mode_add_byString(struct_cells, element_string_left, MODE, element_string_right, MODE_TWO)
```

## Parámetros
- `struct_cells`: Estructura de colección dual
- `element_string_left`: String del lado izquierdo
- `MODE`: Modo de inserción izquierdo
- `element_string_right`: String del lado derecho
- `MODE_TWO`: Modo de inserción derecho

## Retorna
La estructura con el par agregado.
