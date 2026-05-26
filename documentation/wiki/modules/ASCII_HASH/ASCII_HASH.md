# ASCII_HASH

**Código:** #ASC
**Prefijo:** `ascii_`
**Estado:** [+] Stable

## Descripción

Módulo de manipulación de caracteres ASCII y generación de hashes. Proporciona funciones para convertir entre códigos ASCII y caracteres, clasificar caracteres por categorías (control, básico, número, operador, mayúsculas, especial, minúsculas, extra), extraer prefijos por categoría, y generar hashes DJB2 y DJB2-mini.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`ascii_char(code)`](functions/ascii_char.md) | Convierte código ASCII a caracter |
| [`ascii_ord(char)`](functions/ascii_ord.md) | Convierte caracter a código ASCII |
| [`ascii_hash_Mini_DBJ2(text)`](functions/ascii_hash_Mini_DBJ2.md) | Hash DJB2 mini (limitado) |
| [`ascii_hash_DBJ2(text)`](functions/ascii_hash_DBJ2.md) | Hash DJB2 completo |
| [`ascii_hash_mini_toString(text)`](functions/ascii_hash_mini_toString.md) | Hash mini como string |
| [`ascii_getOffSet_Category(index)`](functions/ascii_getOffSet_Category.md) | Offset de categoría ASCII |
| [`ascii_GetControlSymbols()`](functions/ascii_GetControlSymbols.md) | Símbolos de control (0-31) |
| [`ascii_GetBasicSymbols()`](functions/ascii_GetBasicSymbols.md) | Símbolos básicos (32-47) |
| [`ascii_GetNumberSymbols()`](functions/ascii_GetNumberSymbols.md) | Símbolos numéricos (48-57) |
| [`ascii_GetOperatorSymbols()`](functions/ascii_GetOperatorSymbols.md) | Operadores (58-64) |
| [`ascii_GetLetters_UpperCase()`](functions/ascii_GetLetters_UpperCase.md) | Mayúsculas (65-90) |
| [`ascii_GetSpecialSymbols()`](functions/ascii_GetSpecialSymbols.md) | Especiales (91-96) |
| [`ascii_GetLetters_LowerCase()`](functions/ascii_GetLetters_LowerCase.md) | Minúsculas (97-122) |
| [`ascii_GetExtraSymbols()`](functions/ascii_GetExtraSymbols.md) | Extra (123-127) |
| [`ascii_IsCategory(char, category)`](functions/ascii_IsCategory.md) | Verifica categoría |
| [`ascii_IsCategory_index(char, index)`](functions/ascii_IsCategory_index.md) | Categoría por índice |
| [`ascii_IsLetters(char)`](functions/ascii_IsLetters.md) | Es letra (may/min) |
| [`ascii_IsControlSymbols(char)`](functions/ascii_IsControlSymbols.md) | Es símbolo de control |
| [`ascii_IsBasicSymbols(char)`](functions/ascii_IsBasicSymbols.md) | Es símbolo básico |
| [`ascii_IsNumberSymbols(char)`](functions/ascii_IsNumberSymbols.md) | Es número |
| [`ascii_IsOperatorSymbols(char)`](functions/ascii_IsOperatorSymbols.md) | Es operador |
| [`ascii_IsLetters_UpperCase(char)`](functions/ascii_IsLetters_UpperCase.md) | Es mayúscula |
| [`ascii_IsSpecialSymbols(char)`](functions/ascii_IsSpecialSymbols.md) | Es especial |
| [`ascii_IsLetter_LowerCase(char)`](functions/ascii_IsLetter_LowerCase.md) | Es minúscula |
| [`ascii_IsExtraSymbols(char)`](functions/ascii_IsExtraSymbols.md) | Es extra |
| [`ascii_isInRangue(char, start, end)`](functions/ascii_isInRangue.md) | Verifica rango ASCII |
| [`ascii_getPrefix_alphabetic(text)`](functions/ascii_getPrefix_alphabetic.md) | Prefijo alfabético |
| [`ascii_getPrefix_Control(text)`](functions/ascii_getPrefix_Control.md) | Prefijo de control |
| [`ascii_getPrefix_Basic(text)`](functions/ascii_getPrefix_Basic.md) | Prefijo básico |
| [`ascii_getPrefix_Numbers(text)`](functions/ascii_getPrefix_Numbers.md) | Prefijo numérico |
| [`ascii_getPrefix_Operators(text)`](functions/ascii_getPrefix_Operators.md) | Prefijo operadores |
| [`ascii_getPrefix_Upper(text)`](functions/ascii_getPrefix_Upper.md) | Prefijo mayúsculas |
| [`ascii_getPrefix_Special(text)`](functions/ascii_getPrefix_Special.md) | Prefijo especiales |
| [`ascii_getPrefix_Lower(text)`](functions/ascii_getPrefix_Lower.md) | Prefijo minúsculas |
| [`ascii_getPrefix_Extra(text)`](functions/ascii_getPrefix_Extra.md) | Prefijo extra |
| [`ascii_getPrefix_Category_fromIndex(text, start, cat)`](functions/ascii_getPrefix_Category_fromIndex.md) | Prefijo por categoría desde índice |
| [`ascii_getEndIndex_Category(text, start, cat)`](functions/ascii_getEndIndex_Category.md) | Fin de categoría |
| [`ascii_getIndexCategory(name)`](functions/ascii_getIndexCategory.md) | Índice de categoría |
| [`ascii_CONTROL()`](functions/ascii_CONTROL.md) | Constante CONTROL |
| [`ascii_BASIC()`](functions/ascii_BASIC.md) | Constante BASIC |
| [`ascii_NUMBER()`](functions/ascii_NUMBER.md) | Constante NUMBER |
| [`ascii_OPERATOR()`](functions/ascii_OPERATOR.md) | Constante OPERATOR |
| [`ascii_ALPHABETIC_UPPER()`](functions/ascii_ALPHABETIC_UPPER.md) | Constante ALPHABETIC_UPPER |
| [`ascii_SPECIAL()`](functions/ascii_SPECIAL.md) | Constante SPECIAL |
| [`ascii_ALPHABETIC_LOWER()`](functions/ascii_ALPHABETIC_LOWER.md) | Constante ALPHABETIC_LOWER |
| [`ascii_EXTRA()`](functions/ascii_EXTRA.md) | Constante EXTRA |
| [`ascii_ALPHABETIC()`](functions/ascii_ALPHABETIC.md) | Constante ALPHABETIC |
| [`ascii_UNKNOWN_CATEGORY()`](functions/ascii_UNKNOWN_CATEGORY.md) | Constante UNKNOWN |
