# __private_collectionStorage_deleteIndexed

**Módulo:** [COLLECTION_STORAGE](../COLLECTION_STORAGE.md)

## Descripción
Elimina un elemento en un índice interno específico, manipulando directamente los datos secuenciales y longitudes.

## Sintaxis
```
result_storage <- __private_collectionStorage_deleteIndexed(struct_storage, index_lengthArea, index_target, count_size)
```

## Parámetros
- `struct_storage`: Texto con la estructura de almacenamiento
- `index_lengthArea`: Número con el índice del área de longitudes
- `index_target`: Número con el índice interno del elemento a eliminar
- `count_size`: Número con la cantidad de elementos actual

## Retorna
Texto con la estructura modificada.
