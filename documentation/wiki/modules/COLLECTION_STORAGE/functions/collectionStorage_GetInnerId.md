# collectionStorage_GetInnerId

**Módulo:** [COLLECTION_STORAGE](../COLLECTION_STORAGE.md)

## Descripción
Obtiene el ID interno (índice) de un elemento dentro del almacenamiento detectando automáticamente el tipo.

## Sintaxis
```
innerIndex <- collectionStorage_GetInnerId(struct_storage, key)
```

## Parámetros
- `struct_storage`: Texto con la estructura de almacenamiento
- `key`: Clave del elemento a buscar

## Retorna
Número con el índice interno, o -1 si no se encuentra.
