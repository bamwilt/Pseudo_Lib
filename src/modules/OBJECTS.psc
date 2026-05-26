Algoritmo MODULE_OBJECTS
	// Test call disabled: object_Empty() requires arguments
	// TODO: add valid arguments for standalone execution
FinAlgoritmo
///%%%%%[ OBJECTS............................. ]%%%%%%%[   #OBJ    ]%%%%%%%%%%%%%%%%%%%%

Funcion result_string <- object_Empty(type_Name)
	Definir result_string Como Texto;
	result_string = object_new(type_Name);
FinFuncion

Funcion result_string <- object_ToString(object_str, TYPE)
	Definir result_string Como Texto;
	Definir object_isValid Como Logico;
	object_isValid = object_isType(object_str, TYPE);
	si object_isValid Entonces
		result_string = object_str;
	SiNo
		result_string = object_new(TYPE);
		error_message_Function("object_ToString", string_append_withSeparator(TYPE, object_str, " // type no valid .        . "));
	FinSi
FinFuncion

Funcion symbol_char <- symbol_ObjectSeparator
	Definir symbol_char Como Texto;
	symbol_char = ".";
FinFuncion

Funcion object_result <- object_new(name_object)
	Definir object_result Como Texto;
	object_result = linearCollection_new(TYPE_OBJECT(), string_append(name_object, symbol_ExtraData()));
FinFuncion

Funcion object_result <- object_Property_Add(struct_Object, property_name, TYPE)
	Definir object_result Como Texto;
	object_result = object_Property_Add_GiveValue(struct_Object, property_name, value_getNullType(TYPE), TYPE);
FinFuncion

Funcion object_result <- object_Property_Add_GiveValue(struct_Object, property_name, value, TYPE)
	Definir object_result, new_Data, property_lowerCase Como Texto;
	Si object_Property_Exist(struct_Object, property_name) Entonces
		object_result = struct_Object;
		error_message_Function("object_Property_Add_GiveValue", string_append("property exist :", property_name));
	SiNo
		property_lowerCase = string_ToLowerCase(property_name);
		new_Data = string_append_withSeparator(property_lowerCase, TYPE, symbol_Key_Value());
		new_Data = string_append(new_Data, symbol_Separator());
		object_result = string_insert(struct_Object, new_Data, math_increment(string_indexOf(struct_Object, symbol_ExtraData())));
		object_result = linearCollection_addLast_ByType(object_result, value, TYPE);
	FinSi
FinFuncion

Funcion element_Result <- object_Property_GetValue(struct_Object, property_name)
	Definir TYPE, data_Inner Como Texto;
	Definir index_innerObject, center_info Como Numero;
	index_innerObject = string_indexOf(property_name, symbol_ObjectSeparator());
	si index_innerObject > 0 Entonces
		data_Inner = __private_object_Property_GetData(struct_Object, property_name, index_innerObject);
		center_info = string_indexOf(data_Inner, symbol_ExtraData());
		property_name = string_substring(data_Inner, 0, center_info);
		struct_Object = string_substring_from(data_Inner, math_increment(center_info));
	FinSi
	
	TYPE = object_Property_GetType(struct_Object, property_name);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = value_stringToType(object_Property_GetValue_toString(struct_Object, property_name), TYPE);
FinFuncion

Funcion property_Value  <- object_Property_GetValue_toString(struct_Object, property_name)
	Definir property_Value, data_Inner Como Texto;
	Definir index_innerObject, center_info Como Numero;
	index_innerObject = string_indexOf(property_name, symbol_ObjectSeparator());
	si index_innerObject > 0 Entonces
		data_Inner = __private_object_Property_GetData(struct_Object, property_name, index_innerObject);
		center_info = string_indexOf(data_Inner, symbol_ExtraData());
		property_name = string_substring(data_Inner, 0, center_info);
		struct_Object = string_substring_from(data_Inner, math_increment(center_info));
	FinSi
	
	si object_Property_Exist(struct_Object, property_name) Entonces
		property_Value = linearCollection_getElement_toString(struct_Object, object_Property_GetInnerIndex(struct_Object, property_name));
	FinSi
FinFuncion

Funcion object_Data <- __private_object_Property_GetData(struct_Object, property_name, index_innerObject)
	Definir object_Data, Innerobject_info, property_search Como Texto;
	Mientras index_innerObject >= 0 Hacer
		property_search = string_delete(property_name, index_innerObject, string_Length(property_name));
		property_name = string_substring_from(property_name, math_increment(index_innerObject));
		struct_Object = linearCollection_getElement_toString(struct_Object, object_Property_GetInnerIndex(struct_Object, property_search));
		index_innerObject = string_indexOf(property_name, symbol_ObjectSeparator());
	FinMientras
	
	si object_Property_Exist(struct_Object, property_name) Entonces
		object_Data = string_append_withSeparator(property_name, struct_Object, symbol_ExtraData());
	SiNo
		Innerobject_info = string_NULL();
		error_message_Function("__private_object_Property_GetData", string_append_withSeparator("property no exist :: ", " :: ", property_name));
	FinSi
FinFuncion

Funcion object_Result <- object_Property_SetValue(struct_Object, property_name, property_Value)
	Definir object_Result Como Texto;
	object_Result = object_Property_SetValue_ToSeparator(struct_Object, property_name, property_value, symbol_ObjectSeparator);
FinFuncion

Funcion object_Result <- object_Property_SetValue_ToSeparator(struct_Object, property_name, property_value, separator)
	Definir object_Result Como Texto;
	object_Result = object_Property_ModifyOrDelete_ToSeparator(struct_Object, property_name, property_value, separator, false());
FinFuncion

