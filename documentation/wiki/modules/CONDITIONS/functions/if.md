# if

**Módulo:** [CONDITIONS](..\CONDITIONS.md)

## Descripción

Conditionally returns a value based on a condition. If the condition is false, returns a typed null value instead.

## Sintaxis
```pseudocode
Funcion result <- if(condition, result, TYPE)
```

## Parámetros
- `condition`: The boolean condition to evaluate
- `result`: Value returned if condition is true
- `TYPE`: The type identifier for null value retrieval if condition is false

## Retorna
`result` if condition is true, otherwise the null value for the given type.
