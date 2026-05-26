# math_rangeLimit_Int

**Módulo:** [MATH](..\MATH.md)

## Descripción

Clamps an integer value within an inclusive range [min, max].

## Sintaxis
```pseudocode
Funcion result <- math_rangeLimit_Int(value, limit_min, limit_max)
```

## Parámetros
- `value`: The value to clamp
- `limit_min`: Lower bound
- `limit_max`: Upper bound

## Retorna
`limit_min` if value < min, `limit_max` if value > max, otherwise `value`.
