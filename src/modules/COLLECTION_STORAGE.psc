Algoritmo MODULE_COLLECTION_STORAGE
	// Test call disabled: collectionStorage_new() requires arguments
	// TODO: add valid arguments for standalone execution
FinAlgoritmo
///%%%%%[ COLLECTION_STORAGE.................. ]%%%%%%%[   #CST    ]%%%%%%%%%%%%%%%%%%%%

Funcion new_Setter <- collectionStorage_new(type_Struct, TYPE)
	Definir new_Setter, SetterArea, setterStructure Como Texto;
	SetterArea = "";
	setterArea = string_append(SetterArea, type_Struct);//<T>Type<id>
	setterArea = string_append(SetterArea, symbol_typeArea());//<T>Type<id>
	setterArea = string_append(SetterArea, TYPE);
	setterArea = string_append(SetterArea, symbol_lengthArea());//<id>index_length<K>
	setterArea = string_append(SetterArea, symbol_dataArea());//<K>data<E>
	setterArea = string_append(SetterArea, symbol_metaData());//<K>data<E>
	setterArea = string_append(SetterArea, symbol_ExtraData());
	new_Setter 		= string_append(SetterArea, "0");
FinFuncion

Funcion result_storage <- collectionStorage_add_byString_force(struct_storage, value_string, index_lenght, index_data)
	Definir result_storage, length_value Como Texto;
	Definir index_dataArea, index_lengthArea Como Numero;
	length_value   = string_append(symbol_Separator(), number_toString(string_Length(value_string)));
	result_storage     = string_insert(struct_storage, value_string, index_data);
	result_storage     = string_insert(result_storage, length_value, index_lenght);
FinFuncion

Funcion result_storage <- collectionStorage_add_byString(struct_storage, value_string)
	Definir result_storage Como Texto;
	Definir index_dataArea, index_lengthArea Como Numero;
	index_lengthArea   = math_increment(string_indexOf(struct_storage, symbol_lengthArea()));
	index_dataArea  = string_lastIndexOf(struct_storage, symbol_metaData());
	result_storage     = collectionStorage_add_byString_force(struct_storage, value_string, index_lengthArea, index_dataArea);
	result_storage     = linearCollection_increment_numElement(result_storage);
FinFuncion

Funcion result_storage <- collectionStorage_add_ByType(struct_storage, value, TYPE)
	Definir result_storage, value_string Como Texto;
	value_string = value_TypeToString(value, TYPE);
	result_storage = collectionStorage_add_byString(struct_storage, value_string);
FinFuncion

Funcion result_storage <- collectionStorage_add(struct_storage, value)
	Definir result_storage, TYPE Como Texto;
	TYPE = collectionStorage_getType(struct_storage);
	result_storage = collectionStorage_add_ByType(struct_storage, value, TYPE);
FinFuncion

Funcion value_string <- collectionStorage_get_toString(struct_storage, index_getter)
	Definir value_string Como Texto;
	Definir index_endData Como Numero;
	index_endData = string_lastIndexOf(struct_storage, symbol_metaData());
	value_string  = collectionStorage_get_toString_force(struct_storage, index_getter, index_endData);
FinFuncion

Funcion value_string <- collectionStorage_get_toString_force(struct_storage, index_getter, index_endData)
	Definir value_string Como Texto;
	Definir index_lengthArea, index_dataArea Como Numero;
	Definir sequential_data, sequential_lengths Como Texto;
	index_lengthArea    = math_increment(string_indexOf(struct_storage, symbol_lengthArea()));
	index_dataArea      = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
	sequential_lengths  = string_substring(struct_storage, index_lengthArea, index_dataArea);
	sequential_data     = string_substring(struct_storage, math_increment(index_dataArea), index_endData);
	value_string        = managerData_get_toString(sequential_data, sequential_lengths, index_getter);
FinFuncion

