# NATIVE

**Código:** #NAV
**Prefijo:** `native_`
**Estado:** [+] Stable

## Descripción

Proporciona wrappers directos sobre las funciones nativas/built-in de PSeInt. Abarca operaciones de string (`Longitud`, `Subcadena`, `Mayusculas`, `Minusculas`, `ConvertirATexto`, `ConvertirANumero`), matemáticas (`Trunc`, `Redon`, `Abs`, `Raiz`, `Sen`, `Cos`, `Tan`, `Ln`, `Exp`, potencias, módulo), entrada/salida por consola (`Escribir`, `Limpiar Pantalla`) y obtención de la hora local (`HoraActual`). Incluye validaciones de seguridad en `native_math_sqrt` (retorna 0 para negativos) y `native_math_ln` (retorna 0 para valores <= 0).

## Funciones

| Función | Descripción |
|---------|-------------|
| [`native_string_length()`](functions/native_string_length.md) | Retorna la longitud de un texto |
| [`native_number_ToString()`](functions/native_number_ToString.md) | Convierte un número a texto |
| [`native_string_substring()`](functions/native_string_substring.md) | Extrae una subcadena de un texto |
| [`native_string_ToUpperCase()`](functions/native_string_ToUpperCase.md) | Convierte un texto a mayúsculas |
| [`native_string_ToLowerCase()`](functions/native_string_ToLowerCase.md) | Convierte un texto a minúsculas |
| [`native_string_toNumber()`](functions/native_string_toNumber.md) | Convierte un texto a número |
| [`native_println()`](functions/native_println.md) | Imprime un texto con salto de línea |
| [`native_print()`](functions/native_print.md) | Imprime un texto sin salto de línea |
| [`native_clear_console()`](functions/native_clear_console.md) | Limpia la pantalla de la consola |
| [`native_math_truncate()`](functions/native_math_truncate.md) | Trunca un número a su parte entera |
| [`native_math_module()`](functions/native_math_module.md) | Retorna el módulo (resto) de una división |
| [`native_math_abs()`](functions/native_math_abs.md) | Retorna el valor absoluto de un número |
| [`native_math_round()`](functions/native_math_round.md) | Redondea un número al entero más cercano |
| [`native_math_sqrt()`](functions/native_math_sqrt.md) | Retorna la raíz cuadrada de un número |
| [`native_math_sin()`](functions/native_math_sin.md) | Retorna el seno de un ángulo en radianes |
| [`native_math_cos()`](functions/native_math_cos.md) | Retorna el coseno de un ángulo en radianes |
| [`native_math_tan()`](functions/native_math_tan.md) | Retorna la tangente de un ángulo en radianes |
| [`native_math_ln()`](functions/native_math_ln.md) | Retorna el logaritmo natural de un número |
| [`native_math_pow()`](functions/native_math_pow.md) | Retorna un número elevado a una potencia |
| [`native_math_exp()`](functions/native_math_exp.md) | Retorna el valor exponencial de un número |
| [`clear_Console()`](functions/clear_Console.md) | Limpia la pantalla de la consola (alias) |
| [`native_localTime_Now()`](functions/native_localTime_Now.md) | Retorna la hora actual como número |
| [`native_localTime_Now_toString()`](functions/native_localTime_Now_toString.md) | Retorna la hora actual como texto formateado |

## Ejemplo de Uso

```pseudocode
Algoritmo Ejemplo_NATIVE
    Definir texto, num, raiz Como Texto;
    Definir valor, longitud Como Numero;

    texto = "Hola Mundo";
    longitud = native_string_length(texto);
    native_println("Longitud: " + native_number_ToString(longitud));

    native_print("Texto en mayusculas: ");
    native_println(native_string_ToUpperCase(texto));

    valor = 16;
    raiz = native_number_ToString(native_math_sqrt(valor));
    native_println("Raiz cuadrada de 16: " + raiz);

    native_println("Seno de 0 radianes: " + native_number_ToString(native_math_sin(0)));

    native_println("Hora actual: " + native_localTime_Now_toString());
FinAlgoritmo
```
