# storageCellsCollection_add_setter_byType

**Módulo:** [STORAGE_CELLS_COLLECTION](../STORAGE_CELLS_COLLECTION.md)

## Descripción
Agrega un par clave-valor tipado con modo setter dinámico.

## Sintaxis
```
Funcion result_storage <- storageCellsCollection_add_setter_byType(struct_storage, value_cell, value_linear, TYPE_CELL, TYPE_LINEAR)
```

## Parámetros
- `struct_storage`: Estructura de almacenamiento
- `value_cell`: Clave
- `value_linear`: Valor
- `TYPE_CELL`: Tipo de la clave
- `TYPE_LINEAR`: Tipo del valor

## Retorna
La estructura con el nuevo par si no existía.
