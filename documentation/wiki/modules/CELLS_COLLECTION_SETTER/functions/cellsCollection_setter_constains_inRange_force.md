# cellsCollection_setter_constains_inRange_force

**Módulo:** [CELLS_COLLECTION_SETTER](../CELLS_COLLECTION_SETTER.md)

## Descripción
Verifica existencia de un string en un rango con parámetros precalculados.

## Sintaxis
```
constains_string <- cellsCollection_setter_constains_inRange_force(struct_cells, element_string, index_start, index_end, index_data, cell_length)
```

## Parámetros
- `struct_cells`: Texto con la estructura de celdas
- `element_string`: Texto con el valor a buscar
- `index_start`: Número con el índice inicial del rango
- `index_end`: Número con el índice final del rango
- `index_data`: Número con el índice de inicio de datos
- `cell_length`: Número con la longitud de celda

## Retorna
Lógico: verdadero si el elemento existe.