Funcion result_storage <- collectionStorage_delete(struct_storage, key)
	Definir result_storage, TYPE Como Texto;
	TYPE = collectionStorage_getType(struct_storage);
	result_storage = collectionStorage_delete_ByType(struct_storage, key, TYPE);
FinFuncion

Funcion result_storage <- collectionStorage_delete_ByType(struct_storage, key, TYPE)
	Definir result_storage, key_string Como Texto;
	key_string = value_TypeToString(key, TYPE);
	result_storage = collectionStorage_delete_ByString(struct_storage, key_string);
FinFuncion

Funcion result_storage <- collectionStorage_delete_ByString(struct_storage, key)
	Definir result_storage Como Texto;
    Definir index_lengthArea, index_dataArea, index_target, count_size Como Numero;
    index_lengthArea = string_indexOf(struct_storage, symbol_lengthArea());
    count_size       = collectionStorage_getSize(struct_storage);
	result_storage   = struct_storage;
    si count_size > 0 Entonces 
        index_target = __private_collectionStorage_SearchIdKey(struct_storage, key, count_size);
        si !value_isNull(index_target, TYPE_INT())Entonces
            result_storage = __private_collectionStorage_deleteIndexed(struct_storage, index_lengthArea,  index_target, count_size);
        FinSi
    FinSi
FinFuncion

Funcion result_storage <- __private_collectionStorage_deleteIndexed(struct_storage, index_lengthArea, index_target, count_size)
	Definir result_storage, sequential_data, sequential_lengths, sequential_package Como Texto;
    Definir index_dataArea, index_metaData Como Numero;
	result_storage = struct_storage;
    Si count_size > 0 Entonces
		index_dataArea     = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
		index_metaData	   = string_indexOf_fromIndex(struct_storage, symbol_metaData(), index_dataArea);
		sequential_lengths = string_substring(struct_storage, index_lengthArea, index_dataArea);
		sequential_data    = string_substring(struct_storage, math_increment(index_dataArea), index_metaData);
        sequential_package = managerData_modify(sequential_data, sequential_lengths, index_target, string_NULL(), true());
        result_storage     =  collection_updateRange(result_storage, index_lengthArea, index_metaData, sequential_package);
		result_storage     = linearCollection_decrement_numElement(result_storage);
    FinSi
FinFuncion

Funcion innerIndex <- collectionStorage_GetInnerId(struct_storage, key)
	Definir innerIndex Como Numero;
	Definir key_Type Como Texto;
	key_Type = collectionStorage_getType(struct_storage);
	innerIndex = collectionStorage_GetInnerId_ByType(struct_storage, key, key_Type);
FinFuncion

Funcion innerIndex <- collectionStorage_GetInnerId_ByType(struct_storage, key, type)
	Definir innerIndex Como Numero;
	Definir key_string Como Texto;
	key_string = value_TypeToString(key, type);
	innerIndex = collectionStorage_GetInnerId_ByString(struct_storage, key_string);
FinFuncion

Funcion innerIndex <- collectionStorage_GetInnerId_ByString(struct_storage, key)
    Definir innerIndex Como Numero;
    Definir index_dataArea, count_size Como Numero;
    innerIndex     = number_NULL();
    count_size     = collectionStorage_getSize(struct_storage);
    Si count_size > 0 Entonces
        innerIndex    = __private_collectionStorage_SearchIdKey(struct_storage, key, count_size);
    FinSi
FinFuncion

Funcion Type_keys <- collectionStorage_getType(struct_storage)
	Definir Type_keys Como Texto;
	Definir index_TypeKey, index_lengthArea Como Numero;
	index_TypeKey  = math_increment(string_indexOf(struct_storage, symbol_typeArea()));
	index_lengthArea   = string_indexOf_fromIndex(struct_storage, symbol_lengthArea(), index_TypeKey);
	Type_keys      = string_substring(struct_storage, index_TypeKey, index_lengthArea);
FinFuncion

