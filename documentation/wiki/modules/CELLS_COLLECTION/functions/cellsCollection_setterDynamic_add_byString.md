# cellsCollection_setterDynamic_add_byString

**Módulo:** [CELLS_COLLECTION](../CELLS_COLLECTION.md)

## Descripción
Añade un string solo si no existe en la colección, utilizando redimensión dinámica y verificación de duplicados.

## Sintaxis
```
result_cells <- cellsCollection_setterDynamic_add_byString(struct_cells, element_string)
```

## Parámetros
- `struct_cells`: Texto con la estructura de celdas
- `element_string`: Texto con el valor a añadir

## Retorna
Texto con la estructura modificada o la original si ya existe.
