Algoritmo MODULE_SET
	// Test call disabled: util_set_new() requires arguments
	// TODO: add valid arguments for standalone execution
FinAlgoritmo
///%%%%%[ SET................................. ]%%%%%%%[   #SET    ]%%%%%%%%%%%%%%%%%%%%

Funcion new_Set <- util_set_new(TYPE)
	Definir new_Set Como Texto;
	new_Set = cellsCollection_new(STRUCT_TYPE_SET(), TYPE, cellsCollection_getMinFixed());
FinFuncion

Funcion result_storage <- util_set_Add(struct_set, key_new)
	Definir result_storage Como Texto;
	result_storage = cellsCollection_setterDynamic_add(struct_set, key_new);
FinFuncion

Funcion result_storage <- util_set_Delete(struct_set, key_new)
	Definir result_storage Como Texto;
	result_storage = cellsCollection_setter_delete(struct_set, key_new);
FinFuncion

Funcion util_set_println(struct_set)
	cellsCollection_println(struct_set);
FinFuncion

Funcion keyExist <- util_set_Containss(struct_set, key_match)
	Definir keyExist Como Logico;
	keyExist = cellsCollection_setter_constains(struct_set, key_match);
FinFuncion

///==========[DEPENDECES]=============================================
//---[ native_ (#NAV) ]--------------------------------------------------------------------

Funcion result_string <- native_number_ToString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion

Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

Funcion native_println(text)
	Escribir text;
FinFuncion

Funcion length <- native_string_length(text)
	Definir length Como Numero;
	length = Longitud(text);
FinFuncion

Funcion num <- native_string_toNumber(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion native_print(text)
	Escribir text Sin Saltar;
FinFuncion
//---[ string_ (#STR) ]--------------------------------------------------------------------

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
FinFuncion

Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion

Funcion strSubs <- string_substring(result_string, start, end)
	Definir strSubs, str_data Como Texto;
	Definir end_substring Como Entero;
	message_validateIndexRange("string_substring", result_string, start, end);
	end_substring = math_max_int( math_minus(end, 1), 0);
	str_data = native_string_substring(result_string, start, end_substring);
	strSubs = if_else(number_isEquals(start, end), "", str_data);
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

Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Numero;
	result = string_indexOf_fromIndex(text, text_match, 0);
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

Funcion result_string <- string_trim(text)
    Definir result_string Como Texto;
	result_string = string_Strip(text, " ");
FinFuncion

Funcion boolean <- string_startsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring(text, 0, native_string_length(text_match)), text_match);
FinFuncion

Funcion strSubs <- string_substring_from(result_string, start)
	Definir strSubs Como Texto;
	Definir end_substring Como Entero;
	end_substring = native_string_length(result_string);
	strSubs = string_substring(result_string, start, end_substring);
FinFuncion

Funcion result_string <- char_At(text, index)
	Definir result_string Como Texto;
	Definir end_substring, text_length Como Entero;
	text_length   = native_string_length(text);
	end_substring = math_min_int(math_increment(index), text_length);
	result_string = string_substring(text, index, end_substring);
FinFuncion

Funcion result_string <- string_NULL
	Definir result_string Como Texto;
	result_string = "";
FinFuncion

Funcion boolean <- string_contains(text, text_match)
	Definir boolean Como Logico;
	boolean = string_indexOf(text, text_match) > -1;
FinFuncion

Funcion boolean <- string_isNumber(text)
	Definir boolean Como Logico;
	boolean = string_isNumber_int(text) | string_isNumber_float(text);
FinFuncion

Funcion result_str <- string_delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_delete", text, start, end);
	start_Str = string_substring(text, 0, start);//Hello <-]
	end_Str = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
FinFuncion

Funcion boolean <- string_isEmpty(text)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(text, "");
FinFuncion

Funcion num <- string_length(text)
	Definir num Como Numero;
	num = native_string_length(text);
FinFuncion

Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
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

Funcion result <- string_lastIndexOf(text, text_match)//< ---
	Definir result Como Numero;
	result = string_lastindexOf_fromIndex(text, text_match, native_string_length(text));
FinFuncion

Funcion result_string <- string_fit_end(text, text_pad)
	Definir result_string, res_pad Como Texto;
	Definir pad_length Como Entero;
	pad_length		= native_string_length(text_pad);
	result_string   = string_pad_limitEnd(text, text_pad, pad_length);
	result_string	= string_substring(result_string, 0, pad_length);
