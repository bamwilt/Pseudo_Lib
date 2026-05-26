# int_getRangeCeil_ToFromSeparatedString

**Módulo:** [NUMBER](..\NUMBER.md)

## Descripción

Searches a separated string of numbers and returns the first numeric value that is greater than or equal to the given number.

## Sintaxis
```pseudocode
Funcion num_range <- int_getRangeCeil_ToFromSeparatedString(num, list_Str)
```

## Parámetros
- `num`: The threshold value to compare against
- `list_Str`: A string containing numbers separated by non-numeric characters

## Retorna
The first number found in `list_Str` that is >= `num`.