Funcion num_Keys <- collectionStorage_getSize(struct_storage)
	Definir num_Keys Como Numero;
	num_Keys       = linearCollection_getSize(struct_storage);
FinFuncion

Funcion result_storage <- collectionStorage_Exist(struct_storage, key)
	Definir result_storage Como Logico;
	result_storage = collectionStorage_GetInnerId(struct_storage, key) >= 0;
FinFuncion

Funcion result_storage <- collectionStorage_Exist_ByString(struct_storage, key)
	Definir result_storage Como Logico;
	result_storage = collectionStorage_GetInnerId_ByString(struct_storage, key) >= 0;
FinFuncion

Funcion key_id <- __private_collectionStorage_SearchIdKey(struct_storage, key_string, collection_size)
	Definir key_id, index_lengthArea, index_dataArea, index_metaData Como Numero;
	Definir result_storage, sequential_data, sequential_lengths Como Texto;
	si collection_size >= 1 Entonces
		index_lengthArea        = math_increment(string_indexOf(struct_storage, symbol_lengthArea()));
		index_dataArea       = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
		index_metaData 	= string_indexOf_fromIndex(struct_storage, symbol_metaData(), index_dataArea);
		sequential_lengths     = string_substring(struct_storage, index_lengthArea, index_dataArea);
		sequential_data           = string_substring(struct_storage, math_increment(index_dataArea), index_metaData);
		key_id				= managerData_getInnerIndex(sequential_data, sequential_lengths, collection_size, key_string);
	SiNo
		key_id = number_NULL();
	FinSi
FinFuncion

Funcion result_storage <- collectionStorage_modify(struct_storage, value, index_modify)
	Definir result_storage, TYPE, value_string Como Texto;
	TYPE           = collectionStorage_getType(struct_storage);
	value_string   = value_TypeToString(value, TYPE);
	result_storage = collectionStorage_modify_byString(struct_storage, value_string, index_modify);
FinFuncion

Funcion result_storage <- collectionStorage_modify_byString(struct_storage, value_string, index_modify)
	Definir result_storage, sequential_data, sequential_lengths, sequential_package Como Texto;
	Definir collection_size, index_lengthArea, index_dataArea, index_metaData Como Numero;
	collection_size = collectionStorage_getSize(struct_storage);
	si collection_size >= 1 Entonces
		index_lengthArea   = math_increment(string_indexOf(struct_storage, symbol_lengthArea()));
		index_dataArea     = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
		index_metaData     = collection_getIndex_metaData(struct_storage);
		sequential_lengths = string_substring(struct_storage, index_lengthArea, index_dataArea);
		sequential_data    = string_substring(struct_storage, math_increment(index_dataArea), index_metaData);
		sequential_package = managerData_modify(sequential_data, sequential_lengths, index_modify, value_string, true());
		result_storage     = collection_updateRange(struct_storage, index_lengthArea, index_metaData, sequential_package);
	SiNo
		result_storage     = struct_storage;
	FinSi
FinFuncion

Funcion result_storage <- collectionStorage_AddAll(struct_storage, struct_storage_Match)
	Definir result_storage Como Texto;
	result_storage = __private_collectionStorage_ModifyInnerData(struct_storage, struct_storage_Match, false());
FinFuncion

Funcion result_storage <- collectionStorage_DeleteAll(struct_storage, struct_storage_Match)
	Definir result_storage Como Texto;
	result_storage = __private_collectionStorage_ModifyInnerData(struct_storage, struct_storage_Match, true());
FinFuncion

Funcion result_storage <- collectionStorage_GetKeys_ToSeparatedString(struct_storage, separator)
    Definir result_storage, sequential_data, sequential_lengths Como Texto;
    Definir count_size, index_lengthArea, index_dataArea, index_metaData Como Numero;
    count_size          = collectionStorage_getSize(struct_storage);
    Si count_size > 0 Entonces
		index_lengthArea        = math_increment(string_indexOf(struct_storage, symbol_lengthArea()));
		index_dataArea       = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
		index_metaData	= string_indexOf_fromIndex(struct_storage, symbol_metaData(), index_dataArea);
		sequential_lengths     = string_substring(struct_storage, index_lengthArea, index_dataArea);
		sequential_data            = string_substring(struct_storage, math_increment(index_dataArea), index_metaData);
        result_storage = managerData_getSeparateString(sequential_data, sequential_lengths, separator);
    FinSi