FinFuncion

Funcion result_string <- string_repeatText(text, repeats)
	Definir result_string Como Texto;
	Definir current_repeats, next_repeats, missing_repeats, text_length Como Entero;
	si number_isEquals(repeats, 0) Entonces
		result_string = "";
	SiNo
		result_string = text;
		current_repeats = 1;
		text_length = native_string_length(text);
		next_repeats = math_sum(current_repeats, current_repeats);
		Mientras next_repeats <= repeats Hacer
			result_string = string_append(result_string, result_string);
			current_repeats = next_repeats;
			next_repeats = math_sum(current_repeats, current_repeats);
		FinMientras
		si current_repeats < repeats Entonces
			missing_repeats = math_minus(repeats, current_repeats);
			result_string = string_append(result_string, String_subString(result_string, 0, (missing_repeats * text_length)));
		FinSi
	FinSi
FinFuncion

Funcion result_string <- string_insert(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, false);
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

Funcion result_string <- string_pad_limitEnd(text, text_pad, pad_length)
	Definir result_string, res_pad Como Texto;
	Definir text_length, res_length Como Entero;
	text_length		= native_string_length(text);
	res_length      = math_min_Int(text_length, pad_length);
	res_pad         = string_substring(text_pad, res_length, pad_length);
	result_string	= string_insert(text, res_pad, text_length);
FinFuncion

Funcion result_string <- __private_string_insert_general(text, text_insert, index, isReplace)
	Definir result_string, before, after Como Texto;
	Definir index_after Como Entero;
	before        = string_substring(text, 0, index);
	index_after   = math_sum(index, if_else(isReplace, native_string_length(text_insert), 0));
	after         = string_substring_from(text, math_min_int(index_after, native_string_length(text)));
	result_string = string_append_withSeparator(before, after, text_insert);
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

Funcion TYPE <- STRUCT_TYPE_SET
	Definir TYPE Como Texto;
	TYPE = "set";
FinFuncion

Funcion result_string <- number_toString(num)
	Definir result_string Como Texto;
	result_string = native_number_ToString(num);
FinFuncion

Funcion TYPE <- TYPE_INT
	Definir TYPE Como Texto;
	TYPE = "int";
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

