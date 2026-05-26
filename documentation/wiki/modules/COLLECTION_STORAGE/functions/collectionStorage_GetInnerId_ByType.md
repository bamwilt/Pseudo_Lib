# collectionStorage_GetInnerId_ByType

**Módulo:** [COLLECTION_STORAGE](../COLLECTION_STORAGE.md)

## Descripción
Obtiene el ID interno de un elemento convirtiendo la clave al tipo especificado antes de la búsqueda.

## Sintaxis
```
innerIndex <- collectionStorage_GetInnerId_ByType(struct_storage, key, type)
```

## Parámetros
- `struct_storage`: Texto con la estructura de almacenamiento
- `key`: Clave del elemento a buscar
- `type`: Texto con el tipo de la clave

## Retorna
Número con el índice interno, o -1 si no se encuentra.
