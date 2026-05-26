# dualCellsCollection_validateFixedLength_Mode

**Módulo:** [DUAL_CELLS_COLLECTION](../DUAL_CELLS_COLLECTION.md)

## Descripción
Valida la longitud del elemento según el modo de celda especificado (fijo o setter valida la longitud; dinámico no).

## Sintaxis
```
Funcion isValidLength <- dualCellsCollection_validateFixedLength_Mode(element_string, cell_length, MODE, direction)
```

## Parámetros
- `element_string`: Elemento a validar
- `cell_length`: Longitud de celda
- `MODE`: Modo de celda (CELL_FIXED, CELL_SETTER, etc.)
- `direction`: Dirección para mensaje de error ("[LEFT]" o "[RIGHT]")

## Retorna
`Verdadero` si la validación pasa, `Falso` en caso contrario.
