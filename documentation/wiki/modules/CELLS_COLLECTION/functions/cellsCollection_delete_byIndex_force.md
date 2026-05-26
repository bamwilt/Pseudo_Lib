# cellsCollection_delete_byIndex_force

**Módulo:** [CELLS_COLLECTION](../CELLS_COLLECTION.md)

## Descripción
Elimina un elemento con índices precalculados, evitando búsquedas adicionales.

## Sintaxis
```
result_cells <- cellsCollection_delete_byIndex_force(struct_cells, index, index_start, cell_length)
```

## Parámetros
- `struct_cells`: Texto con la estructura de celdas
- `index`: Número con el índice del elemento a eliminar
- `index_start`: Número con el índice de inicio de datos
- `cell_length`: Número con la longitud de celda

## Retorna
Texto con la estructura modificada.
