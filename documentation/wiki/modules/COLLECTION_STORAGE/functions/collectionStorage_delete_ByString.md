# collectionStorage_delete_ByString

**Módulo:** [COLLECTION_STORAGE](../COLLECTION_STORAGE.md)

## Descripción
Elimina un elemento del almacenamiento buscando por su representación string. Si encuentra el elemento, lo elimina y decrementa el contador.

## Sintaxis
```
result_storage <- collectionStorage_delete_ByString(struct_storage, key)
```

## Parámetros
- `struct_storage`: Texto con la estructura de almacenamiento
- `key`: Texto con la clave del elemento a eliminar

## Retorna
Texto con la estructura sin el elemento eliminado.
