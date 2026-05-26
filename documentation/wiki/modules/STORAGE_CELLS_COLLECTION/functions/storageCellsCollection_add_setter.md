# storageCellsCollection_add_setter

**Módulo:** [STORAGE_CELLS_COLLECTION](../STORAGE_CELLS_COLLECTION.md)

## Descripción
Agrega un par clave-valor con modo setter dinámico (solo agrega si la clave no existe).

## Sintaxis
```
Funcion result_storage <- storageCellsCollection_add_setter(struct_storage, value_cell, value_linear)
```

## Parámetros
- `struct_storage`: Estructura de almacenamiento
- `value_cell`: Clave
- `value_linear`: Valor

## Retorna
La estructura con el nuevo par si no existía.
