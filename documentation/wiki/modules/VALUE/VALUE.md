# VALUE

**Código:** #VAL
**Prefijo:** `value_`
**Estado:** [+] Stable

## Descripción

Módulo para la gestión y conversión de tipos de datos fundamentales (int, float, boolean, string). Proporciona funciones para transformar strings a tipos específicos, convertir valores a su representación textual, obtener valores nulos por tipo, validar nulidad, capturar valores nulos con mensajes de error, y modificar números incrustados en cadenas de texto mediante incremento, decremento y suma.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`value_stringToType()`](functions/value_stringToType.md) | Convierte un string al tipo especificado |
| [`value_TypeToString()`](functions/value_TypeToString.md) | Convierte un valor a su representación string |
| [`value_getNullType()`](functions/value_getNullType.md) | Retorna el valor nulo por defecto para un tipo |
| [`value_getNullType_toString()`](functions/value_getNullType_toString.md) | Retorna el string del valor nulo de un tipo |
| [`value_getValidstring_ofType()`](functions/value_getValidstring_ofType.md) | Valida que un string no sea nulo para un tipo |
| [`value_isNull()`](functions/value_isNull.md) | Verifica si un valor es nulo según su tipo |
| [`value_StringCatch_ofType()`](functions/value_StringCatch_ofType.md) | Captura un string y lo reemplaza si es nulo |
| [`value_catch_toString()`](functions/value_catch_toString.md) | Versión toString de value_catch |
| [`value_catch()`](functions/value_catch.md) | Captura un valor y lo reemplaza si es nulo |
| [`value_increment_StringNumber_inArea()`](functions/value_increment_StringNumber_inArea.md) | Incrementa un número dentro de un área de texto |
| [`value_decrement_StringNumber_inArea()`](functions/value_decrement_StringNumber_inArea.md) | Decrementa un número dentro de un área de texto |
| [`value_modify_StringNumber_inBetweenSymbols()`](functions/value_modify_StringNumber_inBetweenSymbols.md) | Modifica un número entre dos símbolos |
| [`value_modify_StringNumber_inBetweenSymbols_Last()`](functions/value_modify_StringNumber_inBetweenSymbols_Last.md) | Modifica el último número entre dos símbolos |
| [`value_modify_StringNumber_inArea()`](functions/value_modify_StringNumber_inArea.md) | Modifica un número en un área delimitada por índices |
| [`value_modify_StringNumber()`](functions/value_modify_StringNumber.md) | Suma un valor a un número representado como string |
| [`value_type_isValid()`](functions/value_type_isValid.md) | Verifica si un tipo es válido |

## Ejemplo de Uso

```pseudocode
Algoritmo Ejemplo_VALUE
    Definir num Como Entero;
    Definir texto Como Texto;
    Definir esValido Como Logico;
    
    // value_stringToType: convierte string al tipo indicado
    num <- value_stringToType("123", TYPE_INT());
    Escribir "Numero convertido: ", num;
    
    // value_TypeToString: convierte valor a su representacion string
    texto <- value_TypeToString(42, TYPE_INT());
    Escribir "Valor como texto: ", texto;
    
    // value_getNullType: obtiene el valor nulo de un tipo
    Definir nulo Como Entero;
    nulo <- value_getNullType(TYPE_INT());
    Escribir "Valor nulo int: ", nulo;
    
    // value_isNull: verifica si un valor es nulo para su tipo
    esValido <- value_isNull("", TYPE_STRING());
    Escribir "El string vacio es nulo? ", esValido;
    
    // value_type_isValid: verifica si un tipo es valido
    esValido <- value_type_isValid(TYPE_INT());
    Escribir "Tipo int es valido? ", esValido;
    esValido <- value_type_isValid("desconocido");
    Escribir "Tipo desconocido es valido? ", esValido;
    
    // value_modify_StringNumber: suma a un numero en string
    texto <- value_modify_StringNumber("5", 3);
    Escribir "5 + 3 = ", texto;
    
    // value_increment_StringNumber_inArea: incrementa numero en area
    texto <- value_increment_StringNumber_inArea("x10y", 2, 3);
    Escribir "Area incrementada: ", texto;
FinAlgoritmo
```
