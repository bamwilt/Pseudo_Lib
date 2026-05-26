# __private_taylor_helper_sin

**Módulo:** [MATH](..\MATH.md)

## Descripción

Internal helper that computes the i-th Taylor series term for sin(x): (-1)^i * x^(2i+1) / (2i+1)!.

## Sintaxis
```pseudocode
Funcion term <- __private_taylor_helper_sin(x, i)
```

## Parámetros
- `x`: The input value
- `i`: The term index (0-based)

## Retorna
The i-th Taylor term for the sine series.