Funcion boolean <- number_isEquals(num, num2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(num, num2);
FinFuncion

Funcion Num <- number_NULL
	Definir Num Como Numero;
	Num = -1;
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

Funcion result <- math_min_int(value, limit)
	Definir result Como Entero;
	result = __private_math_choose(value, limit, false());
FinFuncion

Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
FinFuncion

Funcion num_abs <- math_abs(num)
	Definir num_abs Como Numero;
	num_abs = if_else(num < 0, math_negated(num), num);
FinFuncion

Funcion num_Negate <- math_negated(num)
	Definir num_Negate Como Numero;
	num_Negate = -1 * num;
FinFuncion
//---[ boolean_ (#BOO) ]-------------------------------------------------------------------

Funcion boolean <- true
	Definir boolean Como Logico;
	boolean = Verdadero;
FinFuncion

Funcion text <- boolean_ToString(boolean)	
	Definir text Como Texto;
	text = if_else(boolean, "true", "false");
FinFuncion

Funcion boolean <- __private_isEquals_general(value1, value2)
	Definir boolean Como Logico;
	boolean = (value1 == value2);
FinFuncion

Funcion boolean <- false
	Definir boolean Como Logico;
	boolean = Falso;
FinFuncion
//---[ if_ (#CDT) ]------------------------------------------------------------------------

Funcion error_message_Function(method, message)
	error_message(string_append_withSeparator(method, message, "//"));
FinFuncion

Funcion error_message(message)
	native_println(symbol_Escape() + "31m[ERROR] // " + message + ".");
FinFuncion

Funcion exection_Error(message_Error)
	Definir error_int Como Entero;
	log_ERROR(message_Error);
	error_int = string_NULL();
FinFuncion

Funcion result <- if_else(condition, result, result2)
	Si !(condition) Entonces
		result = result2;
	FinSi	
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

Funcion string_Increment <- value_modify_StringNumber(string_number, num_sum)
	Definir string_Increment Como Texto;
	string_Increment = number_toString(math_sum(string_toNumber(string_number), num_sum));
FinFuncion
//---[ collection_ (#CLL) ]----------------------------------------------------------------

Funcion symbol_area <- symbol_typeArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001D
FinFuncion

Funcion symbol_area <- symbol_dataArea
	Definir symbol_area Como Texto;
	symbol_area = "";
FinFuncion

Funcion result_string <- symbol_ExtraData
	Definir result_string Como Texto;
	result_string = "";//0003
FinFuncion

Funcion type_area <- collection_getContent_TypeArea(collection)
	Definir type_area Como Texto;
	type_area =  collection_getContent_TypeArea_End_Of_Text(collection, symbol_dataArea());
FinFuncion

Funcion type_area <- collection_getContent_TypeArea_End_Of_Text(collection, text_end)
	Definir type_area Como Texto;
	type_area = collection_getContent_Between_Symbols(collection, symbol_typeArea(), text_end);
FinFuncion

Funcion type_area <- collection_getContent_Between_Symbols(collection, symbol_start, symbol_end)
	Definir Type_property, type_area Como Texto;
	Definir index_start, index_end, index_check Como Numero;
	index_start = math_increment(string_indexOf(collection, symbol_start));
	index_end = string_indexOf_fromIndex(collection, symbol_end, index_start);
	type_area = string_substring(collection, index_start, index_end);
FinFuncion

Funcion index_isValid <- Collection_IndexIsValid(struct_Size, index_element)
	Definir index_isValid Como Logico;
	index_isValid = (index_element >= 0 & index_element < struct_Size );
FinFuncion

Funcion index_DataArea <- collection_getIndex_dataArea(struct_Collection)
	Definir index_DataArea Como Numero;
	index_DataArea = string_IndexOf(struct_Collection, symbol_dataArea());
FinFuncion

Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion

Funcion collection_out <- collection_replaceRange(collection, data_String, index_start, index_end)
    Definir collection_out Como Texto;
    collection_out = string_delete(collection, index_start, index_end);
    collection_out = string_Insert(collection_out, data_String, index_start);
FinFuncion
//---[ managerData_ (#MDA) ]---------------------------------------------------------------

Funcion managerData_printer_cells(struct_cells, count_size, data_length, isBreakLine)
	managerData_printer_cells_decorator(struct_cells, count_size, data_length, "", isBreakLine);
FinFuncion

Funcion managerData_printer_cells_decorator(struct_cells, count_size, data_length, decorator, isBreakLine)
	Definir i, current_pos, next_pos Como Entero;
	Definir current_data Como Texto;
	current_pos = 0;
	i = 0;
	Mientras i < count_size Hacer
		next_pos = math_sum(current_pos, data_length);
		current_data = String_Substring(struct_cells, current_pos, next_pos);
		current_data = cellsCollection_clear_cellString(current_data, data_length);
		current_data = string_append(decorator, current_data);
		Si isBreakLine Entonces
			native_println(current_data);
		SiNo
			native_print(current_data);
		FinSi
		current_pos = next_pos;
		i = math_increment(i);
	FinMientras
FinFuncion
//---[ linearCollection_ (#LCL) ]----------------------------------------------------------

Funcion collection_result <- linearCollection_decrement_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, -1);
FinFuncion

Funcion Size_int <- linearCollection_getSize(struct_Collection)
	Definir Size_int Como Numero;
	Size_int = string_toNumber(string_substring_from(struct_Collection, math_increment(linearCollection_getIndex_EndMetaData(struct_Collection))));
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

Funcion End_index <- linearCollection_getIndex_EndMetaData(struct_Collection)
	Definir End_index Como Numero;
	End_index = string_lastIndexOf(struct_Collection, symbol_ExtraData());
FinFuncion
//---[ cellsCollection_ (#CCO) ]-----------------------------------------------------------

Funcion new_cellsCollection <- cellsCollection_new(struct_name, TYPE, fixed_Length)
	Definir new_cellsCollection Como Texto;
	new_cellsCollection = String_append(struct_name, symbol_cell_length());
	new_cellsCollection = String_append(new_cellsCollection, cellsCollection_setNormCellLength(fixed_Length));
	new_cellsCollection = String_append(new_cellsCollection, symbol_typeArea());
	new_cellsCollection = String_append(new_cellsCollection, TYPE);
	new_cellsCollection = String_append(new_cellsCollection, symbol_dataArea());
	new_cellsCollection = String_append(new_cellsCollection, symbol_extraData());
	new_cellsCollection = String_append(new_cellsCollection, "0");
