# collectionStorage_DeleteAll

**Módulo:** [COLLECTION_STORAGE](../COLLECTION_STORAGE.md)

## Descripción
Elimina todos los elementos del almacenamiento que coinciden con los de otra colección.

## Sintaxis
```
result_storage <- collectionStorage_DeleteAll(struct_storage, struct_storage_Match)
```

## Parámetros
- `struct_storage`: Texto con la estructura de almacenamiento
- `struct_storage_Match`: Texto con la colección de elementos a eliminar

## Retorna
Texto con la estructura sin los elementos eliminados.
