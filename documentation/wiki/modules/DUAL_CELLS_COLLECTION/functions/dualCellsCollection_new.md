# dualCellsCollection_new

**Módulo:** [DUAL_CELLS_COLLECTION](../DUAL_CELLS_COLLECTION.md)

## Descripción
Crea una nueva colección de celdas dual con dos regiones de almacenamiento (izquierda y derecha), cada una con su propio tipo y longitud de celda.

## Sintaxis
```
Funcion new_cellsCollection <- dualCellsCollection_new(struct_name, TYPE, fixed_Length, TYPE_right, fixed_Length_two)
```

## Parámetros
- `struct_name`: Nombre de la estructura
- `TYPE`: Tipo de dato del lado izquierdo
- `fixed_Length`: Longitud de celda del lado izquierdo
- `TYPE_right`: Tipo de dato del lado derecho
- `fixed_Length_two`: Longitud de celda del lado derecho

## Retorna
Una nueva estructura de colección de celdas dual.
