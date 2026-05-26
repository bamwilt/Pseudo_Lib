# __private_taylor_helper_exp

**Módulo:** [MATH](..\MATH.md)

## Descripción

Internal helper that computes the i-th Taylor series term for exp(x): x^i / i!.

## Sintaxis
```pseudocode
Funcion term <- __private_taylor_helper_exp(x, i)
```

## Parámetros
- `x`: The input value
- `i`: The term index (0-based)

## Retorna
The i-th Taylor term for the exponential series.