FinFuncion

Funcion min_fixed <- cellsCollection_getMinFixed
	Definir min_fixed Como Entero;
	min_fixed = 1;
FinFuncion

Funcion result_cells <- cellsCollection_setterDynamic_add(struct_cells, element)
	Definir result_cells, TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_cells);
	result_cells = cellsCollection_setterDynamic_add_byType(struct_cells, element, TYPE);
FinFuncion

Funcion cellsCollection_println(struct_cells)
	__private_cellsCollection_printer(struct_cells, true());	
FinFuncion

Funcion length_result <- cellsCollection_setNormCellLength(fixed_Length)
	Definir length_result Como Texto;
    Definir length_valid, min_length Como Entero;
	min_length = cellsCollection_getMinFixed();
    length_valid = fixed_Length;
    Si length_valid < min_length Entonces
        error_message_function("cellsCollection_setNormCellLength(fixed_Length)", "fixed_Length < 1");
        length_valid = min_length;
    FinSi
	length_result = number_toString(length_valid);
FinFuncion

Funcion result_cells <- cellsCollection_setterDynamic_add_byType(struct_cells, element, TYPE)
	Definir result_cells, element_string Como Texto;
	element_string = value_TypeToString(element, TYPE);
	result_cells = cellsCollection_setterDynamic_add_byString(struct_cells, element_string);
FinFuncion

Funcion TYPE <- cellsCollection_getType(struct_cells)
	Definir TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_cells);
FinFuncion

Funcion __private_cellsCollection_printer(struct_cells, isBreakLine)
	Definir data_string Como Texto;
	Definir start_data, end_data, count_size, data_length Como Numero;
	count_size  = cellsCollection_getSize(struct_cells);
	data_length = cellsCollection_getCellLength(struct_cells);
	start_data  = cellsCollection_getStartData(struct_cells);
	end_data    = cellsCollection_calcule_indexBlock(start_data, count_size, data_length);
	data_string = string_substring(struct_cells, start_data, end_data);
	managerData_printer_cells(data_string, count_size, data_length, isBreakLine);
FinFuncion

Funcion result_cells <- cellsCollection_setterDynamic_add_byString(struct_cells, element_string)
	Definir result_cells Como Texto;
	si cellsCollection_setter_constains(struct_cells, element_string) Entonces
		result_cells = struct_cells;
	SiNo
		result_cells = cellsCollection_Dynamic_add_byString(struct_cells, element_string);
	FinSi
FinFuncion

Funcion result_cells <- cellsCollection_delete_byIndex(struct, index)
	Definir result_cells Como Texto;
	Definir index_dataArea, cells_size, cell_length Como Entero;
	result_cells = struct_cells;
	cells_size = cellsCollection_getSize(result_cells);
	si Collection_IndexIsValid(cells_size, index) Entonces
		cell_length = cellsCollection_getCellLength(result_cells);
		index_dataArea    = math_increment(String_indexOf(result_cells, symbol_dataArea()));
		result_cells     = cellsCollection_delete_byIndex_force(struct, index, index_dataArea, cell_length);
		result_cells     = linearCollection_decrement_numElement(result_cells);
	SiNo
		error_message_Function("cellsCollection_delete_byIndex(struct, index)", "index invalid");
	FinSi
FinFuncion

Funcion size_dataBlock <- cellsCollection_getSize(struct_name)
	Definir size_dataBlock Como Entero;	
	size_dataBlock = linearCollection_getSize(struct_name);
FinFuncion

Funcion cell_length <- cellsCollection_getCellLength(struct_cells)
	Definir cell_length, index_symbol_cell Como Entero;	
	Definir cell_length_String Como Texto;
	index_symbol_cell  = string_indexOf(struct_cells, symbol_cell_length());
	index_symbol_cell  = math_increment(index_symbol_cell);
	cell_length_String = ascii_getPrefix_Numbers_fromIndex(struct_cells, index_symbol_cell);
	cell_length        = string_toNumber(cell_length_String);
FinFuncion

Funcion index_startData <- cellsCollection_getStartData(struct_cells)
	Definir index_startData Como Entero;
	index_startData = math_increment(collection_getIndex_dataArea(struct_cells));
