# NUMBER

**Código:** #NUM
**Prefijo:** `number_` / `int_` / `TYPE_` / `STRUCT_`
**Estado:** [+] Stable

## Descripción

Provides number manipulation utilities including type conversion (integer/float to string), comparison, range validation, binary bitwise operations, type constants, and structure type identifiers. Also includes utility functions for working with separated-string numeric lists and null-value representation.

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
