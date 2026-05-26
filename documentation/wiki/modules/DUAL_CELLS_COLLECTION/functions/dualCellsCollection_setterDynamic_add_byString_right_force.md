# dualCellsCollection_setterDynamic_add_byString_right_force

**Módulo:** [DUAL_CELLS_COLLECTION](../DUAL_CELLS_COLLECTION.md)

## Descripción
Agrega un elemento al lado derecho con modo setter dinámico: solo agrega si no existe y redimensiona si es necesario.

## Sintaxis
```
Funcion result_cells <- dualCellsCollection_setterDynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length)
```

## Parámetros
- `struct_cells`: Estructura de colección dual
- `element_string`: Elemento a agregar
- `index_endData`: Índice de fin de datos
- `index_insert`: Índice de inserción
- `cell_length`: Longitud de celda

## Retorna
La estructura con el elemento agregado si no existía.
