# array_ToDeltastring_ByComparation

**Módulo:** [ARRAY](../ARRAY.md)

## Descripción

Genera una cadena delta que representa las diferencias entre dos arreglos. Soporta comparación de conjunto e inner join para identificar elementos presentes o ausentes.

## Sintaxis

```pseudocode
Funcion string_Delta <- array_ToDeltastring_ByComparation(array_Select, size_Select, array_Comparator, size_Comparator, IsInnerJoin)
```

## Parámetros

- `array_Select`: Arreglo de selección.
- `size_Select`: Tamaño del arreglo de selección.
- `array_Comparator`: Arreglo de comparación.
- `size_Comparator`: Tamaño del arreglo de comparación.
- `IsInnerJoin`: booleano que indica si es una operación de inner join (si es Verdadero, retorna elementos comunes; si es Falso, retorna elementos no comunes).

## Retorna

Una cadena de texto con los elementos delta separados por el símbolo separador.

## Ejemplo

```pseudocode

```
