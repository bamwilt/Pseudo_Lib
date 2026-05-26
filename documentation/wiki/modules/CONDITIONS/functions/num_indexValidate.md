# num_indexValidate

**Módulo:** [CONDITIONS](..\CONDITIONS.md)

## Descripción

Checks whether start and end indices are valid for a string of a given length (within [0, max_length] and start <= end).

## Sintaxis
```pseudocode
Funcion isValid <- num_indexValidate(max_length, start, end)
```

## Parámetros
- `max_length`: The length of the string
- `start`: Start index
- `end`: End index

## Retorna
`true` if both indices are in range and start <= end, `false` otherwise.
