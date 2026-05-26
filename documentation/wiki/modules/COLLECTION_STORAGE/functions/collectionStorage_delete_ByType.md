# collectionStorage_delete_ByType

**Módulo:** [COLLECTION_STORAGE](../COLLECTION_STORAGE.md)

## Descripción
Elimina un elemento del almacenamiento convirtiendo la clave al tipo especificado antes de la eliminación.

## Sintaxis
```
result_storage <- collectionStorage_delete_ByType(struct_storage, key, TYPE)
```

## Parámetros
- `struct_storage`: Texto con la estructura de almacenamiento
- `key`: Clave del elemento a eliminar
- `TYPE`: Texto con el tipo de la clave

## Retorna
Texto con la estructura sin el elemento eliminado.