Funcion object_Result <- object_Property_ModifyOrDelete_ToSeparator(struct_Object, property_name, property_value, separator, isDelete)
    Definir object_Result, current_Key , stack_Objects, stack_Keys Como Texto;
    Definir dot_Index, property_Index, property_InnerIndex Como Numero;
    Definir property_Type, object_Modify_string Como Texto;
    Definir i, stack_Pointer, size_arrays, index_property, index_property_end Como Numero;
	size_arrays = string_countMatches(property_name, separator);
	si size_arrays > 0 Entonces
		stack_Pointer = 0;
		Dimension stack_Objects[size_arrays];
		Dimension stack_Keys[size_arrays];
		
		Mientras string_indexOf(property_name, separator) >= 0 Hacer
			dot_Index = string_indexOf(property_name, separator);
			current_Key = string_substring(property_name, 0, dot_Index);
			stack_Objects[stack_Pointer] = struct_Object;
			stack_Keys[stack_Pointer] = current_Key;
			stack_Pointer = math_increment(stack_Pointer);
			
			struct_Object = linearCollection_getElement_toString(struct_Object, object_Property_GetInnerIndex(struct_Object, current_Key));
			property_name = string_substring_from(property_name, math_increment(dot_Index));
		FinMientras
	FinSi
    property_Index = object_Property_GetIndex(struct_Object, property_name);
	Si property_Index  < 0 Entonces
		object_Result = struct_Object;
		error_message_Function("object_Property_SetValue", string_append("property no exist: ", property_name));
	SiNo
		property_InnerIndex = __private_object_Property_GetInnerIndex_IndexProperty(struct_Object, property_name, property_Index);
		property_Type = __private_object_Property_GetType_IndexProperty(struct_Object, property_name, property_Index);
		si isDelete Entonces
			object_Modify_string = linearCollection_DeleteElement(struct_Object, property_InnerIndex);
			index_property = object_Property_GetIndex(struct_Object, property_name);
			index_property_end = math_increment(string_indexOf_fromIndex(struct_Object, symbol_Separator(), index_property));
			object_Modify_string = string_delete(object_Modify_string, index_property, index_property_end);
		SiNo
			object_Modify_string = linearCollection_SetElement_ToType(struct_Object, property_InnerIndex, property_value, property_Type);
		FinSi
		
		Para i = math_decrement(stack_Pointer) Hasta 0 con Paso -1 Hacer
			struct_Object = stack_Objects[i];
			current_Key = stack_Keys[i];
			property_Index = object_Property_GetIndex(struct_Object, current_Key);
			property_InnerIndex = __private_object_Property_GetInnerIndex_IndexProperty(struct_Object, current_Key, property_Index);
			property_Type = __private_object_Property_GetType_IndexProperty(struct_Object, current_Key, property_Index);
			object_Modify_string = linearCollection_SetElement_ToType(struct_Object, property_InnerIndex, object_Modify_string, property_Type);
		FinPara
		object_Result = object_Modify_string;
	FinSi
FinFuncion

Funcion object_Result <- object_Property_Delete(struct_Object, property_name)
	Definir object_Result Como Texto;
	object_Result = object_Property_ModifyOrDelete_ToSeparator(struct_Object, property_name, string_NULL(), symbol_ObjectSeparator(), true());
FinFuncion

Funcion object_result <- object_InheritsFrom(object_Original, object_Hereditary)
	Definir object_result Como Texto;
	object_result = __private_object_process_AddOrDelete_general(object_Original, object_Hereditary, false());
FinFuncion

Funcion object_depure <- object_Delete_CommonPropertiesFrom(object_Original, object_Compartor)
	Definir object_depure Como Texto;
	object_depure = __private_object_process_AddOrDelete_general(object_Original, object_Compartor, true());
FinFuncion

Funcion object_IsEquals <- object_isType(object_Select, name)
	Definir object_IsEquals Como Logico;
	object_IsEquals = string_isObject(object_Select);
	si object_IsEquals Entonces
		object_IsEquals = string_isEquals(object_getName(object_Select), name);
	FinSi
FinFuncion

Funcion object_Name <- object_getName(struct_Object)
	Definir object_Name Como Texto;
	object_Name = collection_getContent_Between_Symbols(struct_Object, symbol_typeArea(), symbol_ExtraData());
FinFuncion

Funcion property_exists <- object_Property_Exist(struct_Object, property_name)
	Definir property_exists Como Logico;	
	property_exists = (object_Property_GetIndex(struct_Object, property_name) >= 0);
FinFuncion

Funcion index_property <- object_Property_GetIndex(struct_Object, property_name)
	Definir index_property, index_innerObject, center_info Como Numero;
	Definir Area_Property, data_Inner Como Texto;
	Area_Property = object_getAreaProperty(struct_Object);
	index_property = __private_object_Property_GetIndex_AreaProperty(struct_Object, property_name, Area_Property);
	Si index_property >= 0 Entonces
		index_property = math_sum(math_increment(string_indexOf(struct_Object, symbol_ExtraData())), index_property);
	FinSi
FinFuncion

Funcion index_property <- __private_object_Property_GetIndex_AreaProperty(struct_Object, property_name, Area_Property)
	Definir index_property, property_length Como Numero;
	Definir property_lowerCase Como Texto;
	Definir index_isValid Como Logico;
	property_lowerCase = string_ToLowerCase(property_name);
	property_length = string_Length(property_lowerCase);
	index_property = string_indexOf(Area_Property, property_lowerCase);
	Si index_property >= 0 Entonces
		index_isValid = string_isEquals(char_At(Area_Property, math_sum(property_length, index_property)), symbol_Key_Value());
		Mientras !index_isValid & (index_property >= 0) Hacer
			index_property = string_indexOf_fromIndex(Area_Property, property_lowerCase, math_increment(index_property));
			index_isValid = string_isEquals(char_At(Area_Property, math_sum(property_length, index_property)), symbol_Key_Value());
		FinMientras
	FinSi
FinFuncion

Funcion property_TYPE <- object_Property_GetType(struct_Object, property_name)
	Definir property_TYPE, data_Inner Como Texto;
	Definir index_innerObject, center_info Como Numero;
	
	index_innerObject = string_indexOf(property_name, symbol_ObjectSeparator());
	si index_innerObject > 0 Entonces
		data_Inner = __private_object_Property_GetData(struct_Object, property_name, index_innerObject);
		center_info = string_indexOf(data_Inner, symbol_ExtraData());
		property_name = string_substring(data_Inner, 0, center_info);
		struct_Object = string_substring_from(data_Inner, math_increment(center_info));
	FinSi
	
	si object_Property_Exist(struct_Object, property_name) Entonces
		property_TYPE = __private_object_Property_GetType_IndexProperty(struct_Object, property_name, object_Property_GetIndex(struct_Object, property_name));
	SiNo
		property_TYPE = string_NULL();
		error_message_Function("object_Property_GetType", string_append_withSeparator("property no exist :: ", " :: ", property_name));
	FinSi
