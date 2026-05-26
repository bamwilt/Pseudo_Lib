# COLLECTION_STORAGE

**Código:** #CST
**Prefijo:** `collectionStorage_`
**Estado:** [+] Stable

## Descripción
Módulo de almacenamiento basado en cadenas de texto para colecciones lineales. Proporciona operaciones de inserción, eliminación, modificación y búsqueda de elementos dentro de una estructura serializada, gestionando tipos de datos mediante una notación interna de áreas (type, length, data, metadata).

## Funciones

| Función | Descripción |
|---------|-------------|
| [`collectionStorage_new()`](functions/collectionStorage_new.md) | Crea un nuevo setter de almacenamiento |
| [`collectionStorage_add_byString_force()`](functions/collectionStorage_add_byString_force.md) | Inserta un valor string en índices específicos |
| [`collectionStorage_add_byString()`](functions/collectionStorage_add_byString.md) | Añade un valor string al almacenamiento |
| [`collectionStorage_add_ByType()`](functions/collectionStorage_add_ByType.md) | Añade un valor tipado convertido a string |
| [`collectionStorage_add()`](functions/collectionStorage_add.md) | Añade un valor detectando automáticamente el tipo |
| [`collectionStorage_get_toString()`](functions/collectionStorage_get_toString.md) | Obtiene un elemento como string por índice |
| [`collectionStorage_get_toString_force()`](functions/collectionStorage_get_toString_force.md) | Obtiene un elemento como string con índices precalculados |
| [`collectionStorage_delete()`](functions/collectionStorage_delete.md) | Elimina un elemento por clave |
| [`collectionStorage_delete_ByType()`](functions/collectionStorage_delete_ByType.md) | Elimina un elemento tipado por clave |
| [`collectionStorage_delete_ByString()`](functions/collectionStorage_delete_ByString.md) | Elimina un elemento por clave string |
| [`__private_collectionStorage_deleteIndexed()`](functions/__private_collectionStorage_deleteIndexed.md) | Elimina un elemento en un índice interno |
| [`collectionStorage_GetInnerId()`](functions/collectionStorage_GetInnerId.md) | Obtiene el ID interno de una clave |
| [`collectionStorage_GetInnerId_ByType()`](functions/collectionStorage_GetInnerId_ByType.md) | Obtiene el ID interno por clave tipada |
| [`collectionStorage_GetInnerId_ByString()`](functions/collectionStorage_GetInnerId_ByString.md) | Obtiene el ID interno por clave string |
| [`collectionStorage_getType()`](functions/collectionStorage_getType.md) | Obtiene el tipo de datos almacenado |
| [`collectionStorage_getSize()`](functions/collectionStorage_getSize.md) | Obtiene la cantidad de elementos |
| [`collectionStorage_Exist()`](functions/collectionStorage_Exist.md) | Verifica si una clave existe |
| [`collectionStorage_Exist_ByString()`](functions/collectionStorage_Exist_ByString.md) | Verifica existencia por clave string |
| [`__private_collectionStorage_SearchIdKey()`](functions/__private_collectionStorage_SearchIdKey.md) | Busca el ID interno de una clave string |
| [`collectionStorage_modify()`](functions/collectionStorage_modify.md) | Modifica un elemento por índice |
| [`collectionStorage_modify_byString()`](functions/collectionStorage_modify_byString.md) | Modifica un elemento por índice con string |
| [`collectionStorage_AddAll()`](functions/collectionStorage_AddAll.md) | Añade todos los elementos de otra colección |
| [`collectionStorage_DeleteAll()`](functions/collectionStorage_DeleteAll.md) | Elimina todos los elementos coincidentes |
| [`collectionStorage_GetKeys_ToSeparatedString()`](functions/collectionStorage_GetKeys_ToSeparatedString.md) | Obtiene las claves como string separado |
| [`__private_collectionStorage_ModifyInnerData()`](functions/__private_collectionStorage_ModifyInnerData.md) | Modifica datos internos (añadir/eliminar lote) |
| [`collectionStorage_RetainAll()`](functions/collectionStorage_RetainAll.md) | Retiene solo los elementos coincidentes |
| [`__private_collectionStorage_IsEqualsData()`](functions/__private_collectionStorage_IsEqualsData.md) | Compara datos internos |
| [`collectionStorage_GetKeys_ToString()`](functions/collectionStorage_GetKeys_ToString.md) | Obtiene las claves como string simple |
| [`collectionStorage_println()`](functions/collectionStorage_println.md) | Imprime el almacenamiento con salto de línea |
| [`collectionStorage_print()`](functions/collectionStorage_print.md) | Imprime el almacenamiento sin salto de línea |
| [`__private_collectionStorage_printer()`](functions/__private_collectionStorage_printer.md) | Imprime los datos secuencialmente |
