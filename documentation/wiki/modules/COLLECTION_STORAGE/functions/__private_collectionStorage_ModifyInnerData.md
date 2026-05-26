# __private_collectionStorage_ModifyInnerData

**Módulo:** [COLLECTION_STORAGE](../COLLECTION_STORAGE.md)

## Descripción
Función interna que itera sobre los elementos de una colección y los añade o elimina del almacenamiento según el flag `isDelete`.

## Sintaxis
```
result_storage <- __private_collectionStorage_ModifyInnerData(struct_storage, struct_storage_Match, isDelete)
```

## Parámetros
- `struct_storage`: Texto con la estructura de almacenamiento
- `struct_storage_Match`: Texto con la colección de referencia
- `isDelete`: Lógico que indica si se eliminan (verdadero) o añaden (falso)

## Retorna
Texto con la estructura modificada.
