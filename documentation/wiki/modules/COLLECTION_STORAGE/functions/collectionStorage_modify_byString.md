# collectionStorage_modify_byString

**Módulo:** [COLLECTION_STORAGE](../COLLECTION_STORAGE.md)

## Descripción
Modifica un elemento en el almacenamiento por índice, insertando directamente el valor string y reemplazando los datos en el rango correspondiente.

## Sintaxis
```
result_storage <- collectionStorage_modify_byString(struct_storage, value_string, index_modify)
```

## Parámetros
- `struct_storage`: Texto con la estructura de almacenamiento
- `value_string`: Texto con el nuevo valor
- `index_modify`: Número con el índice interno a modificar

## Retorna
Texto con la estructura modificada.
