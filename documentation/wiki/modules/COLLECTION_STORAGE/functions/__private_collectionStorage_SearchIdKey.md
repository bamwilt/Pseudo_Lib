# __private_collectionStorage_SearchIdKey

**Módulo:** [COLLECTION_STORAGE](../COLLECTION_STORAGE.md)

## Descripción
Busca el ID interno de una clave string dentro de los datos secuenciales del almacenamiento.

## Sintaxis
```
key_id <- __private_collectionStorage_SearchIdKey(struct_storage, key_string, collection_size)
```

## Parámetros
- `struct_storage`: Texto con la estructura de almacenamiento
- `key_string`: Texto con la clave a buscar
- `collection_size`: Número con el tamaño de la colección

## Retorna
Número con el ID interno encontrado, o -1 si no existe.