FinFuncion

Funcion cells_index <- cellsCollection_calcule_indexBlock(index_start, index_search, cell_length)
	Definir cells_index Como Entero;
	cells_index = math_sum(index_start, (index_search * cell_length));
FinFuncion

Funcion result_cells <- cellsCollection_delete_byIndex_force(struct_cells, index, index_start, cell_length)
	Definir result_cells Como Texto;
	Definir cells_index, cells_index_end, cells_size Como Entero;
	result_cells = struct_cells;
	cells_index     = cellsCollection_calcule_indexBlock(index_start, index, cell_length);
	cells_index_end = math_sum(cells_index, cell_length);
	result_cells    = string_delete(result_cells, cells_index, cells_index_end);
FinFuncion

Funcion result_string <- cellsCollection_clear_cellString(element_string, cell_length)
	Definir result_string Como Texto;
	Definir index_clear Como Entero;
	index_clear = cellsCollection_indexOf_clearData(element_string, cell_length);
	result_string = string_substring(element_string, 0, index_clear);
FinFuncion

Funcion element_cells <- cellsCollection_String_normalizedToBlockLegth(element_string, cell_length)
	Definir element_cells Como Texto;
	element_cells = string_fit_end(element_string, String_repeatText(cellsCollection_symbol_null(), cell_length));
FinFuncion

Funcion result_cells <- cellsCollection_add_byString_force(struct_cells, element_string, index_start, index_insert, cell_length)
	Definir result_cells Como Texto;
	Definir cells_index, cells_size Como Entero;
	result_cells = struct_cells;
	element_string = cellsCollection_String_normalizedToBlockLegth(element_string, cell_length);
	cells_index = cellsCollection_calcule_indexBlock(index_start, index_insert, cell_length);
	result_cells = String_insert(result_cells, element_string, cells_index);
FinFuncion

Funcion index_clear <- cellsCollection_indexOf_clearData(dataBlock, cell_length)
	Definir index_clear Como Entero;
	Definir current_char Como Texto;
	Definir no_found Como Logico;
	index_clear = cell_length;
	no_found = true();
	Mientras (index_clear > 0) & no_found Hacer
		current_char = char_At(dataBlock, math_decrement(index_clear));
		Si String_isEquals(current_char, cellsCollection_symbol_null()) Entonces
			index_clear = math_decrement(index_clear);
		Sino
			no_found = false();
		FinSi
	FinMientras
FinFuncion

Funcion symbol <- cellsCollection_symbol_null
	Definir symbol Como Texto;
	symbol = "";
FinFuncion

Funcion cells_index <- cellsCollection_calcule_indexBlock_atEnd(index_end, index_search, cell_length)
	Definir cells_index Como Entero;
	cells_index = math_minus(index_end, (index_search * cell_length));
FinFuncion
//---[ cellsCollection_dynamic_ (#CCD) ]---------------------------------------------------

Funcion result_cells <- cellsCollection_Dynamic_add_byString(struct_cells, element_string)
	Definir result_cells Como Texto;
	Definir index_dataArea, cell_length, cells_size Como Entero;
	result_cells  = struct_cells;
	cell_length  = cellsCollection_getCellLength(result_cells);
	index_dataArea = cellsCollection_getStartData(struct_cells);
	cells_size    = cellsCollection_getSize(result_cells);
	result_cells  =  cellsCollection_Dynamic_add_byString_force(struct_cells, element_string, index_dataArea, cells_size, cell_length);
	result_cells  = linearCollection_increment_numElement(result_cells);
FinFuncion

Funcion result_cells <- cellsCollection_Dynamic_add_byString_force(struct_cells, element_string, index_start, index_insert, cell_length)
	Definir result_cells Como Texto;
	Definir element_length Como Entero;
	result_cells  = struct_cells;
	element_length = String_length(element_string);
	result_cells  = cellsCollection_Dynamic_ensureCapacity(struct_cells, cell_length, element_length);
	cell_length  = math_max_Int(cell_length, element_length);
	result_cells  = cellsCollection_add_byString_force(result_cells, element_string, index_start, index_insert, cell_length);
FinFuncion

