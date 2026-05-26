# binarystring_LogicalOperations

**Módulo:** [BINARY_STRING](..\BINARY_STRING.md)

## Descripción

Internal dispatcher that applies a bitwise logical operation (AND, OR, XOR, NOT) to two binary strings based on an index parameter.

## Sintaxis
```pseudocode
Funcion binarystring_Result <- binarystring_LogicalOperations(binaryString1, binaryString2, index)
```

## Parámetros
- `binaryString1`: First binary string
- `binaryString2`: Second binary string (ignored for NOT)
- `index`: Operation selector (0=AND, 1=OR, 2=XOR, else NOT)

## Retorna
The resulting binary string after the selected operation.
