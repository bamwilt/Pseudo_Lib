# binarystring_GetPad_MaxSize

**Módulo:** [BINARY_STRING](..\BINARY_STRING.md)

## Descripción

Creates a zero-pad string whose length equals the maximum length of two input binary strings. Used internally to normalize binary strings before bitwise operations.

## Sintaxis
```pseudocode
Funcion binaryPad <- binarystring_GetPad_MaxSize(binaryString1, binaryString2)
```

## Parámetros
- `binaryString1`: First binary string
- `binaryString2`: Second binary string

## Retorna
A string of zeros with length equal to `max(len(binaryString1), len(binaryString2))`.
