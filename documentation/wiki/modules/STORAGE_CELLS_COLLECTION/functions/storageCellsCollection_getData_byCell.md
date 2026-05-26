# storageCellsCollection_getData_byCell

**Módulo:** [STORAGE_CELLS_COLLECTION](../STORAGE_CELLS_COLLECTION.md)

## Descripción
Obtiene el valor asociado a una clave, tipado según el tipo del almacenamiento.

## Sintaxis
```
Funcion value_result <- storageCellsCollection_getData_byCell(struct_storageCells, value_search)
```

## Parámetros
- `struct_storageCells`: Estructura de almacenamiento
- `value_search`: Clave a buscar

## Retorna
Valor asociado a la clave, o valor nulo si no existe.
