# collectionStorage_GetInnerId_ByString

**Módulo:** [COLLECTION_STORAGE](../COLLECTION_STORAGE.md)

## Descripción
Obtiene el ID interno de un elemento buscando por su representación string.

## Sintaxis
```
innerIndex <- collectionStorage_GetInnerId_ByString(struct_storage, key)
```

## Parámetros
- `struct_storage`: Texto con la estructura de almacenamiento
- `key`: Texto con la clave del elemento a buscar

## Retorna
Número con el índice interno, o -1 si no se encuentra.