FinFuncion

Funcion result_storage <- __private_collectionStorage_ModifyInnerData(struct_storage, struct_storage_Match, isDelete)
	Definir size_match, i, index_start, index_end Como Numero;
	Definir result_storage, key_Setter, key_Match, key_current, separator Como Texto;
	result_storage = struct_storage;
	size_match = collectionStorage_getSize(struct_storage_Match);
	separator = symbol_separator();
	key_Match = collectionStorage_GetKeys_ToSeparatedString(struct_storage_Match, separator);
	i = 0;
	index_start = 0;
	Mientras i < size_match Hacer
		index_end = string_indexOf_fromIndex(key_Match, separator, index_start);
		key_current = string_substring(key_Match,index_start, index_end);
		si isDelete Entonces
			result_storage = collectionStorage_delete_ByString(result_storage, key_current);
		SiNo
			result_storage = collectionStorage_add_byString(result_storage, key_current);
		FinSi
		index_start = math_increment(index_end);
		i = math_increment(i);
	FinMientras
FinFuncion

Funcion result_storage <- collectionStorage_RetainAll(struct_storage, struct_storage_Match)
	Definir size, size_match, i, index_start, index_end Como Numero;
	Definir result_storage, key_Setter, key_Match, key_current, separator Como Texto;
	Definir ExistInMatch Como Logico;
	result_storage = struct_storage;
	size_match = collectionStorage_getSize(struct_storage);
	separator = symbol_separator();
	key_Match = collectionStorage_GetKeys_ToSeparatedString(struct_storage, separator);
	i = 0;
	index_start = 0;
	Mientras i < size_match Hacer
		index_end = string_indexOf_fromIndex(key_Match, separator, index_start);
		key_current = string_substring(key_Match, index_start, index_end);
		ExistInMatch = collectionStorage_Exist_ByString(struct_storage_Match, key_Current);
		si !ExistInMatch Entonces
			result_storage = collectionStorage_delete_ByString(result_storage, key_current);
		FinSi
		index_start = math_increment(index_end);
		i = math_increment(i);
	FinMientras
FinFuncion

Funcion isDataValid <- __private_collectionStorage_IsEqualsData(struct_storage, key, size, index)
	Definir isDataValid Como Logico;
	Definir data_Inner Como Texto;
	data_Inner  = string_substring(struct_storage, index, size);
	isDataValid = number_isEquals(string_Length(key), size) & string_isEquals(key, data_Inner);
FinFuncion

Funcion result_storage <- collectionStorage_GetKeys_ToString(struct_storage)
	Definir result_storage Como Texto;
	result_storage = collectionStorage_GetKeys_ToSeparatedString(struct_storage, symbol_Separator_Simple());
FinFuncion

Funcion collectionStorage_println(struct_storage)
	__private_collectionStorage_printer(struct_storage, true());
FinFuncion

Funcion collectionStorage_print(struct_storage)
	__private_collectionStorage_printer(struct_storage, false());
FinFuncion

Funcion __private_collectionStorage_printer(struct_storage, isnewLine)
	Definir key_id, index_lengthArea, index_dataArea, index_metaData Como Numero;
	Definir sequential_data, sequential_lengths Como Texto;
	index_lengthArea        = math_increment(string_indexOf(struct_storage, symbol_lengthArea()));
	index_dataArea       = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
	index_metaData 	= string_indexOf_fromIndex(struct_storage, symbol_metaData(), index_dataArea);
	sequential_lengths     = string_substring(struct_storage, index_lengthArea, index_dataArea);
	sequential_data            = string_substring(struct_storage, math_increment(index_dataArea), index_metaData);
	__private_collection_printer(sequential_data, sequential_lengths, isnewLine);
