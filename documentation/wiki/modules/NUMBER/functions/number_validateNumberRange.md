# number_validateNumberRange

**Módulo:** [NUMBER](..\NUMBER.md)

## Descripción

Validates that a numeric value falls within a specified range. If the value is out of range, logs an error with the function name and range limits. Also validates that min <= max.

## Sintaxis
```pseudocode
Funcion number_validateNumberRange(Function_name, value, min_val, max_val)
```

## Parámetros
- `Function_name`: Name of the calling function for error reporting
- `value`: The value to validate
- `min_val`: Minimum allowed value
- `max_val`: Maximum allowed value

## Retorna
Nothing. Logs an error if validation fails.
