# BINARY_STRING

**Código:** #BST
**Prefijo:** `binarystring_` / `bitChar_`
**Estado:** [+] Stable

## Descripción

Proporciona manipulación de cadenas binarias: operaciones lógicas bit a bit (`binarystring_AND`, `OR`, `XOR`, `NOT`), suma binaria (`binarystring_SUM`), desplazamientos izquierda/derecha (`binarystring_MoveLeft`, `MoveRight`), complemento a dos (`binarystring_TwosComplement`), y conversión entre cadena binaria y entero (`binarystring_ToInt`). Utiliza funciones auxiliares `bitChar_*` para la lógica de un solo bit y normaliza las cadenas alineándolas con relleno de ceros.

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

## Ejemplo de Uso

```pseudocode
Algoritmo EjemploBinaryString
    Escribir binarystring_ToInt("1011")
    Escribir binarystring_AND("1010", "1100")
    Escribir binarystring_OR("1010", "1100")
    Escribir binarystring_XOR("1010", "1100")
    Escribir binarystring_NOT("1010")
    Escribir binarystring_ShiftLeft("1010", 2)
    Escribir binarystring_ShiftRight("1010", 2)
FinAlgoritmo
```