Funcion result_cells <- cellsCollection_Dynamic_ensureCapacity(struct_cells, cell_length, required_length)
	Definir result_cells Como Texto;
	result_cells = struct_cells;
	si required_length > cell_length Entonces
		result_cells = cellsCollection_Dynamic_reSize(result_cells, required_length);
	FinSi
FinFuncion

Funcion result_cells <- cellsCollection_Dynamic_reSize(struct_cells, new_fixed_Length)
	Definir result_cells Como Texto;
	Definir cells_size Como Entero;
	result_cells = struct_cells;
	cells_size   = cellsCollection_getSize(result_cells);
	result_cells = cellsCollection_Dynamic_reSize_inRange(result_cells, new_fixed_Length, 0, cells_size);
	result_cells = cellsCollection_Dynamic_UpdateLength(result_cells, new_fixed_Length);
FinFuncion

Funcion result_cells <- cellsCollection_Dynamic_reSize_inRange(struct_cells, new_fixed_Length, index_start, index_end)
	Definir result_cells Como Texto;
	Definir cell_length, index_endData, index_startData Como Entero;
	result_cells = struct_cells;
	cell_length = cellsCollection_getCellLength(result_cells);
	index_startData = cellsCollection_getStartData(result_cells);
	index_endData = cellsCollection_calcule_indexBlock(index_startData, index_end, cell_length);
	result_cells = cellsCollection_Dynamic_reSize_inRange_force(result_cells, new_fixed_Length, index_start, index_end, index_endData, cell_length);
FinFuncion

Funcion result_cells <- cellsCollection_Dynamic_UpdateLength(struct_cells, new_fixed_length)
	Definir result_cells, fixed_length Como Texto;
	Definir start_fixed, end_fixed Como Entero;
	start_fixed = math_increment(string_indexOf(struct_cells, symbol_cell_length()));
	end_fixed   = math_increment(ascii_getEndIndex_Category(struct_cells, start_fixed, ascii_NUMBER()));
	fixed_length = number_toString(new_fixed_length);
	result_cells = collection_replaceRange(struct_cells, fixed_length, start_fixed, end_fixed);
FinFuncion

Funcion result_cells <- cellsCollection_Dynamic_reSize_inRange_force(struct_cells, new_fixed_Length, index_start, index_end, index_endData, cell_length)
	Definir result_cells Como Texto;
	Definir  diff Como Entero;
	diff = math_minus(new_fixed_Length, cell_length);
	result_cells = struct_cells;
	Si diff > 0 Entonces
		result_cells = __private_cellsCollection_Dynamic_applyPadding(result_cells, diff, index_endData, index_start, index_end, cell_length);
	FinSi
	Si diff < 0 Entonces
		diff = math_abs(diff);
		result_cells = __private_cellsCollection_Dynamic_applyCropping(result_cells, diff, index_endData, index_start, index_end, cell_length);
	FinSi
FinFuncion

Funcion result_Padding <- __private_cellsCollection_Dynamic_applyPadding(struct_cells, amount, index_endData, index_start, index_end, cell_length)
	Definir result_Padding, padding_null Como Texto;
	Definir current_pos, i Como Entero;
	result_Padding = struct_cells;
	padding_null = string_repeatText(cellsCollection_symbol_Null(), amount);
	i = index_start;
	Mientras i < index_end Hacer
		current_pos = cellsCollection_calcule_indexBlock_atEnd(index_endData, i, cell_length);
		result_Padding = String_Insert(result_Padding, padding_null, current_pos);
		i = math_increment(i);
	FinMientras
FinFuncion

Funcion result_cells <- __private_cellsCollection_Dynamic_applyCropping(struct_cells, amount, index_endData, index_start, index_end, cell_length)
	Definir result_cells Como Texto;
	Definir current_pos, i Como Entero;
	result_cells = struct_cells;
	i = index_start;
	Mientras i < index_end Hacer
		current_pos = cellsCollection_calcule_indexBlock_atEnd(index_endData, i, cell_length);
		result_cells = string_delete(result_cells, math_minus(current_pos, amount), current_pos);
		i = math_increment(i);
	FinMientras
FinFuncion
//---[ cellsCollection_setter_ (#CCS) ]----------------------------------------------------

Funcion result_cells <- cellsCollection_setter_delete(struct_cells, value)
	Definir result_cells, TYPE, value_string Como Texto;
	TYPE = cellsCollection_getType(struct_cells);
	value_string = value_TypeToString(value, TYPE);
	result_cells = cellsCollection_setter_delete_byString(struct_cells, value_string);
