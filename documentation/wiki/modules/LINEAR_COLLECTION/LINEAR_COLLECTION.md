# LINEAR_COLLECTION

**Código:** #LCL
**Prefijo:** `linearCollection_`
**Estado:** [+] Stable

## Descripción

Módulo que implementa una colección lineal (lista) sobre la estructura base de COLLECTION. Proporciona operaciones de inserción, eliminación, acceso y modificación de elementos en una secuencia ordenada con tipado dinámico.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`linearCollection_new()`](functions/linearCollection_new.md) | Crea una nueva colección lineal |
| [`linearCollection_addFirst()`](functions/linearCollection_addFirst.md) | Agrega un elemento al inicio |
| [`linearCollection_addLast()`](functions/linearCollection_addLast.md) | Agrega un elemento al final |
| [`linearCollection_addFirst_ByType()`](functions/linearCollection_addFirst_ByType.md) | Agrega al inicio con tipo explícito |
| [`linearCollection_addLast_ByType()`](functions/linearCollection_addLast_ByType.md) | Agrega al final con tipo explícito |
| [`linearCollection_addFirst_byString()`](functions/linearCollection_addFirst_byString.md) | Agrega un string al inicio |
| [`linearCollection_addLast_ByString()`](functions/linearCollection_addLast_ByString.md) | Agrega un string al final |
| [`linearCollection_DeleteElement()`](functions/linearCollection_DeleteElement.md) | Elimina un elemento por índice |
| [`linearCollection_DeleteFirst()`](functions/linearCollection_DeleteFirst.md) | Elimina el primer elemento |
| [`linearCollection_DeleteLast()`](functions/linearCollection_DeleteLast.md) | Elimina el último elemento |
| [`linearCollection_increment_numElement()`](functions/linearCollection_increment_numElement.md) | Incrementa el contador de elementos |
| [`linearCollection_decrement_numElement()`](functions/linearCollection_decrement_numElement.md) | Decrementa el contador de elementos |
| [`linearCollection_update_numElement()`](functions/linearCollection_update_numElement.md) | Actualiza el contador de elementos |
| [`linearCollection_getElement()`](functions/linearCollection_getElement.md) | Obtiene un elemento por índice |
| [`linearCollection_getFirst()`](functions/linearCollection_getFirst.md) | Obtiene el primer elemento |
| [`linearCollection_getLast()`](functions/linearCollection_getLast.md) | Obtiene el último elemento |
| [`linearCollection_getElement_toType()`](functions/linearCollection_getElement_toType.md) | Obtiene un elemento por índice con tipo |
| [`linearCollection_getLast_toType()`](functions/linearCollection_getLast_toType.md) | Obtiene el último elemento con tipo |
| [`linearCollection_getFirst_toType()`](functions/linearCollection_getFirst_toType.md) | Obtiene el primer elemento con tipo |
| [`linearCollection_getElement_toString()`](functions/linearCollection_getElement_toString.md) | Obtiene un elemento como string |
| [`linearCollection_getFirst_ToString()`](functions/linearCollection_getFirst_ToString.md) | Obtiene el primer elemento como string |
| [`linearCollection_getLast_ToString()`](functions/linearCollection_getLast_ToString.md) | Obtiene el último elemento como string |
| [`linearCollection_GetType()`](functions/linearCollection_GetType.md) | Obtiene el tipo de la colección |
| [`linearCollection_getSize()`](functions/linearCollection_getSize.md) | Obtiene el tamaño de la colección |
| [`linearCollection_GetValue_InnerIndex()`](functions/linearCollection_GetValue_InnerIndex.md) | Busca el índice interno de un valor |
| [`linearCollection_GetValues_ToSeparatedString()`](functions/linearCollection_GetValues_ToSeparatedString.md) | Convierte valores a string separado |
| [`linearCollection_getIndex_ExtraData()`](functions/linearCollection_getIndex_ExtraData.md) | Obtiene el índice del extraData |
| [`linearCollection_SetElement()`](functions/linearCollection_SetElement.md) | Establece un elemento por índice |
| [`linearCollection_SetElement_ToType()`](functions/linearCollection_SetElement_ToType.md) | Establece un elemento con tipo explícito |
| [`linearCollection_SetElement_ToString()`](functions/linearCollection_SetElement_ToString.md) | Establece un elemento como string |
| [`linearCollection_isEmpty()`](functions/linearCollection_isEmpty.md) | Verifica si la colección está vacía |
| [`linearCollection_IndexIsValid()`](functions/linearCollection_IndexIsValid.md) | Verifica si un índice es válido |
| [`linearCollection_println()`](functions/linearCollection_println.md) | Imprime la colección con salto de línea |
| [`linearCollection_print()`](functions/linearCollection_print.md) | Imprime la colección |
| [`__private_linearCollection_println()`](functions/__private_linearCollection_println.md) | Imprime datos de la colección internamente |
| [`linearCollection_getIndex_EndMetaData()`](functions/linearCollection_getIndex_EndMetaData.md) | Obtiene el índice final del metaData |
| [`__private_linearCollection_ModifyElement()`](functions/__private_linearCollection_ModifyElement.md) | Modifica un elemento internamente |