FinFuncion

Funcion property_TYPE <- __private_object_Property_GetType_IndexProperty(struct_Object, property_name, index_property)
	Definir property_TYPE Como Texto;
	Definir start_index, End_index Como Numero;
	start_index = index_property;
	Si start_index >= 0 Entonces
		start_index = math_increment(string_indexOf_fromIndex(struct_Object, symbol_Key_Value(), start_index));
		End_index = string_indexOf_fromIndex(struct_Object, symbol_Separator(), start_index);
		property_TYPE = string_substring(struct_Object, start_index, End_index);
	SiNo
		property_TYPE = string_NULL();
		error_message_Function("__private_object_Property_GetType_IndexProperty", string_append("property no exist :", property_name));
	FinSi
FinFuncion

Funcion property_InnerIndex <- __private_object_Property_GetInnerIndex_IndexProperty(struct_Object, property_name, IndexProperty)
	Definir property_InnerIndex Como Numero;
	property_InnerIndex = -1;
	Mientras (IndexProperty >= 0) & !string_isEquals(char_At(struct_Object, math_increment(IndexProperty)), symbol_dataArea()) Hacer
		IndexProperty = string_indexOf_fromIndex(struct_Object, symbol_Separator(), math_increment(IndexProperty));
		property_InnerIndex = math_increment(property_InnerIndex);
	FinMientras
FinFuncion

Funcion property_InnerIndex <- object_Property_GetInnerIndex(struct_Object, property_name)
	Definir property_InnerIndex Como Numero;
	property_InnerIndex = __private_object_Property_GetInnerIndex_IndexProperty(struct_Object, property_name, object_Property_GetIndex(struct_Object, property_name));
FinFuncion

Funcion area_Property <- object_getAreaProperty(struct_Object)
	Definir Area_Property Como Texto;
	Area_Property = collection_getContent_Between_Symbols(struct_Object, symbol_ExtraData(), symbol_dataArea());
FinFuncion

Funcion object_result <- __private_object_process_AddOrDelete_general(object_select, object_compartor, isDelete)
	Definir object_result, object_Instructions, property_name, property_type Como Texto;
	Definir length_instructions, End_index Como Numero;
	object_Instructions = __private_object_GetInstructions_AccordingToProcess(object_select, object_compartor, isDelete);
	object_result = object_select;
	length_instructions = string_Length(object_Instructions);
	si !string_isEquals(object_Instructions, string_NULL()) Entonces
		Mientras (length_instructions > 1) Hacer		
			End_index = string_indexOf_fromIndex(object_Instructions, symbol_Key_Value(), 0);
			property_name = string_substring(object_Instructions, 0, End_index);
			object_Instructions = string_delete(object_Instructions, 0, math_increment(End_index));
			End_index = string_indexOf_fromIndex(object_Instructions, symbol_Separator(), 0);
			property_type = string_substring(object_Instructions, 0, End_index);
			object_Instructions = string_delete(object_Instructions, 0, math_increment(End_index));
			length_instructions = string_Length(object_Instructions);
			Si isDelete Entonces
				object_result = object_Property_Delete(object_result, property_name);
			SiNo
				object_result = object_Property_Add(object_result, property_name, property_type);	
			FinSi
		FinMientras
	FinSi
FinFuncion

Funcion object_Instructions <- __private_object_GetInstructions_AccordingToProcess(object_select, object_compartor, isDelete)
	Definir object_Instructions, Area_Property_Comparator, Area_Property_Select, array_Select, array_Comparator Como Texto;
	Definir i, Size_Select, Size_Comparator, start_index, End_index Como Numero;
	
	Size_Select = linearCollection_getSize(object_select);
	Size_Comparator = linearCollection_getSize(object_compartor);
	Area_Property_Comparator = object_getAreaProperty(object_compartor);
	object_Instructions = string_NULL();
	
	si (Size_Comparator > 0) & (Size_Select > 0) Entonces
		Dimension array_Select[Size_Select];
		Dimension array_Comparator[Size_Comparator];
		Area_Property_Select = object_getAreaProperty(object_Select);
		start_index = 0;
		para i = 0 Hasta math_decrement(Size_Select) Con Paso 1 Hacer
			End_index = string_indexOf_fromIndex(Area_Property_Select, symbol_Separator(), start_index);
			array_Select[i] = string_substring(Area_Property_Select, start_index, End_index);
			start_index = math_increment(End_index);
		FinPara
		start_index = 0;		
		para i = 0 Hasta math_decrement(Size_Comparator) Con Paso 1 Hacer
			End_index = string_indexOf_fromIndex(Area_Property_Comparator, symbol_Separator(), start_index);
			array_Comparator[i] = string_substring(Area_Property_Comparator, start_index, End_index);
			start_index = math_increment(End_index);
		FinPara
		//. . . . . . . . . . start On2 vvvvv
		object_Instructions = array_ToDeltastring_ByComparation(array_Select, size_Select, array_Comparator, size_Comparator, isDelete);
	FinSi
	
	si (Size_Select < 1) & (Size_Comparator > 0) Entonces
		object_Instructions = if_else(isDelete, string_NULL(), Area_Property_Comparator);
	FinSi
FinFuncion

///==========[DEPENDECES]=============================================
//---[ native_ (#NAV) ]--------------------------------------------------------------------

Funcion result_string <- native_string_ToLowerCase(text)
	Definir result_string Como Texto;
	result_string = Minusculas(text);
FinFuncion

Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

Funcion length <- native_string_length(text)
	Definir length Como Numero;
	length = Longitud(text);
FinFuncion

Funcion native_println(text)
	Escribir text;
FinFuncion

