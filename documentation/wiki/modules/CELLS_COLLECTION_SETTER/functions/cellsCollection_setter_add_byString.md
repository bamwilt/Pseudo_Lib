# cellsCollection_setter_add_byString

**Módulo:** [CELLS_COLLECTION_SETTER](../CELLS_COLLECTION_SETTER.md)

## Descripción
Añade un string a la colección solo si no existe, verificando duplicados antes de insertar.

## Sintaxis
```
result_cells <- cellsCollection_setter_add_byString(struct_cells, element_string)
```

## Parámetros
- `struct_cells`: Texto con la estructura de celdas
- `element_string`: Texto con el valor a añadir

## Retorna
Texto con la estructura modificada o la original si ya existe.
