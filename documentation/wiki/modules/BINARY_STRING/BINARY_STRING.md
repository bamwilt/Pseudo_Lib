# BINARY_STRING

**Código:** #BST
**Prefijo:** `binarystring_` / `bitChar_`
**Estado:** [+] Stable

## Descripción

Provides binary string manipulation including bitwise logical operations (AND, OR, XOR, NOT), binary arithmetic addition, left/right bit shifts, two's complement conversion, and conversion between binary strings and integers. Uses internal bitChar helpers for single-bit logic.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`binarystring_ToInt()`](functions/binarystring_ToInt.md) | Converts a binary string to an integer |
| [`binarystring_AND()`](functions/binarystring_AND.md) | Bitwise AND between two binary strings |
| [`binarystring_OR()`](functions/binarystring_OR.md) | Bitwise OR between two binary strings |
| [`binarystring_XOR()`](functions/binarystring_XOR.md) | Bitwise XOR between two binary strings |
| [`binarystring_NOT()`](functions/binarystring_NOT.md) | Bitwise NOT of a binary string |
| [`binarystring_LogicalOperations()`](functions/binarystring_LogicalOperations.md) | Dispatches bitwise logical operations by index |
| [`binarystring_GetPad_MaxSize()`](functions/binarystring_GetPad_MaxSize.md) | Generates a zero-pad string matching max length |
| [`bitChar_AND()`](functions/bitChar_AND.md) | AND of two single-bit characters |
| [`bitChar_OR()`](functions/bitChar_OR.md) | OR of two single-bit characters |
| [`bitChar_XOR()`](functions/bitChar_XOR.md) | XOR of two single-bit characters |
| [`bitChar_NOT()`](functions/bitChar_NOT.md) | NOT of a single-bit character |
| [`binarystring_MoveLeft()`](functions/binarystring_MoveLeft.md) | Shifts a binary string left by N positions |
| [`binarystring_MoveRight()`](functions/binarystring_MoveRight.md) | Shifts a binary string right by N positions |
| [`binarystring_SUM()`](functions/binarystring_SUM.md) | Adds two binary strings |
| [`binarystring_TwosComplement()`](functions/binarystring_TwosComplement.md) | Computes the two's complement of a binary string |
