# __private_taylor_helper_ln

**Módulo:** [MATH](..\MATH.md)

## Descripción

Internal helper that computes the i-th Taylor series term for ln(1+x): (-1)^i * x^(i+1) / (i+1).

## Sintaxis
```pseudocode
Funcion term <- __private_taylor_helper_ln(x, i)
```

## Parámetros
- `x`: The input value
- `i`: The term index (0-based)

## Retorna
The i-th Taylor term for the natural log series.
