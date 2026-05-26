# collectionStorage_add_byString_force

**Módulo:** [COLLECTION_STORAGE](../COLLECTION_STORAGE.md)

## Descripción
Inserta un valor string en el almacenamiento en índices específicos de longitud y datos, forzando la posición de inserción.

## Sintaxis
```
result_storage <- collectionStorage_add_byString_force(struct_storage, value_string, index_lenght, index_data)
```

## Parámetros
- `struct_storage`: Texto con la estructura de almacenamiento
- `value_string`: Texto con el valor a insertar
- `index_lenght`: Número con el índice donde insertar la longitud
- `index_data`: Número con el índice donde insertar los datos

## Retorna
Texto con la estructura modificada.
