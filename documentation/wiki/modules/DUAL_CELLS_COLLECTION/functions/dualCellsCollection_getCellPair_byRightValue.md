# dualCellsCollection_getCellPair_byRightValue

**Módulo:** [DUAL_CELLS_COLLECTION](../DUAL_CELLS_COLLECTION.md)

## Descripción
Obtiene el elemento del lado izquierdo correspondiente a un valor dado del lado derecho. Retorna el valor tipado según el tipo del lado izquierdo.

## Sintaxis
```
Funcion element_left <- dualCellsCollection_getCellPair_byRightValue(struct_cells, value_right)
```

## Parámetros
- `struct_cells`: Estructura de colección dual
- `value_right`: Valor del lado derecho a buscar

## Retorna
Valor izquierdo asociado, o `string_NULL()` si no se encuentra.
