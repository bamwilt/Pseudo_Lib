# STRING

**Código:** #STR
**Prefijo:** `string_`
**Estado:** [+] Stable

## Descripción

Librería completa de manipulación de cadenas de texto. Incluye operaciones de concatenación, parseo (a número, booleano), medición de longitud, inserción y padding, eliminación, reemplazo, recorte (trim), cambio de mayúsculas/minúsculas, reversión, subcadenas, búsqueda de índices, conteo de ocurrencias, verificación de contención, comparaciones y detección de tipos (número, booleano, vacío, nulo).

## Funciones

| Función | Descripción |
|---------|-------------|
| [`string_append_withSeparator()`](functions/string_append_withSeparator.md) | Concatena dos textos con un separador |
| [`string_append()`](functions/string_append.md) | Concatena dos textos |
| [`string_append_in_brakelines()`](functions/string_append_in_brakelines.md) | Inserta un texto entre cada línea |
| [`string_append_in_separators()`](functions/string_append_in_separators.md) | Inserta un texto entre cada separador |
| [`string_toBoolean()`](functions/string_toBoolean.md) | Convierte un texto a booleano |
| [`string_toNumber()`](functions/string_toNumber.md) | Convierte un texto a número |
| [`string_length()`](functions/string_length.md) | Retorna la longitud de un texto |
| [`string_length_ToString()`](functions/string_length_ToString.md) | Retorna la longitud como texto |
| [`string_insert()`](functions/string_insert.md) | Inserta un texto en una posición dada |
| [`string_insert_withReplace()`](functions/string_insert_withReplace.md) | Inserta reemplazando el texto en la posición |
| [`string_insert_from_End()`](functions/string_insert_from_End.md) | Inserta un texto al final |
| [`string_pad_limitStart()`](functions/string_pad_limitStart.md) | Rellena con un texto al inicio hasta una longitud |
| [`string_pad_limitEnd()`](functions/string_pad_limitEnd.md) | Rellena con un texto al final hasta una longitud |
| [`string_pad()`](functions/string_pad.md) | Rellena un texto al inicio con un patrón |
| [`string_pad_end()`](functions/string_pad_end.md) | Rellena un texto al final con un patrón |
| [`string_fit()`](functions/string_fit.md) | Ajusta un texto a un patrón rellenando al inicio |
| [`string_fit_end()`](functions/string_fit_end.md) | Ajusta un texto a un patrón rellenando al final |
| [`string_repeatText()`](functions/string_repeatText.md) | Repite un texto N veces |
| [`string_delete()`](functions/string_delete.md) | Elimina un rango de caracteres |
| [`string_delete_From()`](functions/string_delete_From.md) | Elimina desde una posición hasta el final |
| [`string_replace()`](functions/string_replace.md) | Reemplaza todas las ocurrencias de un texto |
| [`string_replace_first()`](functions/string_replace_first.md) | Reemplaza la primera ocurrencia de un texto |
| [`string_replace_last()`](functions/string_replace_last.md) | Reemplaza la última ocurrencia de un texto |
| [`string_trim()`](functions/string_trim.md) | Elimina espacios al inicio y final |
| [`string_Strip()`](functions/string_Strip.md) | Elimina un símbolo al inicio y final |
| [`string_Strip_Left()`](functions/string_Strip_Left.md) | Elimina un símbolo al inicio |
| [`string_Strip_Right()`](functions/string_Strip_Right.md) | Elimina un símbolo al final |
| [`string_FindInterruption_Left()`](functions/string_FindInterruption_Left.md) | Encuentra el primer carácter que no sea el símbolo |
| [`string_FindInterruption_Right()`](functions/string_FindInterruption_Right.md) | Encuentra el último carácter que no sea el símbolo |
| [`string_TextReverse()`](functions/string_TextReverse.md) | Invierte un texto |
| [`string_toUpperCase()`](functions/string_toUpperCase.md) | Convierte un texto a mayúsculas |
| [`string_toLowerCase()`](functions/string_toLowerCase.md) | Convierte un texto a minúsculas |
| [`string_TextReverse_Caracters()`](functions/string_TextReverse_Caracters.md) | Invierte un texto reemplazando caracteres según un array |
| [`string_reverse_separated_values()`](functions/string_reverse_separated_values.md) | Invierte el orden de valores separados |
| [`string_substring()`](functions/string_substring.md) | Extrae una subcadena entre dos índices |
| [`string_substring_from()`](functions/string_substring_from.md) | Extrae una subcadena desde un índice |
| [`char_At()`](functions/char_At.md) | Retorna el carácter en una posición |
| [`string_indexOf()`](functions/string_indexOf.md) | Busca la primera aparición de un texto |
| [`string_indexOf_fromIndex()`](functions/string_indexOf_fromIndex.md) | Busca un texto desde un índice |
| [`string_lastIndexOf()`](functions/string_lastIndexOf.md) | Busca la última aparición de un texto |
| [`string_LastindexOf_fromIndex()`](functions/string_LastindexOf_fromIndex.md) | Busca un texto hacia atrás desde un índice |
| [`string_occurrences()`](functions/string_occurrences.md) | Cuenta las ocurrencias no solapadas de un texto |
| [`string_occurrences_overlap()`](functions/string_occurrences_overlap.md) | Cuenta las ocurrencias solapadas de un texto |
| [`string_countMatches()`](functions/string_countMatches.md) | Cuenta coincidencias de un patrón |
| [`string_countMatches_overlap()`](functions/string_countMatches_overlap.md) | Cuenta coincidencias solapadas de un patrón |
| [`string_contains()`](functions/string_contains.md) | Verifica si un texto contiene otro |
| [`string_struct_contains_ignoreCase()`](functions/string_struct_contains_ignoreCase.md) | Verifica si una estructura contiene un texto sin distinción |
| [`string_struct_contains()`](functions/string_struct_contains.md) | Verifica si una estructura contiene un texto |
| [`string_isEmpty()`](functions/string_isEmpty.md) | Verifica si un texto está vacío |
| [`string_isBlank()`](functions/string_isBlank.md) | Verifica si un texto contiene solo espacios |
| [`string_startsWith()`](functions/string_startsWith.md) | Verifica si un texto comienza con otro |
| [`string_endsWith()`](functions/string_endsWith.md) | Verifica si un texto termina con otro |
| [`string_isEquals()`](functions/string_isEquals.md) | Compara dos textos para igualdad |
| [`string_isEquals_ignoreCase()`](functions/string_isEquals_ignoreCase.md) | Compara dos textos ignorando mayúsculas |
| [`string_isNull()`](functions/string_isNull.md) | Verifica si un texto es nulo |
| [`string_isNumber()`](functions/string_isNumber.md) | Verifica si un texto representa un número |
| [`string_isNumber_int()`](functions/string_isNumber_int.md) | Verifica si un texto representa un entero |
| [`string_isNumber_float()`](functions/string_isNumber_float.md) | Verifica si un texto representa un flotante |
| [`string_isBoolean()`](functions/string_isBoolean.md) | Verifica si un texto representa un booleano |
| [`string_isBoolean_false()`](functions/string_isBoolean_false.md) | Verifica si un texto representa falso |
| [`string_isBoolean_true()`](functions/string_isBoolean_true.md) | Verifica si un texto representa verdadero |
| [`char_isNumber()`](functions/char_isNumber.md) | Verifica si un carácter es un dígito |
| [`string_NULL()`](functions/string_NULL.md) | Retorna el valor nulo para textos |
