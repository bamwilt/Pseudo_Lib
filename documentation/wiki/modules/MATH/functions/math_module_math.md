# math_module

**Módulo:** [MATH](..\MATH.md)

## Descripción

Computes the modulo (remainder) of a division: dividend - truncate(dividend/divisor) * divisor. Ensures the divisor is at least 1.

## Sintaxis
```pseudocode
Funcion module <- math_module(dividend, divisor)
```

## Parámetros
- `dividend`: The number to divide
- `divisor`: The divisor (clamped to minimum 1)

## Retorna
The remainder of `dividend / divisor`.