Funcion num <- native_string_toNumber(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion result_string <- native_number_ToString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion
//---[ string_ (#STR) ]--------------------------------------------------------------------

Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
FinFuncion

Funcion result_string <- string_toLowerCase(text)
	Definir result_string Como Texto;
	result_string = native_string_ToLowerCase(text);
FinFuncion

Funcion result_string <- string_insert(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, false);
FinFuncion

Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Numero;
	result = string_indexOf_fromIndex(text, text_match, 0);
FinFuncion

Funcion strSubs <- string_substring(result_string, start, end)
	Definir strSubs, str_data Como Texto;
	Definir end_substring Como Entero;
	message_validateIndexRange("string_substring", result_string, start, end);
	end_substring = math_max_int( math_minus(end, 1), 0);
	str_data = native_string_substring(result_string, start, end_substring);
	strSubs = if_else(number_isEquals(start, end), "", str_data);
FinFuncion

Funcion strSubs <- string_substring_from(result_string, start)
	Definir strSubs Como Texto;
	Definir end_substring Como Entero;
	end_substring = native_string_length(result_string);
	strSubs = string_substring(result_string, start, end_substring);
FinFuncion

Funcion result_str <- string_delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_delete", text, start, end);
	start_Str = string_substring(text, 0, start);//Hello <-]
	end_Str = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
FinFuncion

Funcion num <- string_length(text)
	Definir num Como Numero;
	num = native_string_length(text);
FinFuncion

Funcion result_string <- string_NULL
	Definir result_string Como Texto;
	result_string = "";
FinFuncion

Funcion count <- string_countMatches(text, text_matcher)
	Definir count Como Numero;
	count =	__private_string_countMatches_general(text, text_matcher, false);
FinFuncion

Funcion index <- string_indexOf_fromIndex(text, match, index_Start)
	Definir index, i, match_length, index_end Como Numero;
	Definir condition Como Logico;
    index = -1;
    match_length = native_string_length(match);
	i = math_max_Int(index_Start, 0);
	index_end = math_minus(native_string_length(text), match_length);
	Mientras index_end >= i & number_isEquals(index, -1) Hacer
		Si string_isEquals(match, string_substring(text, i, math_sum(i, match_length))) Entonces
			index = i;
			i = math_sum(index_end, 1);
		SiNo
			i = math_sum(i, 1);
		FinSi
	FinMientras
FinFuncion

Funcion isObject <- string_isObject(str_struct)
	Definir isObject Como Logico;
	isObject = string_Length(str_struct) >= string_Length(object_Empty("")) & !string_isEmpty(object_getName(str_struct));
FinFuncion

Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
FinFuncion

Funcion result_string <- char_At(text, index)
	Definir result_string Como Texto;
	Definir end_substring, text_length Como Entero;
	text_length   = native_string_length(text);
	end_substring = math_min_int(math_increment(index), text_length);
	result_string = string_substring(text, index, end_substring);
FinFuncion

Funcion result_string <- __private_string_insert_general(text, text_insert, index, isReplace)
	Definir result_string, before, after Como Texto;
	Definir index_after Como Entero;
	before        = string_substring(text, 0, index);
	index_after   = math_sum(index, if_else(isReplace, native_string_length(text_insert), 0));
	after         = string_substring_from(text, math_min_int(index_after, native_string_length(text)));
	result_string = string_append_withSeparator(before, after, text_insert);
FinFuncion

Funcion num <- string_toNumber(result_string)
	Definir num Como Numero;
	Si !string_isEmpty(result_string) & string_isNumber(result_string) Entonces
		result_string = result_string; 
	SiNo
		result_string = "-1";
	FinSi
	num = native_string_toNumber(result_string);
FinFuncion

Funcion boolean <- string_toBoolean(result_string)
	Definir boolean Como Logico;
	boolean = string_isBoolean_true(result_string);
FinFuncion

Funcion result <- string_lastIndexOf(text, text_match)//< ---
	Definir result Como Numero;
	result = string_lastindexOf_fromIndex(text, text_match, native_string_length(text));
FinFuncion

Funcion index <- string_LastindexOf_fromIndex(text, match, index_Start)
	Definir index, i, match_length, index_end Como Numero;
	Definir condition Como Logico;
    index = -1;
    match_length = native_string_length(match);
	i = math_max_Int(index_Start, match_length);
	index_end = match_length;
	Mientras index_end <= i & number_isEquals(index, -1) Hacer
		Si string_isEquals(match, string_substring(text, math_minus(i, match_length), i)) Entonces
			index = math_minus(i, match_length);
			i = -1;
		SiNo
			i = math_decrement(i);
		FinSi
	FinMientras
FinFuncion

Funcion count <- __private_string_countMatches_general(text, text_matcher, isOverLap)
	Definir index, count , length_Match Como Numero;
	length_Match = if_else(isOverLap, 1, native_string_length(text_matcher));
	count = 0;
	index = string_indexOf_fromIndex(text, text_matcher, 0);
	Mientras index >= 0 Hacer
		count = math_increment(count);
		text = string_substring_from(text, if_else(isOverLap, 1, index));
		index = string_indexOf_fromIndex(text, text_matcher, length_Match);
	FinMientras
FinFuncion

Funcion boolean <- string_isEmpty(text)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(text, "");
FinFuncion

Funcion boolean <- string_isNumber(text)
	Definir boolean Como Logico;
	boolean = string_isNumber_int(text) | string_isNumber_float(text);
FinFuncion

Funcion boolean <- string_isBoolean_true(text)
	Definir boolean Como Logico;
	Definir index Como Numero;
	boolean = false;
	text = native_string_toLowerCase(text);
	index = 0;
	Mientras !boolean & !string_isEquals(array_string_Booleans_True(index), string_NULL()) hacer 
		boolean = string_isEquals(text, array_string_Booleans_True(index));
		index = math_increment(index);
	FinMientras
FinFuncion

Funcion boolean <- char_isNumber(char)
	Definir boolean Como Logico;
	boolean = ascii_IsNumberSymbols(char);
FinFuncion

Funcion isNumber <- string_isNumber_int(text_check)
	Definir isNumber Como Logico;
	Definir i, length Como Numero;
	text_check = string_trim(text_check);
	text_check = if_else(string_startsWith(text_check, "-"), string_substring_from(text_check, 1), text_check);
	length = native_string_length(text_check);
	isNumber = true(); 
	i = 0;
	Mientras isNumber & (i < length) Hacer
		isNumber = ascii_IsNumberSymbols(char_At(text_check, i));
		i = math_increment(i);
	FinMientras
FinFuncion

Funcion boolean <- string_isNumber_float(str_num)
	Definir boolean, interger_valid, decimal_valid Como Logico;
	Definir str_decimal Como Texto;
	str_num = string_trim(str_num);
	Si string_contains(str_num, ".") & string_indexOf(str_num, ".") > 0 Entonces
		interger_valid = string_isNumber(string_substring(str_num, 0, string_indexOf(str_num, ".")));
		str_decimal = string_substring_from(str_num, math_increment(string_indexOf(str_num, ".")));
		decimal_valid = string_isNumber(str_decimal) & !string_startsWith(str_decimal, "-");
		boolean = interger_valid & decimal_valid;
	SiNo
		boolean = string_isNumber_int(str_num);
	FinSi
FinFuncion

Funcion result_string <- string_trim(text)
    Definir result_string Como Texto;
	result_string = string_Strip(text, " ");
FinFuncion

Funcion boolean <- string_startsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring(text, 0, native_string_length(text_match)), text_match);
FinFuncion

