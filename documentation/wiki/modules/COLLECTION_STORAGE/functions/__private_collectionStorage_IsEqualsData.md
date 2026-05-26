# __private_collectionStorage_IsEqualsData

**Módulo:** [COLLECTION_STORAGE](../COLLECTION_STORAGE.md)

## Descripción
Compara si un segmento de datos dentro de la estructura coincide exactamente con una clave dada.

## Sintaxis
```
isDataValid <- __private_collectionStorage_IsEqualsData(struct_storage, key, size, index)
```

## Parámetros
- `struct_storage`: Texto con la estructura de almacenamiento
- `key`: Texto con la clave a comparar
- `size`: Número con el tamaño del segmento
- `index`: Número con el índice de inicio del segmento

## Retorna
Lógico: verdadero si los datos coinciden.
