# ARRAY

**Código:** #ARR
**Prefijo:** `array_`
**Estado:** [+] Stable

## Descripción

Proporciona utilidades para manipulación y conversión de arreglos en PSeInt. Incluye funciones para obtener representaciones textuales de booleanos (`array_string_Booleans_True`/`False`), convertir arreglos a cadenas con separadores (`array_ofString`, `array_ofstring_separator`), buscar elementos por texto (`array_search_text`), encontrar el valor techo en un rango numérico (`array_int_getRangeCeil`), convertir arreglos QuickSort a string (`array_QuickSort_Num_toString`), generar diferencias entre dos arreglos (`array_ToDeltastring_ByComparation`) y realizar operaciones lógicas bit a bit (`array_bitChar_LogicalOperations`).

## Funciones

| Función | Descripción |
|---------|-------------|
| [`array_string_Booleans_False()`](functions/array_string_Booleans_False.md) | Devuelve representaciones textuales de "false" |
| [`array_string_Booleans_True()`](functions/array_string_Booleans_True.md) | Devuelve representaciones textuales de "true" |
| [`array_ofString()`](functions/array_ofString.md) | Convierte un arreglo a cadena con separador simple |
| [`array_ofstring_separator()`](functions/array_ofstring_separator.md) | Convierte un arreglo a cadena con separador personalizado |
| [`array_int_getRangeCeil()`](functions/array_int_getRangeCeil.md) | Obtiene el valor techo de un rango numérico |
| [`array_search_text()`](functions/array_search_text.md) | Busca un texto en el arreglo y devuelve su índice |
| [`array_QuickSort_Num_toString()`](functions/array_QuickSort_Num_toString.md) | Convierte arreglo numérico QuickSort a cadena |
| [`array_ToDeltastring_ByComparation()`](functions/array_ToDeltastring_ByComparation.md) | Genera cadena delta comparando dos arreglos |
| [`array_bitChar_LogicalOperations()`](functions/array_bitChar_LogicalOperations.md) | Realiza operaciones lógicas bit a bit |

## Ejemplo de Uso

```pseudocode
Algoritmo Ejemplo_ARRAY
    Definir numeros, i, tamano, indice Como Numero;
    Definir resultado_texto Como Texto;

    tamano = 5;
    Dimension numeros[tamano];
    numeros[0] = 9;
    numeros[1] = 3;
    numeros[2] = 7;
    numeros[3] = 1;
    numeros[4] = 5;

    resultado_texto = array_ofString(numeros, tamano, TYPE_INT());
    Escribir "Arreglo original: ", resultado_texto;

    resultado_texto = array_ofstring_separator(numeros, tamano, " | ", TYPE_INT());
    Escribir "Con separador personalizado: ", resultado_texto;

    indice = array_search_text(numeros, tamano, 7);
    Escribir "Indice del valor 7: ", indice;

    resultado_texto = array_QuickSort_Num_toString(numeros, tamano);
    Escribir "QuickSort a string: ", resultado_texto;

    Escribir "Verdadero en indice 0: ", array_string_Booleans_True(0);
    Escribir "Falso en indice 0: ", array_string_Booleans_False(0);
FinAlgoritmo
```