Funcion boolean <- string_contains(text, text_match)
	Definir boolean Como Logico;
	boolean = string_indexOf(text, text_match) > -1;
FinFuncion

Funcion result_string <- string_Strip(text, strip_symbol)
    Definir result_string Como Texto;
    Definir start, end, length_text Como Entero;
    length_text = native_string_length(text);
    start = 0;
    Mientras start < length_text & string_isEquals(char_At(text, start), strip_symbol) Hacer
        start = math_increment(start);
    FinMientras
    end = length_text;
    Mientras end > start & string_isEquals(char_At(text, math_decrement(end)), strip_symbol) Hacer
        end = math_decrement(end);
    FinMientras
    result_string = string_SubString(text, start, end);
FinFuncion
//---[ array_ (#ARR) ]---------------------------------------------------------------------

Funcion string_Delta <- array_ToDeltastring_ByComparation(array_Select, size_Select, array_Comparator, size_Comparator, IsInnerJoin)
	Definir string_Delta Como Texto;
	Definir i, j Como Numero;
	Definir property_exists Como Logico;
	string_Delta = "";
	para i = 0 Hasta math_decrement(size_Comparator) Con Paso 1 Hacer
		property_exists = false();
		j = 0;
		Mientras (j < size_Select) & !property_exists Hacer
			Si array_Comparator[i] == array_Select[j] Entonces
				property_exists = true();
			FinSi
			j = math_increment(j);
		FinMientras
		Si IsInnerJoin Entonces
			property_exists = !property_exists;
		FinSi
		Si !property_exists Entonces
			string_Delta = string_append_withSeparator(string_Delta, symbol_Separator(), array_Comparator[i]);
		FinSi
	FinPara
FinFuncion

Funcion str_array <- array_ofstring_separator(array, Size, separator, type)
	Definir str_array Como Texto;
	Definir i Como Numero;
	str_array = "";
	i=0;
	Size = math_decrement(Size);
	Mientras i < Size Hacer
		str_array = string_append(str_array, value_TypeToString(array[i], type));
		str_array = string_append(str_array, separator);
		i=math_increment(i);
	FinMientras
	str_array = string_append(str_array, value_TypeToString(array[i], type));
FinFuncion

Funcion value <- array_string_Booleans_True(index)
	Definir value Como Texto;
	segun index hacer 
		caso 0: value = "true";
		caso 1: value = "verdadero";
		caso 2: value = "yes";
		caso 3: value = "Si";
		caso 4: value = "t";
		caso 5: value = "v";
		caso 6: value = "y";
		caso 7: value = "s";
		caso 8: value = "1";
		De Otro Modo:
			value = string_NULL();
	FinSegun
FinFuncion
//---[ log_ (#LOG) ]-----------------------------------------------------------------------

Funcion log_ERROR(message)
	__private_general_log(message, "ERROR: ", COLOR_RED());
FinFuncion

Funcion __private_general_log(message, start_tag, SELECTED_COLOR)
	message = string_append(start_tag, message);
	native_println(string_append(SELECTED_COLOR, message));
FinFuncion
//---[ int_ (#NUM) ]-----------------------------------------------------------------------

Funcion TYPE <- TYPE_OBJECT
	Definir TYPE Como Texto;
	TYPE = "object";
FinFuncion

Funcion TYPE <- TYPE_INT
	Definir TYPE Como Texto;
	TYPE = "int";
FinFuncion

Funcion TYPE <- TYPE_FLOAT
	Definir TYPE Como Texto;
	TYPE = "float";
FinFuncion

Funcion TYPE <- TYPE_BOOLEAN
	Definir TYPE Como Texto;
	TYPE = "boolean";
FinFuncion

Funcion Num <- number_NULL
	Definir Num Como Numero;
	Num = -1;
FinFuncion

Funcion TYPE <- TYPE_STRING
	Definir TYPE Como Texto;
	TYPE = "string";
FinFuncion

