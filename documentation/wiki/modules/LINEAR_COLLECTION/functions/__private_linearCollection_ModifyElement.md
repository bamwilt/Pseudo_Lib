# __private_linearCollection_ModifyElement

**Módulo:** [LINEAR_COLLECTION](../LINEAR_COLLECTION.md)

## Descripción

Función privada que modifica un elemento de la colección extrayendo las áreas de datos y longitudes, modificando con managerData_modify y reemplazando el rango en la colección.

## Sintaxis

```pseudocode
Funcion collection_result <- __private_linearCollection_ModifyElement(struct_linearCollection, index_modify, value_string)
```

## Parámetros

- `struct_linearCollection`: Colección original
- `index_modify`: Índice del elemento a modificar
- `value_string`: Nuevo valor string (string_NULL para eliminar)

## Retorna

Colección con el elemento modificado.