FinFuncion

///==========[DEPENDECES]=============================================
//---[ native_ (#NAV) ]--------------------------------------------------------------------

Funcion result_string <- native_number_ToString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion

Funcion length <- native_string_length(text)
	Definir length Como Numero;
	length = Longitud(text);
FinFuncion

Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

Funcion num <- native_string_toNumber(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion native_println(text)
	Escribir text;
FinFuncion

Funcion native_print(text)
	Escribir text Sin Saltar;
FinFuncion
//---[ string_ (#STR) ]--------------------------------------------------------------------

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
FinFuncion

Funcion num <- string_length(text)
	Definir num Como Numero;
	num = native_string_length(text);
FinFuncion

Funcion result_string <- string_insert(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, false);
FinFuncion

Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Numero;
	result = string_indexOf_fromIndex(text, text_match, 0);
FinFuncion

Funcion result <- string_lastIndexOf(text, text_match)//< ---
	Definir result Como Numero;
	result = string_lastindexOf_fromIndex(text, text_match, native_string_length(text));
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

Funcion strSubs <- string_substring(result_string, start, end)
	Definir strSubs, str_data Como Texto;
	Definir end_substring Como Entero;
	message_validateIndexRange("string_substring", result_string, start, end);
	end_substring = math_max_int( math_minus(end, 1), 0);
	str_data = native_string_substring(result_string, start, end_substring);
	strSubs = if_else(number_isEquals(start, end), "", str_data);
FinFuncion

Funcion result_string <- string_NULL
	Definir result_string Como Texto;
	result_string = "";
FinFuncion

Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
FinFuncion

Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion

Funcion result_string <- __private_string_insert_general(text, text_insert, index, isReplace)
	Definir result_string, before, after Como Texto;
	Definir index_after Como Entero;
	before        = string_substring(text, 0, index);
	index_after   = math_sum(index, if_else(isReplace, native_string_length(text_insert), 0));
	after         = string_substring_from(text, math_min_int(index_after, native_string_length(text)));
	result_string = string_append_withSeparator(before, after, text_insert);
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

Funcion result_string <- char_At(text, index)
	Definir result_string Como Texto;
	Definir end_substring, text_length Como Entero;
	text_length   = native_string_length(text);
	end_substring = math_min_int(math_increment(index), text_length);
	result_string = string_substring(text, index, end_substring);
FinFuncion

Funcion boolean <- char_isNumber(char)
	Definir boolean Como Logico;
	boolean = ascii_IsNumberSymbols(char);
FinFuncion

Funcion boolean <- string_isEmpty(text)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(text, "");
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

Funcion result_str <- string_delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_delete", text, start, end);
	start_Str = string_substring(text, 0, start);//Hello <-]
	end_Str = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
FinFuncion

Funcion strSubs <- string_substring_from(result_string, start)
	Definir strSubs Como Texto;
	Definir end_substring Como Entero;
	end_substring = native_string_length(result_string);
	strSubs = string_substring(result_string, start, end_substring);
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

Funcion boolean <- string_isNumber(text)
	Definir boolean Como Logico;
	boolean = string_isNumber_int(text) | string_isNumber_float(text);
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
//---[ print_ (#PRN) ]---------------------------------------------------------------------

Funcion println(text)
	text = string_append(text, "\n");
	print(text);
FinFuncion

Funcion print(text)
	print_byseparator(text, "\n");
FinFuncion

Funcion print_byseparator(text, separator)
	__private_Print_Split(text, separator);
FinFuncion

Funcion __private_Print_Split(text, separator)
	Definir index_break_Line, text_length, length_separator Como Numero;
	index_break_Line = string_indexOf(text, separator);
	length_separator = string_Length(separator);
	Mientras index_break_Line > -1 Hacer
		native_println(string_substring(text, 0, index_break_Line));
		text = string_substring(text, math_sum(index_break_Line, length_separator), string_Length(text));
		index_break_Line = string_indexOf_fromIndex(text, separator, 0);
	FinMientras
	native_print(string_substring(text, 0, string_Length(text)));
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

Funcion result_string <- number_toString(num)
	Definir result_string Como Texto;
	result_string = native_number_ToString(num);
FinFuncion

Funcion TYPE <- TYPE_INT
	Definir TYPE Como Texto;
	TYPE = "int";
FinFuncion

Funcion Num <- number_NULL
	Definir Num Como Numero;
	Num = -1;
FinFuncion

Funcion boolean <- number_isEquals(num, num2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(num, num2);
FinFuncion

Funcion result_string <- interger_ToString(num)
	Definir result_string Como Texto;
	result_string = native_number_toString(num);
	Si !string_isNumber_int(result_string) Entonces
		exection_Error(string_append("Error de tipado Interger: ", result_string));
	FinSi
FinFuncion

Funcion TYPE <- TYPE_FLOAT
	Definir TYPE Como Texto;
	TYPE = "float";
FinFuncion

Funcion result_string <- float_ToString(num)
	Definir result_string Como Texto;
	result_string = native_number_toString(num);
	Si !string_isNumber_float(result_string) Entonces
		exection_Error(string_append("Error de tipado Float: ", result_string));
	FinSi
FinFuncion

Funcion TYPE <- TYPE_BOOLEAN
	Definir TYPE Como Texto;
	TYPE = "boolean";
FinFuncion

Funcion TYPE <- TYPE_STRING
	Definir TYPE Como Texto;
	TYPE = "string";
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

Funcion TYPE <- TYPE_OBJECT
	Definir TYPE Como Texto;
	TYPE = "object";
FinFuncion
//---[ math_ (#MAT) ]----------------------------------------------------------------------

Funcion numInc <- math_increment(num)
	Definir numInc Como Numero;
	numInc = num + 1;
FinFuncion

Funcion result <- math_max_int(value, limit)
	Definir result Como Entero;	
	result = __private_math_choose(value, limit, true());
FinFuncion

Funcion numDec <- math_minus(num, value)
	Definir numDec Como Numero;
	numDec = num - value;
FinFuncion

Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion

Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
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

Funcion boolean <- true
	Definir boolean Como Logico;
	boolean = Verdadero;
FinFuncion

Funcion boolean <- false
	Definir boolean Como Logico;
	boolean = Falso;
FinFuncion

Funcion text <- boolean_ToString(boolean)	
	Definir text Como Texto;
	text = if_else(boolean, "true", "false");
FinFuncion

Funcion boolean <- __private_isEquals_general(value1, value2)
	Definir boolean Como Logico;
	boolean = (value1 == value2);
FinFuncion
//---[ if_ (#CDT) ]------------------------------------------------------------------------

Funcion message_validateIndexRange(Function_name, result_string, start, end)
    Definir num_length Como Numero;
    num_length = string_Length(result_string);
    number_validateNumberRange(Function_name, start, 0, num_length);
    number_validateNumberRange(Function_name, end, 0, num_length);
	si (start > end) Entonces
		error_message_Function(Function_name, "Index Error: Start > End");
	FinSi
FinFuncion

Funcion result <- if_else(condition, result, result2)
	Si !(condition) Entonces
		result = result2;
	FinSi	
FinFuncion

Funcion error_message_Function(method, message)
	error_message(string_append_withSeparator(method, message, "//"));
FinFuncion

Funcion exection_Error(message_Error)
	Definir error_int Como Entero;
	log_ERROR(message_Error);
	error_int = string_NULL();
FinFuncion

Funcion error_message(message)
	native_println(symbol_Escape() + "31m[ERROR] // " + message + ".");
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

Funcion boolean <- value_isNull(value, TYPE)
	Definir boolean Como Logico;
	Segun TYPE Hacer
		caso TYPE_INT():
			boolean = number_isEquals(value, number_NULL());
		caso TYPE_FLOAT():
			boolean = number_isEquals(value, number_NULL());
		caso TYPE_BOOLEAN():
			boolean = !value;
		caso TYPE_STRING():
			boolean = string_isEquals(value, string_NULL());
		De Otro Modo:
			boolean = string_isEquals(value, object_Empty(TYPE));
	FinSegun
FinFuncion

Funcion string_Increment <- value_modify_StringNumber(string_number, num_sum)
	Definir string_Increment Como Texto;
	string_Increment = number_toString(math_sum(string_toNumber(string_number), num_sum));
FinFuncion
//---[ collection_ (#CLL) ]----------------------------------------------------------------

Funcion symbol_area <- symbol_typeArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001D
FinFuncion

Funcion symbol_area <- symbol_lengthArea
    Definir symbol_area Como Texto;
    symbol_area = "";
FinFuncion

Funcion symbol_area <- symbol_dataArea
	Definir symbol_area Como Texto;
	symbol_area = "";
FinFuncion

Funcion symbol_area <- symbol_metaData
	Definir symbol_area Como Texto;
	symbol_area = "";//001E
FinFuncion

Funcion result_string <- symbol_ExtraData
	Definir result_string Como Texto;
	result_string = "";//0003
FinFuncion

Funcion result_string <- symbol_Separator
	Definir result_string Como Texto;
	result_string = "";//001F
FinFuncion

Funcion collection_result <- collection_updateRange(struct_collection, index_start, index_end, data_string)
	Definir collection_result Como Texto;
	collection_result = string_delete(struct_collection, index_start, index_end);
	collection_result = string_insert(collection_result, data_string, index_start);
FinFuncion

Funcion index_MetaData <- collection_getIndex_metaData(struct_Collection)
	Definir index_MetaData Como Numero;
	index_MetaData = string_lastIndexOf(struct_Collection, symbol_metaData());
FinFuncion

Funcion result_string <- symbol_Separator_Simple
	Definir result_string Como Texto;
	result_string = ",";
FinFuncion

Funcion __private_collection_printer(sequential_data, sequential_lengths, isnewLine)
	managerData_printer_color(sequential_data, sequential_lengths, isnewLine, "");
FinFuncion

Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
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

Funcion inner_IdData <- managerData_getInnerIndex(sequential_data, sequential_lengths, max_NumComparations, data_string)
	Definir inner_IdData, i, num_range, length_value Como Numero;
	Definir length_summations, num_range_inc, length_data Como Numero;
	Definir num_carry, Char_Current, data_Current Como Texto;
	Definir IsNumber, BreakLoop_Data Como Logico;
	num_carry 	     = "";
	num_range		 = 0;
	num_range_inc = 0;
	i				 = 0;
	length_summations  = string_Length(sequential_lengths);
	length_data = string_length(data_string);
	BreakLoop_Data = true();
	inner_IdData = -1;
	Mientras i <= length_summations & BreakLoop_Data Hacer
		Char_Current = char_At(sequential_lengths, math_minus(length_summations, i));
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(num_carry, Char_Current);
		FinSi
		Si !IsNumber & !string_isEmpty(num_carry) | number_isEquals(i, length_summations) Entonces
			length_value = string_toNumber(num_carry);
			num_range_inc = math_sum(num_range, length_value);
			si number_isEquals(length_value, length_data)  Entonces
				data_Current     = string_substring(sequential_data, num_range, num_range_inc);
				BreakLoop_Data   = !string_isEquals(data_string, data_Current);
			FinSi
			inner_IdData    = math_increment(inner_IdData);
			num_carry       = "";// clear
			num_range       = num_range_inc;
		FinSi
		i = math_increment(i);
	FinMientras
	si BreakLoop_Data Entonces
		inner_IdData   = number_NULL();
	FinSi
FinFuncion

Funcion separated_String <- managerData_getSeparateString(sequential_data, sequential_lengths, separator)
	Definir separated_String, num_carry, Char_Current, data_Current Como Texto;
	Definir i, num_range, length_value Como Numero;
	Definir length_summations, num_range_dec Como Numero;
	Definir IsNumber Como Logico;
	num_carry 	     = "";
	separated_String = "";
	num_range		 = string_Length(sequential_data);	
	num_range_dec = 0;
	i				 = 0;
	length_summations  = string_Length(sequential_lengths);
	Mientras i <= length_summations Hacer
		Char_Current = char_At(sequential_lengths, i);
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(num_carry, Char_Current);
		FinSi
		Si !IsNumber & !string_isEmpty(num_carry) | number_isEquals(i, length_summations) Entonces
			length_value   = string_toNumber(num_carry);
			num_range_dec = math_minus(num_range, length_value);
			data_Current     = string_substring(sequential_data, num_range_dec, num_range);
			separated_String = string_append(separated_String, data_Current);
			separated_String = string_append(separated_String, separator);
			num_carry       = "";// clear
			num_range       = num_range_dec;
		FinSi
		i = math_increment(i);
	FinMientras
FinFuncion

Funcion managerData_printer_color(sequential_data, sequential_lengths, isnewLine, decorator)
	Definir separated_String, num_carry, Char_Current, current_data Como Texto;
	Definir i, num_range, length_value Como Numero;
	Definir length_summations, num_range_inc Como Numero;
	Definir IsNumber Como Logico;
	num_carry 	     = "";
	separated_String = "";
	num_range		 = 0;	
	num_range_inc  	 = 0;
	length_summations  = string_Length(sequential_lengths);
	i				 = length_summations;
	Mientras i >= 0 Hacer
		Char_Current = char_At(sequential_lengths, i);
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(Char_Current, num_carry);
		FinSi
		
		Si !IsNumber & !string_isEmpty(num_carry) | number_isEquals(i, 0) Entonces
			length_value  = string_toNumber(num_carry);
			num_range_inc = math_sum(num_range, length_value);
			current_data  = string_substring(sequential_data, num_range, num_range_inc);
			current_data  = string_append(decorator, current_data);
			si isnewLine Entonces
				println(current_data);
			SiNo
				print(current_data);
			FinSi
			num_carry = "";// clear
			num_range = num_range_inc;
		FinSi
		i = math_decrement(i);
	FinMientras
FinFuncion
//---[ linearCollection_ (#LCL) ]----------------------------------------------------------

Funcion collection_result <- linearCollection_increment_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, 1);
FinFuncion

Funcion collection_result <- linearCollection_decrement_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, -1);
FinFuncion

Funcion Size_int <- linearCollection_getSize(struct_Collection)
	Definir Size_int Como Numero;
	Size_int = string_toNumber(string_substring_from(struct_Collection, math_increment(linearCollection_getIndex_EndMetaData(struct_Collection))));
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

Funcion End_index <- linearCollection_getIndex_EndMetaData(struct_Collection)
	Definir End_index Como Numero;
	End_index = string_lastIndexOf(struct_Collection, symbol_ExtraData());
FinFuncion

Funcion new_LinearColletion <- linearCollection_new(struct_Collection, TYPE)
	Definir new_LinearColletion Como Texto;
	new_LinearColletion = string_append_withSeparator(collection_new(struct_Collection, TYPE), "0", symbol_ExtraData());
FinFuncion
//---[ object_ (#OBJ) ]--------------------------------------------------------------------

Funcion result_string <- object_Empty(type_Name)
	Definir result_string Como Texto;
	result_string = object_new(type_Name);
FinFuncion

Funcion object_result <- object_new(name_object)
	Definir object_result Como Texto;
	object_result = linearCollection_new(TYPE_OBJECT(), string_append(name_object, symbol_ExtraData()));
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
