# message_validateIndexRange

**Módulo:** [CONDITIONS](..\CONDITIONS.md)

## Descripción

Validates that start and end indices are within the bounds of a string and that start <= end. Logs an error if validation fails.

## Sintaxis
```pseudocode
Funcion message_validateIndexRange(Function_name, result_string, start, end)
```

## Parámetros
- `Function_name`: Name of the calling function for error reporting
- `result_string`: The string to validate indices against
- `start`: Start index
- `end`: End index

## Retorna
Nothing. Logs an error if indices are invalid.