Funcion boolean <- number_isEquals(num, num2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(num, num2);
FinFuncion

Funcion result_string <- number_toString(num)
	Definir result_string Como Texto;
	result_string = native_number_ToString(num);
FinFuncion

Funcion result_string <- interger_ToString(num)
	Definir result_string Como Texto;
	result_string = native_number_toString(num);
	Si !string_isNumber_int(result_string) Entonces
		exection_Error(string_append("Error de tipado Interger: ", result_string));
	FinSi
FinFuncion

Funcion result_string <- float_ToString(num)
	Definir result_string Como Texto;
	result_string = native_number_toString(num);
	Si !string_isNumber_float(result_string) Entonces
		exection_Error(string_append("Error de tipado Float: ", result_string));
	FinSi
FinFuncion

Funcion number_validateNumberRange(Function_name, value, min_val, max_val)
	si (min_val > max_val) Entonces
		error_message_Function(Function_name, "Config Error: Min > Max");
	FinSi
    Si !number_IsInRange(value, min_val, max_val) Entonces
        Definir error_msg Como Texto;
        error_msg = string_append("Value out of range: ", number_toString(value));
        error_msg = string_append(error_msg, string_append(" [Limit: ", number_toString(min_val)));
        error_msg = string_append(error_msg, string_append(" - ", number_toString(max_val)));
        error_msg = string_append(error_msg, "]");
        error_message_Function(Function_name, error_msg);
    FinSi
FinFuncion

Funcion IsInRange <- number_IsInRange(value, min_val, max_val)
    Definir IsInRange Como Logico;
    IsInRange = value >= min_val & value <= max_val;
FinFuncion
//---[ math_ (#MAT) ]----------------------------------------------------------------------

Funcion numInc <- math_increment(num)
	Definir numInc Como Numero;
	numInc = num + 1;
FinFuncion

Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
FinFuncion

Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion

Funcion result <- math_max_int(value, limit)
	Definir result Como Entero;	
	result = __private_math_choose(value, limit, true());
FinFuncion

Funcion numDec <- math_minus(num, value)
	Definir numDec Como Numero;
	numDec = num - value;
FinFuncion

Funcion result <- math_min_int(value, limit)
	Definir result Como Entero;
	result = __private_math_choose(value, limit, false());
FinFuncion

Funcion result <- __private_math_choose(value, limit, isMax)
	Definir result Como Numero;
	Definir operation_flag Como Logico;
	operation_flag = (value > limit) & isMax;
	operation_flag = operation_flag | ((value < limit) & !isMax);
	Si operation_flag Entonces
		result = value; 
	SiNo
		result = limit;
	FinSi
FinFuncion
//---[ boolean_ (#BOO) ]-------------------------------------------------------------------

Funcion boolean <- false
	Definir boolean Como Logico;
	boolean = Falso;
FinFuncion

Funcion boolean <- true
	Definir boolean Como Logico;
	boolean = Verdadero;
FinFuncion

Funcion boolean <- __private_isEquals_general(value1, value2)
	Definir boolean Como Logico;
	boolean = (value1 == value2);
FinFuncion

Funcion text <- boolean_ToString(boolean)	
	Definir text Como Texto;
	text = if_else(boolean, "true", "false");
FinFuncion
//---[ if_ (#CDT) ]------------------------------------------------------------------------

Funcion error_message_Function(method, message)
	error_message(string_append_withSeparator(method, message, "//"));
FinFuncion

Funcion result <- if_else(condition, result, result2)
	Si !(condition) Entonces
		result = result2;
	FinSi	
FinFuncion

Funcion error_message(message)
	native_println(symbol_Escape() + "31m[ERROR] // " + message + ".");
FinFuncion

Funcion message_validateIndexRange(Function_name, result_string, start, end)
    Definir num_length Como Numero;
    num_length = string_Length(result_string);
    number_validateNumberRange(Function_name, start, 0, num_length);
    number_validateNumberRange(Function_name, end, 0, num_length);
	si (start > end) Entonces
		error_message_Function(Function_name, "Index Error: Start > End");
	FinSi
FinFuncion

Funcion exection_Error(message_Error)
	Definir error_int Como Entero;
	log_ERROR(message_Error);
	error_int = string_NULL();
FinFuncion
//---[ COLOR_ (#COL) ]---------------------------------------------------------------------

Funcion color <- COLOR_RED
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(1);
FinFuncion

Funcion color <- COLOR_getcolor_forIndex(index)
	Definir color Como Texto;
	si (index < 0) | (index > 7) Entonces
		error_message_Function("COLOR_getcolor_forIndex", "invalid index color (index valid: 0...7)");
		color = __private_color_getcolor_or_style_forIndex(0);
	SiNo
		index = math_sum(index, 30);
		color = __private_color_getcolor_or_style_forIndex(index);
	FinSi
FinFuncion

Funcion color <- __private_color_getcolor_or_style_forIndex(index)
	Definir color Como Texto;
	color = string_append_withSeparator(symbol_Escape(), "m", number_toString(index));
FinFuncion
//---[ value_ (#VAL) ]---------------------------------------------------------------------

Funcion result <- value_getNullType(TYPE)
	Segun TYPE Hacer
		caso TYPE_INT():
			Definir result Como Numero;
			result = number_NULL();
		caso TYPE_BOOLEAN():
			Definir result Como Logico;
			result = false();
		caso TYPE_FLOAT():
			Definir result Como Real;
			result = number_NULL();
		caso TYPE_STRING():
			Definir result Como Texto;
			result = string_NULL();
		De Otro Modo:
			Definir result Como Texto;
			result = object_Empty(TYPE);
	FinSegun
FinFuncion

Funcion element_Result <- value_stringToType(element_String, TYPE)
	Segun TYPE Hacer
		caso TYPE_INT():
			Definir element_Result Como Numero;
			element_Result = string_toNumber(element_String);
		caso TYPE_FLOAT():
			Definir element_Result Como Real;
			element_Result = string_toNumber(element_String);
		caso TYPE_BOOLEAN():
			Definir element_Result Como Logico;
			element_Result = string_toBoolean(element_String);
		De Otro Modo:
			Definir element_Result Como Texto;
			element_Result = string_append(element_String, "");//wrapper
	FinSegun
FinFuncion

Funcion result <- value_TypeToString(data, TYPE)
	Definir result Como Texto;
	Segun TYPE Hacer
		caso TYPE_INT():
			result = interger_ToString(data);
		caso TYPE_FLOAT():
			result = float_ToString(data);
		caso TYPE_BOOLEAN():
			result = boolean_ToString(data);
		De Otro Modo:
			result = string_append(data, "");//wrapper
	FinSegun
FinFuncion

Funcion string_Increment <- value_modify_StringNumber(string_number, num_sum)
	Definir string_Increment Como Texto;
	string_Increment = number_toString(math_sum(string_toNumber(string_number), num_sum));
FinFuncion
//---[ collection_ (#CLL) ]----------------------------------------------------------------

Funcion result_string <- symbol_ExtraData
	Definir result_string Como Texto;
	result_string = "";//0003
FinFuncion

Funcion result_string <- symbol_Key_Value
	Definir result_string Como Texto;
	result_string = "=";
FinFuncion

Funcion result_string <- symbol_Separator
	Definir result_string Como Texto;
	result_string = "";//001F
FinFuncion

Funcion type_area <- collection_getContent_Between_Symbols(collection, symbol_start, symbol_end)
	Definir Type_property, type_area Como Texto;
	Definir index_start, index_end, index_check Como Numero;
	index_start = math_increment(string_indexOf(collection, symbol_start));
	index_end = string_indexOf_fromIndex(collection, symbol_end, index_start);
	type_area = string_substring(collection, index_start, index_end);
FinFuncion

Funcion symbol_area <- symbol_typeArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001D
FinFuncion

Funcion symbol_area <- symbol_dataArea
	Definir symbol_area Como Texto;
	symbol_area = "";
FinFuncion

Funcion data_collection <- collection_new(STRUCT_TYPE, TYPE)
	Definir data_collection, dataParts, index_end_dataArea Como Texto;
	Definir length_data_area Como Numero;
	Dimension dataParts[5];
	dataParts[0] = STRUCT_TYPE;
	dataParts[1] = symbol_typeArea();
	dataParts[2] = TYPE;
	dataParts[3] = symbol_dataArea();
	dataParts[4] = symbol_metaData();
	data_collection = array_ofstring_separator(dataParts, 5, "", TYPE_STRING());//struct/<STRING[Data(meta_data
FinFuncion

Funcion symbol_area <- symbol_metaData
	Definir symbol_area Como Texto;
	symbol_area = "";//001E
FinFuncion

Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion

Funcion index_MetaData <- collection_getIndex_metaData(struct_Collection)
	Definir index_MetaData Como Numero;
	index_MetaData = string_lastIndexOf(struct_Collection, symbol_metaData());
FinFuncion

Funcion index_isValid <- Collection_IndexIsValid(struct_Size, index_element)
	Definir index_isValid Como Logico;
	index_isValid = (index_element >= 0 & index_element < struct_Size );
FinFuncion

Funcion collection_result <- collection_updateRange(struct_collection, index_start, index_end, data_string)
	Definir collection_result Como Texto;
	collection_result = string_delete(struct_collection, index_start, index_end);
	collection_result = string_insert(collection_result, data_string, index_start);
FinFuncion
//---[ managerData_ (#MDA) ]---------------------------------------------------------------

Funcion value_string <- managerData_get_toString(sequential_data, sequential_lengths, index_getter)
	Definir value_string, num_carry, Char_Current Como Texto;
	Definir length_summations, i, index_end, index_start, length_value Como Numero;
	Definir IsNumber Como Logico;
	num_carry 	    = "";
	index_end		= 0;	
	length_summations = string_Length(sequential_lengths);
	i				= length_summations;
	Mientras i >= 0 & index_getter >= 0 Hacer
		Char_Current = char_At(sequential_lengths, i);
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(Char_Current, num_carry);
		FinSi
		
		Si (!IsNumber & !string_isEmpty(num_carry)) | number_isEquals(i, 0) Entonces
			length_value = string_toNumber(num_carry);
			index_end         = math_sum(index_end, length_value);
			index_getter      = math_decrement(index_getter);
			num_carry = "";
		FinSi
		i = math_decrement(i);
	FinMientras
	
	Si index_getter >= 0 Entonces
		error_message_Function("managerData_get_toString", "error index no valid");
		value_string = string_NULL();
	SiNo
		index_start  = math_minus(index_end, length_value);
		value_string = string_substring(sequential_data, index_start, index_end);
	FinSi
FinFuncion

Funcion sequential_package <- managerData_modify(sequential_data, sequential_lengths, index_modify, value_string, isStorage)
	Definir sequential_package, num_carry, Char_Current, current_data Como Texto;
	Definir length_summations, i, index_end, index_start, length_value Como Numero;
	Definir index_sum_start, index_sum_end, old_value_length, new_value_length Como Numero;
	Definir IsNumber Como Logico;
	//getIndex
	num_carry 	     = "";
	index_end		 = 0;	
	length_summations  = string_Length(sequential_lengths);
	i				 = length_summations;
	Mientras i >= 0 & index_modify >= 0 Hacer
		Char_Current = char_At(sequential_lengths, i);
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(Char_Current, num_carry);
		FinSi
		Si !IsNumber & !string_isEmpty(num_carry) | number_isEquals(i, 0) Entonces
			length_value = string_toNumber(num_carry);
			index_end         = math_sum(index_end, length_value);
			index_modify 	  = math_decrement(index_modify);
			old_value_length  = string_Length(num_carry);
			num_carry         = "";// clear
		FinSi
		i = math_decrement(i);
	FinMientras
	//update
	si index_modify >= 0 Entonces
		error_message_Function("managerData_modify(data, summations, index, val_string)", "error index no valid");
	SiNo
		index_sum_start = math_increment(i);
		index_sum_end = math_sum(index_sum_start, math_increment(old_value_length));
		index_start = math_minus(index_end,  length_value);
		sequential_lengths = string_delete(sequential_lengths, index_sum_start, index_sum_end);
		sequential_package = string_delete(sequential_data, index_start, index_end);
		si !string_isEquals(value_String, string_NULL()) Entonces
			new_value_length = string_Length(value_string);
			sequential_lengths = string_insert(sequential_lengths, string_append(symbol_Separator(), number_toString(new_value_length)), index_sum_start);
			sequential_package = string_insert(sequential_package, value_string, index_start);
		FinSi
	FinSi
	//format
	si isStorage Entonces
		sequential_package = string_append_withSeparator(sequential_lengths, sequential_package, symbol_dataArea());
	SiNo
		sequential_package = string_append_withSeparator(sequential_package, sequential_lengths, symbol_metaData());
	FinSi
FinFuncion
//---[ linearCollection_ (#LCL) ]----------------------------------------------------------

Funcion new_LinearColletion <- linearCollection_new(struct_Collection, TYPE)
	Definir new_LinearColletion Como Texto;
	new_LinearColletion = string_append_withSeparator(collection_new(struct_Collection, TYPE), "0", symbol_ExtraData());
FinFuncion

Funcion collection_result <- linearCollection_addLast_ByType(struct_Collection, Element, TYPE)
	Definir collection_result, element_String Como Texto;// (C, B, A/1;2;3)
	element_String = value_TypeToString(Element, TYPE);//"Z";
	collection_result = linearCollection_addLast_ByString(struct_Collection, element_String);
FinFuncion

Funcion element_String <- linearCollection_getElement_toString(struct_linearCollection, index_element)
	Definir element_String, sequential_package, sequential_lengths, sequential_data Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData Como Numero;
	Si linearCollection_IndexIsValid(struct_linearCollection, index_element) Entonces
		index_Data 		  = math_increment(string_indexOf(struct_linearCollection, symbol_dataArea()));
		index_ExtraData   = string_LastindexOf(struct_linearCollection, symbol_ExtraData());
		index_MetaData	  = string_LastindexOf_fromIndex(struct_linearCollection, symbol_metaData(), index_ExtraData);
		sequential_data 		  = string_substring(struct_linearCollection, index_Data, index_MetaData);
		sequential_lengths   = string_substring(struct_linearCollection, math_increment(index_MetaData), index_ExtraData);
		element_String 	  = managerData_get_toString(sequential_data, sequential_lengths, index_element);
	SiNo
		error_message_Function("linearCollection_getElement_toString", string_append("index_element no is valid Size:", number_toString(linearCollection_getSize(struct_linearCollection))));
		element_String = string_NULL();
	FinSi
FinFuncion

Funcion collection_result <- linearCollection_DeleteElement(struct_Collection, index_element)
	Definir collection_result Como Texto;
	collection_result = __private_linearCollection_ModifyElement(struct_Collection, index_element, string_NULL());
	collection_result = linearCollection_decrement_numElement(collection_result);
FinFuncion

Funcion collection_result <- linearCollection_SetElement_ToType(struct_Collection, index_element, new_value, TYPE)
	Definir collection_result, value_string Como Texto;
	value_string = value_TypeToString(new_value, TYPE);
	collection_result = linearCollection_SetElement_ToString(struct_Collection, index_element, value_string);
FinFuncion

Funcion Size_int <- linearCollection_getSize(struct_Collection)
	Definir Size_int Como Numero;
	Size_int = string_toNumber(string_substring_from(struct_Collection, math_increment(linearCollection_getIndex_EndMetaData(struct_Collection))));
FinFuncion

Funcion collection_result <- linearCollection_addLast_ByString(struct_Collection, element_String)
	Definir collection_result, element_Length_str Como Texto;// (C, B, A/1;2;3)
	Definir index_DataArea, index_MetaData Como Numero;//last  (->:<-)
	collection_result = struct_Collection;
	element_Length_str = string_append(symbol_Separator(), number_toString(string_Length(element_String)));//, 4
	index_MetaData = collection_getIndex_metaData(struct_Collection);
	collection_result = string_insert(collection_result, element_Length_str, math_increment(index_MetaData));
	collection_result = string_insert(collection_result, element_String, index_MetaData);//(C, B, A, Z/4;1;2;3)
	collection_result = linearCollection_increment_numElement(collection_result);
FinFuncion

Funcion index_isValid <- linearCollection_IndexIsValid(struct_Collection, index_element)
	Definir index_isValid Como Logico;
	Definir struct_Size Como Numero;
	struct_Size   = linearCollection_getSize(struct_Collection);
	index_isValid = Collection_IndexIsValid(struct_Size, index_element);
FinFuncion

Funcion collection_result <- __private_linearCollection_ModifyElement(struct_linearCollection, index_modify, value_string)
	Definir collection_result, sequential_package, sequential_lengths, sequential_data Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData Como Numero;
	index_Data 		   = math_increment(string_indexOf(struct_linearCollection, symbol_dataArea()));
	index_ExtraData    = string_LastindexOf(struct_linearCollection, symbol_ExtraData());
	index_MetaData	   = string_LastindexOf_fromIndex(struct_linearCollection, symbol_metaData(), index_ExtraData);
	sequential_data    = string_substring(struct_linearCollection, index_Data, index_MetaData);
	sequential_lengths = string_substring(struct_linearCollection, math_increment(index_MetaData), index_ExtraData);
	sequential_package = managerData_modify(sequential_data, sequential_lengths, index_modify, value_string, false());
	collection_result = collection_updateRange(struct_linearCollection, index_Data, index_ExtraData, sequential_package);
FinFuncion

Funcion collection_result <- linearCollection_decrement_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, -1);
FinFuncion

