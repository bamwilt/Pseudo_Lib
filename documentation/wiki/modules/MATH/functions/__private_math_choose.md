# __private_math_choose

**Módulo:** [MATH](..\MATH.md)

## Descripción

Internal helper that selects `value` or `limit` based on whether `isMax` is true and `value > limit`, or `isMax` is false and `value < limit`.

## Sintaxis
```pseudocode
Funcion result <- __private_math_choose(value, limit, isMax)
```

## Parámetros
- `value`: The candidate value
- `limit`: The reference limit
- `isMax`: If true, selects max; if false, selects min

## Retorna
`value` if it passes the selection criteria, otherwise `limit`.
