# cellsCollection_Dynamic_ensureCapacity

**Módulo:** [CELLS_COLLECTION_DYNAMIC](../CELLS_COLLECTION_DYNAMIC.md)

## Descripción
Verifica si la longitud requerida supera la longitud de celda actual y, de ser así, redimensiona la colección.

## Sintaxis
```
result_cells <- cellsCollection_Dynamic_ensureCapacity(struct_cells, cell_length, required_length)
```

## Parámetros
- `struct_cells`: Texto con la estructura de celdas
- `cell_length`: Número con la longitud actual de celda
- `required_length`: Número con la longitud requerida

## Retorna
Texto con la estructura redimensionada si es necesario.
