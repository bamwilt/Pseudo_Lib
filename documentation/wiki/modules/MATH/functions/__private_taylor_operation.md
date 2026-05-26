# __private_taylor_operation

**Módulo:** [MATH](..\MATH.md)

## Descripción

Internal dispatcher that selects and computes the proper Taylor term based on the function name identifier (TAYLOR_SIN, TAYLOR_COS, TAYLOR_EXP, or TAYLOR_LN).

## Sintaxis
```pseudocode
Funcion numerical_term <- __private_taylor_operation(name_func, x, i)
```

## Parámetros
- `name_func`: Function identifier (from TAYLOR_SIN, TAYLOR_COS, TAYLOR_EXP, TAYLOR_LN)
- `x`: The input value
- `i`: The term index

## Retorna
The computed Taylor term for the selected function.
