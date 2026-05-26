# __private_taylor_helper_cos

**Módulo:** [MATH](..\MATH.md)

## Descripción

Internal helper that computes the i-th Taylor series term for cos(x): (-1)^i * x^(2i) / (2i)!.

## Sintaxis
```pseudocode
Funcion term <- __private_taylor_helper_cos(x, i)
```

## Parámetros
- `x`: The input value
- `i`: The term index (0-based)

## Retorna
The i-th Taylor term for the cosine series.
