# cellsCollection_calcule_indexBlock

**Módulo:** [CELLS_COLLECTION](../CELLS_COLLECTION.md)

## Descripción
Calcula la posición absoluta de un bloque (celda) dentro de la estructura a partir del índice de inicio y el tamaño de celda.

## Sintaxis
```
cells_index <- cellsCollection_calcule_indexBlock(index_start, index_search, cell_length)
```

## Parámetros
- `index_start`: Número con el índice de inicio de datos
- `index_search`: Número con el índice del elemento a localizar
- `cell_length`: Número con la longitud de cada celda

## Retorna
Número con la posición absoluta del bloque.