Funcion collection_result <- linearCollection_SetElement_ToString(struct_Collection, index_element, value_string)
	Definir collection_result, element_String Como Texto;
	collection_result = __private_linearCollection_ModifyElement(struct_Collection, index_element, value_string);
FinFuncion

Funcion End_index <- linearCollection_getIndex_EndMetaData(struct_Collection)
	Definir End_index Como Numero;
	End_index = string_lastIndexOf(struct_Collection, symbol_ExtraData());
FinFuncion

Funcion collection_result <- linearCollection_increment_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, 1);
FinFuncion

Funcion collection_result <- linearCollection_update_numElement(struct_List, num_sum)
	Definir collection_result, num_elements_str Como Texto;
	Definir index_ExtraData Como Numero;
	index_ExtraData = math_increment(string_lastIndexOf(struct_List, symbol_ExtraData()));
	num_elements_str = string_substring_from(struct_List, index_ExtraData);
	Si string_isEquals(struct_List, num_elements_str) Entonces
		collection_result = struct_List;
		error_message_Function("linearCollection_update_numElement", "unrecognized data structure ( no exist symbol_ExtraData() or num_Size)");
	SiNo
		collection_result = string_append(string_substring(struct_List, 0, index_ExtraData), value_modify_StringNumber(num_elements_str, num_sum));
	FinSi
FinFuncion
//---[ ascii_ (#ASC) ]---------------------------------------------------------------------

Funcion isType <- ascii_IsNumberSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '0', '9');//48-57
FinFuncion

Funcion iSinRangue <- ascii_isInRangue(char, char_start, char_end)
	Definir iSinRangue Como Logico;
	iSinRangue = (char_start <= char & char <= char_end);
FinFuncion
