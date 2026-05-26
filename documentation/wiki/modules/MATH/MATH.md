# MATH

**Código:** #MAT
**Prefijo:** `math_`
**Estado:** [+] Stable

## Descripción

Proporciona un conjunto completo de funciones matemáticas: aritmética básica (`math_increment`, `math_decrement`, `math_sum`, `math_minus`), comparación (`math_max_int`, `math_max_Float`, `math_min_int`, `math_min_float`), acotación de rangos (`math_rangeLimit_Int`, `math_rangeLimit_Float`), trigonometría mediante series de Taylor (`math_sin`, `math_cos`, `math_tan` y sus variantes en grados), logaritmos (`math_ln`, `math_log`), exponencial (`math_exp`), potencias (`math_pow`, `math_pow_float`), raíz cuadrada (`math_sqrt`), redondeo (`math_round`, `math_floor`, `math_truncate`, `math_limitDecimals`), módulo (`math_module`), absoluto (`math_abs`), negación (`math_negated`), división segura (`math_div`), factorial (`math_factorial`), signo (`math_signum`), constantes (`math_PI`, `math_2PI`, `math_EULER`, `math_PHI`, `math_EPSILON`), y normalización cíclica (`math_NormalizeCycle`). También incluye `math_Summation_ToFromSeparatedString` para sumar valores numéricos extraídos de una cadena separada.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`math_max_int()`](functions/math_max_int.md) | Returns the greater of two integers |
| [`math_max_Float()`](functions/math_max_Float.md) | Returns the greater of two floats |
| [`math_min_int()`](functions/math_min_int.md) | Returns the lesser of two integers |
| [`math_min_float()`](functions/math_min_float.md) | Returns the lesser of two floats |
| [`__private_math_choose()`](functions/__private_math_choose.md) | Internal: selects value or limit by comparison |
| [`math_rangeLimit_Float()`](functions/math_rangeLimit_Float.md) | Clamps a float within [min, max] |
| [`math_rangeLimit_Int()`](functions/math_rangeLimit_Int.md) | Clamps an integer within [min, max] |
| [`math_pow()`](functions/math_pow.md) | Exponentiation by squaring |
| [`math_pow_float()`](functions/math_pow_float.md) | Float exponentiation via log-exp |
| [`TAYLOR_SIN()`](functions/TAYLOR_SIN.md) | Constant identifier for Taylor sine |
| [`TAYLOR_COS()`](functions/TAYLOR_COS.md) | Constant identifier for Taylor cosine |
| [`TAYLOR_EXP()`](functions/TAYLOR_EXP.md) | Constant identifier for Taylor exponential |
| [`TAYLOR_LN()`](functions/TAYLOR_LN.md) | Constant identifier for Taylor natural log |
| [`__private_taylor_helper_sin()`](functions/__private_taylor_helper_sin.md) | Internal: Taylor term for sine |
| [`__private_taylor_helper_cos()`](functions/__private_taylor_helper_cos.md) | Internal: Taylor term for cosine |
| [`__private_taylor_helper_exp()`](functions/__private_taylor_helper_exp.md) | Internal: Taylor term for exponential |
| [`__private_taylor_helper_ln()`](functions/__private_taylor_helper_ln.md) | Internal: Taylor term for natural log |
| [`__private_taylor_operation()`](functions/__private_taylor_operation.md) | Internal: dispatches Taylor term by function name |
| [`math_serie_taylor()`](functions/math_serie_taylor.md) | Evaluates a Taylor series up to convergence |
| [`math_sin()`](functions/math_sin.md) | Computes sine of an angle in radians |
| [`math_cos()`](functions/math_cos.md) | Computes cosine of an angle in radians |
| [`math_tan()`](functions/math_tan.md) | Computes tangent of an angle in radians |
| [`math_Sin_DEG()`](functions/math_Sin_DEG.md) | Computes sine of an angle in degrees |
| [`math_cos_DEG()`](functions/math_cos_DEG.md) | Computes cosine of an angle in degrees |
| [`DEG_TO_RAD()`](functions/DEG_TO_RAD.md) | Converts degrees to radians |
| [`math_Normalize_InPiRange()`](functions/math_Normalize_InPiRange.md) | Normalizes angle into [-PI, PI] |
| [`math_bilinear_map()`](functions/math_bilinear_map.md) | Maps x to (x-1)/(x+1) for log computation |
| [`math_ln()`](functions/math_ln.md) | Computes natural logarithm |
| [`math_exp()`](functions/math_exp.md) | Computes exponential e^x |
| [`math_log()`](functions/math_log.md) | Computes logarithm with arbitrary base |
| [`math_sqrt()`](functions/math_sqrt.md) | Computes square root (Babylonian method) |
| [`math_Summation_ToFromSeparatedString()`](functions/math_Summation_ToFromSeparatedString.md) | Sums numeric values from a separated string |
| [`math_abs()`](functions/math_abs.md) | Computes absolute value |
| [`math_negated()`](functions/math_negated.md) | Negates a number |
| [`math_div()`](functions/math_div.md) | Safe division with zero-division error |
| [`math_factorial()`](functions/math_factorial.md) | Computes factorial |
| [`math_signum()`](functions/math_signum.md) | Returns sign of a number (-1, 0, 1) |
| [`math_numberIsPosive()`](functions/math_numberIsPosive.md) | Checks if number is non-negative |
| [`math_numberIsNegative()`](functions/math_numberIsNegative.md) | Checks if number is negative |
| [`math_round()`](functions/math_round.md) | Rounds a number to nearest integer |
| [`math_floor()`](functions/math_floor.md) | Computes floor of a number |
| [`math_truncate()`](functions/math_truncate.md) | Truncates decimal part of a number |
| [`math_limitDecimals()`](functions/math_limitDecimals.md) | Limits number to N decimal places |
| [`math_module()`](functions/math_module.md) | Computes modulo (remainder) |
| [`math_NormalizeCycle()`](functions/math_NormalizeCycle.md) | Normalizes a value into [0, max_limit) |
| [`math_PI()`](functions/math_PI.md) | Returns the constant PI |
| [`math_2PI()`](functions/math_2PI.md) | Returns 2 * PI |
| [`math_EULER()`](functions/math_EULER.md) | Returns Euler's number e |
| [`math_PHI()`](functions/math_PHI.md) | Returns the golden ratio PHI |
| [`math_EPSILON()`](functions/math_EPSILON.md) | Returns the epsilon value for convergence |
| [`math_increment()`](functions/math_increment.md) | Increments a number by 1 |
| [`math_sum()`](functions/math_sum.md) | Adds two numbers |
| [`math_decrement()`](functions/math_decrement.md) | Decrements a number by 1 |
| [`math_minus()`](functions/math_minus.md) | Subtracts two numbers |

## Ejemplo de Uso

```pseudocode
Algoritmo EjemploMath
    Escribir math_increment(5)
    Escribir math_max_int(3, 7)
    Escribir math_min_int(10, 4)
    Escribir math_rangeLimit_Int(15, 0, 10)
    Escribir math_abs(-8)
    Escribir math_negated(6)
    Escribir math_truncate(3.1415)
    Escribir math_limitDecimals(3.14159, 2)
    Escribir math_module(10, 3)
    Escribir math_sum(4, 5)
    Escribir math_minus(10, 3)
    Escribir math_decrement(9)
FinAlgoritmo
```