FinFuncion

Funcion constains_string <- cellsCollection_setter_constains(struct_cells, element_string)
	Definir constains_string Como Logico;
	constains_string = cellsCollection_setter_getIndex_byString(struct_cells, element_string) >= 0;
FinFuncion

Funcion result_cells <- cellsCollection_setter_delete_byString(struct_cells, value_string)
	Definir result_cells Como Texto;
	Definir index_target Como Entero;
	index_target = cellsCollection_setter_getIndex_byString(struct_cells, value_string);
	si !number_isEquals(index_target, number_NULL()) Entonces
		result_cells = cellsCollection_delete_byIndex(struct_cells, index_target);
	FinSi
FinFuncion

Funcion index_cell <- cellsCollection_setter_getIndex_byString(struct_cells, element_string)
	Definir index_cell, cells_size Como Entero;
	cells_size = cellsCollection_getSize(struct_cells);
	index_cell <- cellsCollection_setter_getIndex_byString_inRange(struct_cells, element_string, 0, cells_size);
FinFuncion

Funcion index_cell <- cellsCollection_setter_getIndex_byString_inRange(struct_cells, element_string, index_start, index_end)
	Definir index_cell, cell_length, index_startData Como Entero;
	cell_length = cellsCollection_getCellLength(struct_cells);
	index_startData = cellsCollection_getStartData(struct_cells);
	index_cell  = cellsCollection_setter_getIndex_byString_inRange_force(struct_cells, element_string, index_start, index_end, index_startData, cell_length);
FinFuncion

Funcion index_cell <- cellsCollection_setter_getIndex_byString_inRange_force(struct_cells, element_string, index_start, index_end, index_data, cell_length)
	Definir index_cell, i, current_pos, next_pos Como Entero;
	Definir current_data Como Texto;
	element_string = cellsCollection_String_normalizedToBlockLegth(element_string, cell_length);
	index_cell = number_NULL();
	i = index_start;
	current_pos = index_data;
	Mientras i < index_end Hacer
		next_pos = math_sum(current_pos, cell_length);
		current_data = String_Substring(struct_cells, current_pos, next_pos);
		Si string_isEquals(element_string, current_data) Entonces
			index_cell = i;
			i = index_end;
		FinSi
		current_pos = math_sum(current_pos, cell_length);
		i = math_increment(i);
	FinMientras
FinFuncion
//---[ collectionDualCells_ (#DCC) ]-------------------------------------------------------

Funcion symbol <- symbol_cell_length
	Definir symbol Como Texto;
	symbol = "";
FinFuncion
//---[ ascii_ (#ASC) ]---------------------------------------------------------------------

Funcion result_String <- ascii_getPrefix_Numbers_fromIndex(text_input, start_position)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Category_fromIndex(text_input, start_position, ascii_NUMBER());
FinFuncion

Funcion isType <- ascii_IsNumberSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '0', '9');//48-57
FinFuncion

Funcion result_String <- ascii_getPrefix_Category_fromIndex(text_input, start_position, ascii_category)
    Definir result_String Como Texto;
    Definir end_position Como Entero;
	end_position = ascii_getEndIndex_Category(text_input, start_position, ascii_category);
	si number_isEquals(end_position, number_NULL()) Entonces
		result_String = string_NULL();
	SiNo
		result_String = string_substring(text_input, start_position, math_increment(end_position));
	FinSi
FinFuncion

Funcion ascii_category <- ascii_NUMBER
    Definir ascii_category Como Texto; 
    ascii_category = "NUMBER";
FinFuncion

Funcion iSinRangue <- ascii_isInRangue(char, char_start, char_end)
	Definir iSinRangue Como Logico;
	iSinRangue = (char_start <= char & char <= char_end);
FinFuncion

Funcion end_position <- ascii_getEndIndex_Category(text_input, start_position, ascii_category)
    Definir end_position, i, length_Text Como Entero;
    Definir Char_Current Como Texto;
    Definir isCategoryValid Como Logico;
    i = start_position;
    end_position = number_NULL();
    isCategoryValid = true();
    length_Text = string_Length(text_input);
    Mientras i < length_Text & isCategoryValid Hacer
        Char_Current = char_At(text_input, i);
        isCategoryValid = ascii_IsCategory(Char_Current, ascii_category);
        Si isCategoryValid Entonces
            end_position = i;
            i = math_increment(i);
        FinSi
    FinMientras
