# collectionStorage_delete

**Módulo:** [COLLECTION_STORAGE](../COLLECTION_STORAGE.md)

## Descripción
Elimina un elemento del almacenamiento por su clave, detectando automáticamente el tipo de datos.

## Sintaxis
```
result_storage <- collectionStorage_delete(struct_storage, key)
```

## Parámetros
- `struct_storage`: Texto con la estructura de almacenamiento
- `key`: Clave del elemento a eliminar (tipo inferido)

## Retorna
Texto con la estructura sin el elemento eliminado.
