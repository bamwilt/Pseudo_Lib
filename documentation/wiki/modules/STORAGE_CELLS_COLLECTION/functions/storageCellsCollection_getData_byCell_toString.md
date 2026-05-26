# storageCellsCollection_getData_byCell_toString

**Módulo:** [STORAGE_CELLS_COLLECTION](../STORAGE_CELLS_COLLECTION.md)

## Descripción
Obtiene el valor asociado a una clave como string, realizando la búsqueda inversa en la estructura.

## Sintaxis
```
Funcion value_string <- storageCellsCollection_getData_byCell_toString(struct_storageCells, value_search)
```

## Parámetros
- `struct_storageCells`: Estructura de almacenamiento
- `value_search`: Clave a buscar

## Retorna
String del valor asociado, o `string_NULL()` si no existe.