FinFuncion

Funcion category_Check <- ascii_IsCategory(char, category_name)
    Definir category_Check Como Logico;
    Definir index_category Como Entero;
    index_category = ascii_getIndexCategory(category_name);
    category_Check = ascii_IsCategory_index(char, index_category);
	si string_isEquals(category_name, ascii_ALPHABETIC()) Entonces
		category_Check = ascii_IsLetters(char);
	FinSi
FinFuncion

Funcion index_category <- ascii_getIndexCategory(ascii_category)
    Definir index_category Como Entero;
    Segun ascii_category Hacer
        ascii_CONTROL():
            index_category = 0;
        ascii_BASIC():
            index_category = 1;
        ascii_NUMBER():
            index_category = 2;
        ascii_OPERATOR():
            index_category = 3;
        ascii_ALPHABETIC_UPPER():
            index_category = 4;
        ascii_SPECIAL():
            index_category = 5;
        ascii_ALPHABETIC_LOWER():
            index_category = 6;
        ascii_EXTRA():
            index_category = 7;
        De Otro Modo:
            index_category = -1; 
    FinSegun
FinFuncion

Funcion category_Check <- ascii_IsCategory_index(char, index)
	Definir category_Check Como Logico;
	segun index Hacer
		0: category_Check  = ascii_IsControlSymbols(char);
		1: category_Check  = ascii_IsBasicSymbols(char);
		2: category_Check  = ascii_IsNumberSymbols(char);
		3: category_Check  = ascii_IsOperatorSymbols(char);
		4: category_Check  = ascii_IsLetters_UpperCase(char);
		5: category_Check  = ascii_IsSpecialSymbols(char);
		6: category_Check  = ascii_IsLetter_LowerCase(char);
		7: category_Check  = ascii_IsExtraSymbols(char);
		De Otro Modo: category_Check  = false();
	FinSegun
FinFuncion

Funcion ascii_category <- ascii_ALPHABETIC
    Definir ascii_category Como Texto; 
    ascii_category = "ALPHABETIC";
FinFuncion

Funcion isType <- ascii_IsLetters(char)
	Definir isType Como Logico;
	isType = ascii_IsLetters_UpperCase(char) | ascii_IsLetter_LowerCase(char);//65-90
FinFuncion

Funcion ascii_category <- ascii_CONTROL
    Definir ascii_category Como Texto; 
    ascii_category = "CONTROL";
FinFuncion

Funcion ascii_category <- ascii_BASIC
    Definir ascii_category Como Texto; 
    ascii_category = "BASIC";
FinFuncion

Funcion ascii_category <- ascii_OPERATOR
    Definir ascii_category Como Texto; 
    ascii_category = "OPERATOR";
FinFuncion

Funcion ascii_category <- ascii_ALPHABETIC_UPPER
    Definir ascii_category Como Texto; 
    ascii_category = "ALPHABETIC_UPPER";
FinFuncion

Funcion ascii_category <- ascii_SPECIAL
    Definir ascii_category Como Texto; 
    ascii_category = "SPECIAL";
FinFuncion

Funcion ascii_category <- ascii_ALPHABETIC_LOWER
    Definir ascii_category Como Texto; 
    ascii_category = "ALPHABETIC_LOWER";
FinFuncion

Funcion ascii_category <- ascii_EXTRA
    Definir ascii_category Como Texto; 
    ascii_category = "EXTRA";
FinFuncion

Funcion isType <- ascii_IsControlSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '', '');//0-31
FinFuncion

Funcion isType <- ascii_IsBasicSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, ' ', '/');//32-47
FinFuncion

Funcion isType <- ascii_IsOperatorSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, ':', '@');//58-64
FinFuncion

Funcion isType <- ascii_IsLetters_UpperCase(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, 'A', 'Z');//65-90
FinFuncion

Funcion isType <- ascii_IsSpecialSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '`', '`');//91-96
FinFuncion

Funcion isType <- ascii_IsLetter_LowerCase(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, 'a', 'z');//97-122
FinFuncion

Funcion isType <- ascii_IsExtraSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '{', '');//123-126
FinFuncion
