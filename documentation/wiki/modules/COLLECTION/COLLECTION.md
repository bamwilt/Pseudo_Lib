# COLLECTION

**Código:** #CLL
**Prefijo:** `collection_`, `symbol_`
**Estado:** [+] Stable

## Descripción

Módulo base para la creación y manipulación de estructuras de datos serializadas. Define los símbolos de control internos y las operaciones fundamentales para acceder, modificar y consultar colecciones almacenadas como cadenas de texto estructuradas.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`symbol_Separator_Simple()`](functions/symbol_Separator_Simple.md) | Retorna el separador simple |
| [`symbol_Escape()`](functions/symbol_Escape.md) | Retorna el símbolo de escape ANSI |
| [`collection_new()`](functions/collection_new.md) | Crea una nueva colección |
| [`collection_Clear()`](functions/collection_Clear.md) | Limpia una colección |
| [`collection_isEmpty()`](functions/collection_isEmpty.md) | Verifica si una colección está vacía |
| [`collection_updateRange()`](functions/collection_updateRange.md) | Reemplaza un rango en la colección |
| [`collection_getNameCollection()`](functions/collection_getNameCollection.md) | Obtiene el nombre de la colección |
| [`collection_getContent_fromSymbol()`](functions/collection_getContent_fromSymbol.md) | Obtiene contenido desde un símbolo |
| [`collection_getContent_DataArea()`](functions/collection_getContent_DataArea.md) | Obtiene el área de datos |
| [`collection_getContent_TypeArea()`](functions/collection_getContent_TypeArea.md) | Obtiene el área de tipo |
| [`collection_getContent_TypeArea_End_Of_Text()`](functions/collection_getContent_TypeArea_End_Of_Text.md) | Obtiene el tipo hasta un texto final |
| [`collection_getContent_Between_Symbols()`](functions/collection_getContent_Between_Symbols.md) | Obtiene contenido entre dos símbolos |
| [`collection_getContent_Between_lastSymbols()`](functions/collection_getContent_Between_lastSymbols.md) | Obtiene contenido entre los últimos símbolos |
| [`collection_getIndex_typeArea()`](functions/collection_getIndex_typeArea.md) | Obtiene el índice del área de tipo |
| [`collection_getIndex_metaData()`](functions/collection_getIndex_metaData.md) | Obtiene el índice del metaData |
| [`collection_getIndex_dataArea()`](functions/collection_getIndex_dataArea.md) | Obtiene el índice del área de datos |
| [`collection_getIndex_FromNumElement()`](functions/collection_getIndex_FromNumElement.md) | Obtiene índice del separador por número de elemento |
| [`collection_getLastIndex_FromNumElement()`](functions/collection_getLastIndex_FromNumElement.md) | Obtiene el último índice por número de elemento |
| [`collection_getIndex_FromNumElement_Separator()`](functions/collection_getIndex_FromNumElement_Separator.md) | Obtiene índice con separador personalizado |
| [`collection_getLastIndex_FromNumElement_Separator()`](functions/collection_getLastIndex_FromNumElement_Separator.md) | Obtiene último índice con separador personalizado |
| [`collection_getElement_AtIndex()`](functions/collection_getElement_AtIndex.md) | Obtiene un elemento por índice |
| [`collection_getElement_AtIndex_withSeparator()`](functions/collection_getElement_AtIndex_withSeparator.md) | Obtiene un elemento por índice con separador |
| [`collection_replaceRange_between_symbols()`](functions/collection_replaceRange_between_symbols.md) | Reemplaza contenido entre símbolos |
| [`collection_replaceRange_between_lastSymbols()`](functions/collection_replaceRange_between_lastSymbols.md) | Reemplaza contenido entre los últimos símbolos |
| [`collection_replaceRange()`](functions/collection_replaceRange.md) | Reemplaza un rango en la colección |
| [`__private_collection_printer()`](functions/__private_collection_printer.md) | Imprime datos secuenciales con color |
| [`symbol_dataArea()`](functions/symbol_dataArea.md) | Retorna el símbolo de área de datos |
| [`symbol_typeArea()`](functions/symbol_typeArea.md) | Retorna el símbolo de área de tipo |
| [`symbol_metaData()`](functions/symbol_metaData.md) | Retorna el símbolo de metaData |
| [`symbol_Separator()`](functions/symbol_Separator.md) | Retorna el separador interno |
| [`symbol_Key_Value()`](functions/symbol_Key_Value.md) | Retorna el símbolo clave-valor |
| [`Collection_IndexIsValid()`](functions/Collection_IndexIsValid.md) | Verifica si un índice es válido |
| [`symbol_ExtraData()`](functions/symbol_ExtraData.md) | Retorna el símbolo de datos extra |
| [`symbol_lengthArea()`](functions/symbol_lengthArea.md) | Retorna el símbolo de área de longitud |
