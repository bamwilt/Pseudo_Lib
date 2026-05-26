# cellsCollection_indexOf_clearData

**Módulo:** [CELLS_COLLECTION](../CELLS_COLLECTION.md)

## Descripción
Encuentra el índice donde termina el dato real dentro de un bloque de celda, ignorando los caracteres nulos finales.

## Sintaxis
```
index_clear <- cellsCollection_indexOf_clearData(dataBlock, cell_length)
```

## Parámetros
- `dataBlock`: Texto con el bloque de datos de la celda
- `cell_length`: Número con la longitud de la celda

## Retorna
Número con el índice del último carácter no nulo + 1.
