# NUMBER

**Código:** #NUM
**Prefijo:** `number_` / `int_` / `TYPE_` / `STRUCT_`
**Estado:** [+] Stable

## Descripción

Proporciona utilidades de manipulación numérica: conversión a texto con validación de tipo (`interger_ToString`, `float_ToString`), comparación (`int_CompareTo`, `number_isEquals`), validación de rango (`number_validateNumberRange`, `number_IsInRange`), operaciones binarias a nivel de bits (`int_bitSum`, `int_ToBinaryString`, `Int_BitMoveLeft/Right`), constantes de tipo (`TYPE_INT`, `TYPE_FLOAT`, `TYPE_BOOLEAN`, etc.), constantes de tipo de estructura (`STRUCT_TYPE_LIST`, `STRUCT_TYPE_MAP`, etc.), y valor nulo numérico (`number_NULL`). También incluye `int_getRangeCeil_ToFromSeparatedString` para buscar el primer valor >= un límite en una cadena separada.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`number_toString()`](functions/number_toString.md) | Converts a number to its string representation |
| [`int_getRangeCeil_ToFromSeparatedString()`](functions/int_getRangeCeil_ToFromSeparatedString.md) | Gets the first value >= num from a separated string |
| [`int_CompareTo()`](functions/int_CompareTo.md) | Compares two numbers, returns -1, 0, or 1 |
| [`Num_isInterger()`](functions/Num_isInterger.md) | Checks if a number is an integer |
| [`interger_ToString()`](functions/interger_ToString.md) | Converts a number to string with integer validation |
| [`float_ToString()`](functions/float_ToString.md) | Converts a number to string with float validation |
| [`int_bitSum()`](functions/int_bitSum.md) | Adds two integers via binary bitwise operations |
| [`int_ToBinaryString()`](functions/int_ToBinaryString.md) | Converts integer to binary string |
| [`Int_BitMoveLeft()`](functions/Int_BitMoveLeft.md) | Shifts integer bits left |
| [`Int_BitMoveRight()`](functions/Int_BitMoveRight.md) | Shifts integer bits right |
| [`number_isEquals()`](functions/number_isEquals.md) | Checks equality of two numbers |
| [`number_validateNumberRange()`](functions/number_validateNumberRange.md) | Validates a value is within a range |
| [`number_IsInRange()`](functions/number_IsInRange.md) | Checks if a value falls within a range |
| [`TYPE_STRING()`](functions/TYPE_STRING.md) | Returns the "string" type constant |
| [`TYPE_INT()`](functions/TYPE_INT.md) | Returns the "int" type constant |
| [`TYPE_FLOAT()`](functions/TYPE_FLOAT.md) | Returns the "float" type constant |
| [`TYPE_BOOLEAN()`](functions/TYPE_BOOLEAN.md) | Returns the "boolean" type constant |
| [`TYPE_OBJECT()`](functions/TYPE_OBJECT.md) | Returns the "object" type constant |
| [`number_NULL()`](functions/number_NULL.md) | Returns the numeric null value (-1) |
| [`STRUCT_TYPE_LIST()`](functions/STRUCT_TYPE_LIST.md) | Returns the "list" structure type constant |
| [`STRUCT_TYPE_MAP()`](functions/STRUCT_TYPE_MAP.md) | Returns the "map" structure type constant |
| [`STRUCT_TYPE_SET()`](functions/STRUCT_TYPE_SET.md) | Returns the "set" structure type constant |
| [`STRUCT_TYPE_QUEUE()`](functions/STRUCT_TYPE_QUEUE.md) | Returns the "queue" structure type constant |
| [`STRUCT_TYPE_STACK()`](functions/STRUCT_TYPE_STACK.md) | Returns the "stack" structure type constant |
| [`STRUCT_TYPE_DEQUE()`](functions/STRUCT_TYPE_DEQUE.md) | Returns the "deque" structure type constant |

## Ejemplo de Uso

```pseudocode
Algoritmo EjemploNumber
    Definir texto Como Texto
    texto = number_toString(42)
    Escribir texto
    
    Si number_IsInRange(5, 1, 10) Entonces
        Escribir "5 está entre 1 y 10"
    FinSi
    
    number_validateNumberRange("miFuncion", 15, 0, 10)
    
    Escribir TYPE_INT()
    Escribir number_NULL()
    
    Si number_isEquals(3.14, 3.14) Entonces
        Escribir "Son iguales"
    FinSi
FinAlgoritmo
```
