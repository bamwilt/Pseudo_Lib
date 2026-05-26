# math_NormalizeCycle

**Módulo:** [MATH](..\MATH.md)

## Descripción

Normalizes a cyclic value into the range [0, max_limit) using modulo arithmetic. Handles negative values by adding max_limit.

## Sintaxis
```pseudocode
Funcion value_normalized <- math_NormalizeCycle(current_value, max_limit)
```

## Parámetros
- `current_value`: The cyclic value to normalize
- `max_limit`: The upper bound (exclusive)

## Retorna
The normalized value in [0, max_limit).
