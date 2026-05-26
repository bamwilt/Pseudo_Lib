Algoritmo MODULE_STORAGE_CELLS_COLLECTION
	// Test call disabled: storageCellsCollection_new() requires arguments
	// TODO: add valid arguments for standalone execution
FinAlgoritmo
///%%%%%[ STORAGE_CELLS_COLLECTION............ ]%%%%%%%[   #SCC    ]%%%%%%%%%%%%%%%%%%%%

Funcion collection_storage <- storageCellsCollection_new(struct_name, TYPE_CELL, TYPE_LINEAR)
	Definir collection_storage Como Texto;
	collection_storage = storageCellsCollection_new_setLengthCell(struct_name, TYPE_CELL, TYPE_LINEAR, 1);
FinFuncion

Funcion collection_storage <- storageCellsCollection_new_setLengthCell(struct_name, TYPE_CELL, TYPE_LINEAR, fixed_Length)
	Definir collection_storage, min_fixed, region_width, region_type  Como Texto;
	Definir index_insert Como Entero;
	collection_storage = collectionStorage_new(struct_name, TYPE_LINEAR);
	region_type        = String_append(symbol_cell_type(), TYPE_CELL);
	index_insert       = collection_getIndex_typeArea(collection_storage);
	collection_storage = string_insert(collection_storage, region_type, index_insert);
	index_insert       = linearCollection_getIndex_extraData(collection_storage);
	region_width       = cellsCollection_setNormCellLength(fixed_Length);
	collection_storage = string_insert(collection_storage, region_width, index_insert);
FinFuncion

Funcion result_storage <- storageCellsCollection_modifyData_byCell(struct_storageCells, value_search, value)
	Definir result_storage, TYPE, string_search Como Texto;
	TYPE           = storageCellsCollection_getType(struct_storageCells);
	string_search  = value_TypeToString(value_search, TYPE);
	result_storage = storageCellsCollection_modifyData_byCell_String(struct_storageCells, string_search, value);
FinFuncion

Funcion result_storage <- storageCellsCollection_modifyData_byCell_String(struct_storageCells, string_search, value)
	Definir result_storage Como Texto;
	Definir index_target Como Entero;
	index_target = storageCellsCollection_getCellIndex_byString(struct_storageCells, string_search);
	si number_isEquals(value, number_NULL()) Entonces
		result_storage = struct_storageCells;
	SiNo
		result_storage = collectionStorage_modify(struct_storageCells, value, index_target);
	FinSi
FinFuncion

Funcion value_result <- storageCellsCollection_getData_byCell(struct_storageCells, value_search)
	Definir TYPE, value_string Como Texto;
	value_string = storageCellsCollection_getData_byCell_toString(struct_storageCells, value_search);
	TYPE = collectionStorage_getType(struct_storageCells);
	Segun TYPE Hacer
		caso     TYPE_INT(): Definir value_result Como Numero;
		caso   TYPE_FLOAT(): Definir value_result Como Real;
		caso TYPE_BOOLEAN(): Definir value_result Como Logico;
		De Otro Modo:        Definir value_result Como Texto;
	FinSegun
	value_result = value_stringToType(value_string, TYPE);
FinFuncion

Funcion value_string <- storageCellsCollection_getData_byCell_toString(struct_storageCells, value_search)
	Definir value_string, TYPE, sequential_data, sequential_lengths, string_search Como Texto;
	Definir index_target, index_endData, cells_size, right_startData, cell_length Como Entero;
	Definir index_lengthArea, index_dataArea, index_metaData Como Entero;
	TYPE = dualCellsCollection_getType_right(struct_storageCells);
	string_search         = value_TypeToString(value_search, TYPE);
	cell_length           = dualCellsCollection_getCellLength_right(struct_storageCells);
	index_endData         = dualCellsCollection_getEndData(struct_storageCells);
	cells_size            = cellsCollection_getSize(struct_storageCells);
	right_startData       = cellsCollection_calcule_indexBlock_atEnd(index_endData, cells_size, cell_length);
	index_target          = storageCellsCollection_getCellIndex_force(struct_storageCells, string_search, cells_size, right_startData, cell_length);
	Si (index_target >= 0) Entonces
		value_string = collectionStorage_get_toString_force(struct_storageCells, index_target, right_startData);
	SiNo
		value_string = string_NULL();
	FinSi
FinFuncion

Funcion collection_size <- storageCellsCollection_getSize(struct_storageCells)
	Definir collection_size Como Entero;
	collection_size = linearCollection_getSize(struct_storageCells);
FinFuncion

Funcion cell_length <- storageCellsCollection_getCellLength(struct_storageCells)
	Definir cell_length Como Entero;
	cell_length = dualCellsCollection_getCellLength_right(struct_storageCells);
FinFuncion

Funcion TYPE <- storageCellsCollection_getType(struct_storageCells)
	Definir TYPE Como Texto;
	TYPE = dualCellsCollection_getType_right(struct_storageCells);
FinFuncion

Funcion index_target <- storageCellsCollection_getCellIndex(struct_storageCells, value_search)
	Definir string_search, TYPE Como Texto;
	Definir index_target  Como Entero;
	TYPE          = dualCellsCollection_getType_right(struct_storageCells);
	string_search = value_TypeToString(value_search, TYPE);
	index_target  = storageCellsCollection_getCellIndex_byString(struct_storageCells, string_search);
FinFuncion

Funcion index_target <- storageCellsCollection_getCellIndex_byString(struct_storageCells, string_search)
	Definir index_target, index_endData, cells_size, right_startData, cell_length Como Entero;
	cell_length     = storageCellsCollection_getCellLength(struct_storageCells);
	index_endData   = dualCellsCollection_getEndData(struct_storageCells);
	cells_size      = cellsCollection_getSize(struct_storageCells);
	right_startData = cellsCollection_calcule_indexBlock_atEnd(index_endData, cells_size, cell_length);	
	index_target    = storageCellsCollection_getCellIndex_force(struct_storageCells, string_search, cells_size, right_startData, cell_length);
FinFuncion

Funcion norm_target <- storageCellsCollection_getCellIndex_force(result_storage, string_search, count_size, right_startData, cell_length)
    Definir norm_target, index_target, search_Length Como Entero;
	Definir index_isInvalid Como Logico;
	search_Length   = string_Length(string_search);
	index_isInvalid = search_Length > cell_length;
	si !index_isInvalid Entonces
		index_target    = cellsCollection_setter_getIndex_byString_inRange_force(result_storage, string_search, 0, count_size, right_startData, cell_length);
		index_isInvalid = number_isEquals(index_target, number_NULL());
	FinSi
	si index_isInvalid Entonces
		norm_target = number_NULL();
	SiNo
		norm_target = math_minus(math_decrement(count_size), index_target);
	FinSi
FinFuncion

Funcion result_storage <- storageCellsCollection_add(struct_storage, value_cell, value_linear)
    Definir result_storage, TYPE_CELL, TYPE_LINEAR Como Texto;
    TYPE_CELL      = dualCellsCollection_getType_right(struct_storage);
    TYPE_LINEAR    = collectionStorage_getType(struct_storage);
    result_storage = storageCellsCollection_add_byType(struct_storage, value_cell, value_linear, TYPE_CELL, TYPE_LINEAR);
FinFuncion

Funcion result_storage <- storageCellsCollection_add_byType(struct_storage, value_cell, value_linear, TYPE_CELL, TYPE_LINEAR)
    Definir result_storage, value_string, data_string Como Texto;
    value_string = value_TypeToString(value_cell, TYPE_CELL);
    data_string  = value_TypeToString(value_linear, TYPE_LINEAR);
    result_storage = storageCellsCollection_add_byString(struct_storage, value_string, data_string);
FinFuncion

Funcion result_storage <- storageCellsCollection_add_byString(struct_storage, value_string, data_string)
	Definir result_storage Como Texto;
	result_storage = storageCellsCollection_mode_add_byString(struct_storage, value_string, CELL_DYNAMIC(), data_string);
FinFuncion

Funcion result_storage <- storageCellsCollection_add_setter(struct_storage, value_cell, value_linear)
	Definir result_storage, TYPE_CELL, TYPE_LINEAR Como Texto;
	TYPE_CELL      = dualCellsCollection_getType_right(struct_storage);
	TYPE_LINEAR    = collectionStorage_getType(struct_storage); 
	result_storage = storageCellsCollection_add_setter_byType(struct_storage, value_cell, value_linear, TYPE_CELL, TYPE_LINEAR);
FinFuncion

Funcion result_storage <- storageCellsCollection_add_setter_byType(struct_storage, value_cell, value_linear, TYPE_CELL, TYPE_LINEAR)
	Definir result_storage, value_string, data_string Como Texto;
	value_string   = value_TypeToString( value_cell, TYPE_CELL);
	data_string    = value_TypeToString( value_linear, TYPE_LINEAR);
	result_storage = storageCellsCollection_add_setter_byString(struct_storage, value_string, data_string);
FinFuncion

Funcion result_storage <- storageCellsCollection_add_setter_byString(struct_storage, value_string, data_string)
	Definir result_storage Como Texto;
	result_storage = storageCellsCollection_mode_add_byString(struct_storage, value_string, CELL_SETTER_DYNAMIC(), data_string);
FinFuncion

Funcion result_storage <- storageCellsCollection_mode_add(struct_storage, value_cell, CELL_MODE, value_linear)
	Definir result_storage, TYPE_CELL, TYPE_LINEAR Como Texto;
	TYPE_CELL      = dualCellsCollection_getType_right(struct_storage);
	TYPE_LINEAR    = linearCollection_getType(struct_storage); 
	result_storage = storageCellsCollection_mode_add_byType(struct_storage, value_cell, CELL_MODE, value_linear, TYPE_CELL, TYPE_LINEAR);
FinFuncion

Funcion result_storage <- storageCellsCollection_mode_add_byType(struct_storage, value_cell, CELL_MODE, value_linear, TYPE_CELL, TYPE_LINEAR)
	Definir result_storage, value_string, data_string Como Texto;
	value_string   = value_TypeToString(value_cell, TYPE_CELL);
	data_string    = value_TypeToString(value_linear, TYPE_LINEAR);
	result_storage = storageCellsCollection_mode_add_byString(struct_storage, value_string, CELL_MODE, data_string);
FinFuncion

Funcion result_storage <- storageCellsCollection_mode_add_byString(struct_storageCells, value_string, CELL_MODE, data_string)
	Definir result_storage Como Texto;
	Definir index_endData, cell_length, count_size, index_target Como Entero;
	Definir last_length, right_startData, index_lengthArea Como Entero;
	Definir isValidFixed, isChanged Como Logico;
	result_storage = struct_storageCells;
	cell_length    = storageCellsCollection_getCellLength(result_storage);
	last_length    = string_Length(result_storage);
	isValidFixed   = dualCellsCollection_validateFixedLength_Mode(value_string, cell_length, CELL_MODE, "[RIGHT]");
	si isValidFixed Entonces
		count_size     = dualCellsCollection_getSize(result_storage);
		index_endData  = dualCellsCollection_getEndData(result_storage);
		result_storage = dualCellsCollection_mode_add_byString_right_force(result_storage, value_string, index_endData, count_size, cell_length, CELL_MODE);
	FinSi 
	right_startData = math_minus(index_endData, count_size * cell_length);
	isChanged       = cellsCollection_isChanged(result_storage, last_length);
	si isChanged Entonces
		index_lengthArea = math_increment(string_indexOf(result_storage, symbol_lengthArea()));
		result_storage   = collectionStorage_add_byString_force(result_storage, data_string, index_lengthArea, right_startData);//revisar
		result_storage   = linearCollection_increment_numElement(result_storage);
	FinSi
	Si isValidFixed & !isChanged Entonces
		index_target     = storageCellsCollection_getCellIndex_force(result_storage, value_string, count_size, right_startData, cell_length);
		result_storage   = collectionStorage_modify_byString(result_storage, data_string, index_target);
	FinSi
FinFuncion

Funcion result_storage <- storageCellsCollection_delete(struct_storageCells, value_search)
	Definir result_storage, TYPE, string_search Como Texto;
	TYPE           = storageCellsCollection_getType(struct_storageCells);
	string_search  = value_TypeToString(value_search, TYPE);
	result_storage = storageCellsCollection_delete_byString(struct_storageCells, string_search);
FinFuncion

Funcion result_storage <- storageCellsCollection_delete_byString(struct_storageCells, string_search)
	Definir result_storage Como Texto;
	Definir right_startData, index_endData, count_size, index_target, cell_length, index_lengthArea, norm_target Como Entero;
	result_storage   = struct_storageCells;
	count_size       = cellsCollection_getSize(result_storage);
	cell_length      = storageCellsCollection_getCellLength(struct_storageCells);
	index_endData    = dualCellsCollection_getEndData(result_storage);
	right_startData  = math_minus(index_endData, count_size * cell_length);
	index_target     = storageCellsCollection_getCellIndex_force(result_storage, string_search, count_size, right_startData, cell_length);
	index_lengthArea = string_indexOf(result_storage, symbol_lengthArea());
	result_storage   = __private_dualCellsCollection_delete_right(result_storage, index_target, cell_length);
	result_storage   = __private_collectionStorage_deleteIndexed(result_storage, index_lengthArea, index_target, count_size);
FinFuncion

Funcion constainsValue <- storageCellsCollection_constainsValue(struct_storageCells, value_search)
	Definir constainsValue Como Logico;
	Definir storage_index Como Entero;
	storage_index = collectionStorage_GetInnerId(struct_storageCells, value_search);
	constainsValue = !number_isEquals(storage_index, number_NULL());
FinFuncion

Funcion constainsValue <- storageCellsCollection_constainsCell(struct_storageCells, value_search)
	Definir constainsValue Como Logico;
	Definir cell_index Como Entero;
	cell_index = dualCellsCollection_setter_getIndex_right(struct_storageCells, value_search);
	constainsValue = !number_isEquals(cell_index, number_NULL());
FinFuncion

Funcion separate_string <- storageCellsCollection_getSeparateString(struct_cells)
	Definir separate_string Como Texto;
	separate_string = dualCellsCollection_getSeparateString_right(struct_cells);
FinFuncion

Funcion storageCellsCollection_println_value(struct_cells)
	collectionStorage_println(struct_cells);
FinFuncion

Funcion storageCellsCollection_print_value(struct_cells)
	collectionStorage_print(struct_cells);
FinFuncion

Funcion storageCellsCollection_println(struct_cells)
	__private_dualCellsCollection_printer_right(struct_cells, true());	
FinFuncion

Funcion storageCellsCollection_print(struct_cells)
	__private_dualCellsCollection_printer_right(struct_cells, false());	
FinFuncion

Funcion sprite_position <- Qr_getSpritePositionPattern
    Definir row_border_solid, row_frame_inner, row_core_center, sprite_position Como Texto;
    row_border_solid = String_repeatText(pixel_Qr_plain(), 7);
    row_frame_inner  = String_append_withSeparator(pixel_Qr_plain(), pixel_Qr_plain(), String_repeatText(pixel_Qr_clear(), 5));
    row_core_center  = String_append(pixel_Qr_plain(), pixel_Qr_clear());
    row_core_center  = String_append(row_core_center, String_repeatText(pixel_Qr_plain(), 3));
    row_core_center  = String_append(row_core_center, String_append(pixel_Qr_clear(), pixel_Qr_plain()));
    sprite_position = spriteString_new();
    sprite_position = spriteString_addLine(sprite_position, row_border_solid);// 1
    sprite_position = spriteString_addLine(sprite_position, row_frame_inner);// 2
    sprite_position = spriteString_addLine(sprite_position, row_core_center);// 3
    sprite_position = spriteString_addLine(sprite_position, row_core_center);// 4
    sprite_position = spriteString_addLine(sprite_position, row_core_center);// 5
    sprite_position = spriteString_addLine(sprite_position, row_frame_inner);// 6
    sprite_position = spriteString_addLine(sprite_position, row_border_solid);// 7
FinFuncion

///==========[DEPENDECES]=============================================
//---[ native_ (#NAV) ]--------------------------------------------------------------------

Funcion length <- native_string_length(text)
	Definir length Como Numero;
	length = Longitud(text);
FinFuncion

Funcion result_string <- native_number_ToString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
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

Funcion result_string <- native_string_ToLowerCase(text)
	Definir result_string Como Texto;
	result_string = Minusculas(text);
FinFuncion

Funcion native_print(text)
	Escribir text Sin Saltar;
FinFuncion
//---[ string_ (#STR) ]--------------------------------------------------------------------

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
FinFuncion

Funcion result_string <- string_insert(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, false);
FinFuncion

Funcion result_string <- string_NULL
	Definir result_string Como Texto;
	result_string = "";
FinFuncion

Funcion num <- string_length(text)
	Definir num Como Numero;
	num = native_string_length(text);
FinFuncion

Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Numero;
	result = string_indexOf_fromIndex(text, text_match, 0);
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

Funcion strSubs <- string_substring_from(result_string, start)
	Definir strSubs Como Texto;
	Definir end_substring Como Entero;
	end_substring = native_string_length(result_string);
	strSubs = string_substring(result_string, start, end_substring);
FinFuncion

Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
FinFuncion

Funcion result_str <- string_delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_delete", text, start, end);
	start_Str = string_substring(text, 0, start);//Hello <-]
	end_Str = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
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

Funcion result_string <- string_fit_end(text, text_pad)
	Definir result_string, res_pad Como Texto;
	Definir pad_length Como Entero;
	pad_length		= native_string_length(text_pad);
	result_string   = string_pad_limitEnd(text, text_pad, pad_length);
	result_string	= string_substring(result_string, 0, pad_length);
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

Funcion result_string <- string_pad_limitEnd(text, text_pad, pad_length)
	Definir result_string, res_pad Como Texto;
	Definir text_length, res_length Como Entero;
	text_length		= native_string_length(text);
	res_length      = math_min_Int(text_length, pad_length);
	res_pad         = string_substring(text_pad, res_length, pad_length);
	result_string	= string_insert(text, res_pad, text_length);
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

Funcion boolean <- number_isEquals(num, num2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(num, num2);
FinFuncion

Funcion Num <- number_NULL
	Definir Num Como Numero;
	Num = -1;
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
//---[ math_ (#MAT) ]----------------------------------------------------------------------

Funcion numDec <- math_minus(num, value)
	Definir numDec Como Numero;
	numDec = num - value;
FinFuncion

Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
FinFuncion

Funcion numInc <- math_increment(num)
	Definir numInc Como Numero;
	numInc = num + 1;
FinFuncion

Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion

Funcion result <- math_min_int(value, limit)
	Definir result Como Entero;
	result = __private_math_choose(value, limit, false());
FinFuncion

Funcion result <- math_max_int(value, limit)
	Definir result Como Entero;	
	result = __private_math_choose(value, limit, true());
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

Funcion exection_Error(message_Error)
	Definir error_int Como Entero;
	log_ERROR(message_Error);
	error_int = string_NULL();
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

Funcion string_Increment <- value_modify_StringNumber(string_number, num_sum)
	Definir string_Increment Como Texto;
	string_Increment = number_toString(math_sum(string_toNumber(string_number), num_sum));
FinFuncion
//---[ collection_ (#CLL) ]----------------------------------------------------------------

Funcion index_TypeArea <- collection_getIndex_typeArea(struct_Collection)
	Definir index_TypeArea Como Numero;
	index_TypeArea = string_indexOf(struct_Collection, symbol_typeArea());
FinFuncion

Funcion symbol_area <- symbol_lengthArea
    Definir symbol_area Como Texto;
    symbol_area = "";
FinFuncion

Funcion symbol_area <- symbol_typeArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001D
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

Funcion type_area <- collection_getContent_Between_Symbols(collection, symbol_start, symbol_end)
	Definir Type_property, type_area Como Texto;
	Definir index_start, index_end, index_check Como Numero;
	index_start = math_increment(string_indexOf(collection, symbol_start));
	index_end = string_indexOf_fromIndex(collection, symbol_end, index_start);
	type_area = string_substring(collection, index_start, index_end);
FinFuncion

Funcion type_area <- collection_getContent_Between_lastSymbols(collection, symbol_start, symbol_end)
	Definir Type_property, type_area Como Texto;
	Definir index_start, index_end, index_check Como Numero;
	index_end = string_LastindexOf(collection, symbol_end);
	index_start = math_increment(string_LastindexOf_fromIndex(collection, symbol_start, index_end));
	type_area = string_substring(collection, index_start, index_end);
FinFuncion

Funcion type_area <- collection_getContent_TypeArea(collection)
	Definir type_area Como Texto;
	type_area =  collection_getContent_TypeArea_End_Of_Text(collection, symbol_dataArea());
FinFuncion

Funcion result_string <- symbol_Separator
	Definir result_string Como Texto;
	result_string = "";//001F
FinFuncion

Funcion index_MetaData <- collection_getIndex_metaData(struct_Collection)
	Definir index_MetaData Como Numero;
	index_MetaData = string_lastIndexOf(struct_Collection, symbol_metaData());
FinFuncion

Funcion collection_result <- collection_updateRange(struct_collection, index_start, index_end, data_string)
	Definir collection_result Como Texto;
	collection_result = string_delete(struct_collection, index_start, index_end);
	collection_result = string_insert(collection_result, data_string, index_start);
FinFuncion

Funcion type_area <- collection_getContent_TypeArea_End_Of_Text(collection, text_end)
	Definir type_area Como Texto;
	type_area = collection_getContent_Between_Symbols(collection, symbol_typeArea(), text_end);
FinFuncion

Funcion __private_collection_printer(sequential_data, sequential_lengths, isnewLine)
	managerData_printer_color(sequential_data, sequential_lengths, isnewLine, "");
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

Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion

Funcion index_DataArea <- collection_getIndex_dataArea(struct_Collection)
	Definir index_DataArea Como Numero;
	index_DataArea = string_IndexOf(struct_Collection, symbol_dataArea());
FinFuncion

Funcion symbol_areaContent <- collection_replaceRange_between_lastSymbols(collection, data_String, symbol_start, symbol_end)
    Definir symbol_areaContent Como Texto;
    Definir index_start, index_end Como Numero;
    index_end = string_LastindexOf(collection, symbol_end);
    index_start = math_increment(string_LastindexOf_fromIndex(collection, symbol_start, index_end));
    symbol_areaContent = collection_replaceRange(collection, data_String, index_start, index_end);
FinFuncion

Funcion collection_out <- collection_replaceRange(collection, data_String, index_start, index_end)
    Definir collection_out Como Texto;
    collection_out = string_delete(collection, index_start, index_end);
    collection_out = string_Insert(collection_out, data_String, index_start);
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

Funcion separated_String <- managerData_getSeparateString_cells(struct_cells, count_size, cell_length)
	Definir separated_String, current_data Como Texto;
	Definir i, current_pos, next_pos Como Entero;
	current_pos   = 0;
	separated_String = "";
	i = 0;
	Mientras i < count_size Hacer
		next_pos         = math_sum(current_pos, cell_length);
		current_data     = String_Substring(struct_cells, current_pos, next_pos);
		current_data     = cellsCollection_clear_cellString(current_data, cell_length);
		separated_String = String_append_withSeparator(separated_String, symbol_separator(), current_data);
		current_pos      = next_pos;
		i = math_increment(i);
	FinMientras
FinFuncion

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
//---[ linearCollection_ (#LCL) ]----------------------------------------------------------

Funcion index_extraData <- linearCollection_getIndex_ExtraData(struct_LinearCollection)
	Definir index_extraData Como Numero;
	index_extraData = string_lastIndexOf(struct_LinearCollection, symbol_extraData());
FinFuncion

Funcion Size_int <- linearCollection_getSize(struct_Collection)
	Definir Size_int Como Numero;
	Size_int = string_toNumber(string_substring_from(struct_Collection, math_increment(linearCollection_getIndex_EndMetaData(struct_Collection))));
FinFuncion

Funcion type_result <- linearCollection_GetType(struct_Collection)
	Definir type_result Como Texto;
	type_result = collection_getContent_TypeArea(struct_Collection);
FinFuncion

Funcion collection_result <- linearCollection_increment_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, 1);
FinFuncion

Funcion End_index <- linearCollection_getIndex_EndMetaData(struct_Collection)
	Definir End_index Como Numero;
	End_index = string_lastIndexOf(struct_Collection, symbol_ExtraData());
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

Funcion collection_result <- linearCollection_decrement_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, -1);
FinFuncion

Funcion new_LinearColletion <- linearCollection_new(struct_Collection, TYPE)
	Definir new_LinearColletion Como Texto;
	new_LinearColletion = string_append_withSeparator(collection_new(struct_Collection, TYPE), "0", symbol_ExtraData());
FinFuncion

Funcion collection_result <- linearCollection_addLast(struct_Collection, Element)
	Definir collection_result, TYPE Como Texto;
	TYPE = linearCollection_GetType(struct_Collection);
	collection_result = linearCollection_addLast_ByType(struct_Collection, Element, TYPE);
FinFuncion

Funcion collection_result <- linearCollection_addLast_ByType(struct_Collection, Element, TYPE)
	Definir collection_result, element_String Como Texto;// (C, B, A/1;2;3)
	element_String = value_TypeToString(Element, TYPE);//"Z";
	collection_result = linearCollection_addLast_ByString(struct_Collection, element_String);
FinFuncion

Funcion collection_result <- linearCollection_SetElement(struct_Collection, index_element, new_value)
	Definir collection_result, TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_Collection);
	collection_result = linearCollection_SetElement_ToType(struct_Collection, index_element, new_value, TYPE);
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

Funcion element_String <- linearCollection_getFirst_ToString(struct_Collection)
	Definir element_String Como Texto;
	Definir index_DataArea, property_, Index_EndMetaData, element_Length Como Numero;
	Si linearCollection_isEmpty(struct_Collection) Entonces
		error_message_Function("linearCollection_getFirst_ToString", "struct is Empty");
		element_String = string_NULL();
	SiNo
		Index_EndMetaData = linearCollection_getIndex_EndMetaData(struct_Collection);
		index_DataArea = math_increment(collection_getIndex_dataArea(struct_Collection));// (C B A/, 1, 2, 3)
		property_ = string_lastIndexOf(struct_Collection, symbol_Separator());
		element_Length = string_toNumber(string_substring(struct_Collection, math_increment(property_), index_EndMetaData));
		element_String = string_substring(struct_Collection, index_DataArea, math_sum(index_DataArea, element_Length));
	FinSi
FinFuncion

Funcion collection_result <- linearCollection_SetElement_ToType(struct_Collection, index_element, new_value, TYPE)
	Definir collection_result, value_string Como Texto;
	value_string = value_TypeToString(new_value, TYPE);
	collection_result = linearCollection_SetElement_ToString(struct_Collection, index_element, value_string);
FinFuncion

Funcion struct_IsEmpty <- linearCollection_isEmpty(struct_Collection)
	Definir struct_IsEmpty Como Logico;
	struct_IsEmpty = (linearCollection_getSize(struct_Collection) < 1);
FinFuncion

Funcion collection_result <- linearCollection_SetElement_ToString(struct_Collection, index_element, value_string)
	Definir collection_result, element_String Como Texto;
	collection_result = __private_linearCollection_ModifyElement(struct_Collection, index_element, value_string);
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
//---[ collectionStorage_ (#CST) ]---------------------------------------------------------

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

Funcion result_storage <- collectionStorage_modify(struct_storage, value, index_modify)
	Definir result_storage, TYPE, value_string Como Texto;
	TYPE           = collectionStorage_getType(struct_storage);
	value_string   = value_TypeToString(value, TYPE);
	result_storage = collectionStorage_modify_byString(struct_storage, value_string, index_modify);
FinFuncion

Funcion Type_keys <- collectionStorage_getType(struct_storage)
	Definir Type_keys Como Texto;
	Definir index_TypeKey, index_lengthArea Como Numero;
	index_TypeKey  = math_increment(string_indexOf(struct_storage, symbol_typeArea()));
	index_lengthArea   = string_indexOf_fromIndex(struct_storage, symbol_lengthArea(), index_TypeKey);
	Type_keys      = string_substring(struct_storage, index_TypeKey, index_lengthArea);
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

Funcion result_storage <- collectionStorage_add_byString_force(struct_storage, value_string, index_lenght, index_data)
	Definir result_storage, length_value Como Texto;
	Definir index_dataArea, index_lengthArea Como Numero;
	length_value   = string_append(symbol_Separator(), number_toString(string_Length(value_string)));
	result_storage     = string_insert(struct_storage, value_string, index_data);
	result_storage     = string_insert(result_storage, length_value, index_lenght);
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

Funcion collectionStorage_println(struct_storage)
	__private_collectionStorage_printer(struct_storage, true());
FinFuncion

Funcion collectionStorage_print(struct_storage)
	__private_collectionStorage_printer(struct_storage, false());
FinFuncion

Funcion num_Keys <- collectionStorage_getSize(struct_storage)
	Definir num_Keys Como Numero;
	num_Keys       = linearCollection_getSize(struct_storage);
FinFuncion

Funcion innerIndex <- collectionStorage_GetInnerId_ByType(struct_storage, key, type)
	Definir innerIndex Como Numero;
	Definir key_string Como Texto;
	key_string = value_TypeToString(key, type);
	innerIndex = collectionStorage_GetInnerId_ByString(struct_storage, key_string);
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

Funcion innerIndex <- collectionStorage_GetInnerId_ByString(struct_storage, key)
    Definir innerIndex Como Numero;
    Definir index_dataArea, count_size Como Numero;
    innerIndex     = number_NULL();
    count_size     = collectionStorage_getSize(struct_storage);
    Si count_size > 0 Entonces
        innerIndex    = __private_collectionStorage_SearchIdKey(struct_storage, key, count_size);
    FinSi
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
//---[ cellsCollection_ (#CCO) ]-----------------------------------------------------------

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

Funcion size_dataBlock <- cellsCollection_getSize(struct_name)
	Definir size_dataBlock Como Entero;	
	size_dataBlock = linearCollection_getSize(struct_name);
FinFuncion

Funcion cells_index <- cellsCollection_calcule_indexBlock_atEnd(index_end, index_search, cell_length)
	Definir cells_index Como Entero;
	cells_index = math_minus(index_end, (index_search * cell_length));
FinFuncion

Funcion isChanged <- cellsCollection_isChanged(struct_cell, last_length)
	Definir isChanged Como Logico;
	isChanged = (string_Length(struct_cell) > last_length);
FinFuncion

Funcion min_fixed <- cellsCollection_getMinFixed
	Definir min_fixed Como Entero;
	min_fixed = 1;
FinFuncion

Funcion element_cells <- cellsCollection_String_normalizedToBlockLegth(element_string, cell_length)
	Definir element_cells Como Texto;
	element_cells = string_fit_end(element_string, String_repeatText(cellsCollection_symbol_null(), cell_length));
FinFuncion

Funcion symbol <- cellsCollection_symbol_null
	Definir symbol Como Texto;
	symbol = "";
FinFuncion

Funcion result_string <- cellsCollection_clear_cellString(element_string, cell_length)
	Definir result_string Como Texto;
	Definir index_clear Como Entero;
	index_clear = cellsCollection_indexOf_clearData(element_string, cell_length);
	result_string = string_substring(element_string, 0, index_clear);
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
//---[ cellsCollection_dynamic_ (#CCD) ]---------------------------------------------------

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

Funcion symbol <- symbol_cell_type
	Definir symbol Como Texto;
	symbol = "";
FinFuncion

Funcion TYPE <- dualCellsCollection_getType_right(struct_cells)
	Definir TYPE Como Texto;//
	TYPE = collection_getContent_Between_Symbols(struct_cells, symbol_cell_type(), symbol_typeArea());
FinFuncion

Funcion cell_length <- dualCellsCollection_getCellLength_right(struct_cells)
	Definir cell_length Como Entero;	
	Definir cells_length_String Como Texto;
	cells_length_String = collection_getContent_Between_lastSymbols(struct_cells, symbol_metaData(), symbol_extraData());
	cell_length    = string_toNumber(cells_length_String);
FinFuncion

Funcion index_endData <- dualCellsCollection_getEndData(struct_cells)
	Definir index_endData Como Entero;
	index_endData = String_lastIndexof(struct_cells, symbol_metaData());
FinFuncion

Funcion MODE <- CELL_DYNAMIC
	Definir MODE Como Texto;
	MODE = "mode_dynamic";
FinFuncion

Funcion MODE <- CELL_SETTER_DYNAMIC
	Definir MODE Como Texto;
	MODE = "mode_setterDynamic";
FinFuncion

Funcion isValidLength <- dualCellsCollection_validateFixedLength_Mode(element_string, cell_length, MODE, direction)
	Definir isValidLength, mode_isFixed Como Logico;
	segun MODE Hacer
		caso CELL_FIXED():
			mode_isFixed = true();
		caso CELL_SETTER():
			mode_isFixed = true();
		De Otro Modo:
			mode_isFixed = false();
	FinSegun
	isValidLength = true();
	si mode_isFixed & !dualCellsCollection_validateFixedLength(element_string, cell_length) Entonces
		error_message_Function("dualCellsCollection_validateFixedLength_Mode()", string_append(direction, " :: element exceeds cells size"));
		isValidLength = false();
	FinSi
FinFuncion

Funcion size_dataBlock <- dualCellsCollection_getSize(struct_cells)
	Definir size_dataBlock Como Entero;
	size_dataBlock = cellsCollection_getSize(struct_cells);
FinFuncion

Funcion result_cells <- dualCellsCollection_mode_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length, MODE)
	Definir result_cells Como Texto;
	segun MODE Hacer
		caso CELL_FIXED():
			result_cells = dualCellsCollection_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
		caso CELL_SETTER():
			result_cells = dualCellsCollection_setter_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
		caso CELL_DYNAMIC():
			result_cells = dualCellsCollection_Dynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
		caso CELL_SETTER_DYNAMIC():
			result_cells = dualCellsCollection_setterDynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
		De Otro Modo:
			error_message_Function("dualCellsCollection_mode_add_byString_left_force(cells, element, Istart, Iinsert, lengthCell, mode)", string_append("[right] mode not exist: ", MODE));
			result_cells = struct_cells;
	FinSegun
FinFuncion

Funcion result_cells <- __private_dualCellsCollection_delete_right(struct_cells, index, cell_length)
	Definir result_cells Como Texto;
	Definir index_endData, cells_index, cells_index_end Como Entero;
	result_cells     = struct_cells;
	index_endData    = dualCellsCollection_getEndData(result_cells);
	cells_index_end  = cellsCollection_calcule_indexBlock_atEnd(index_endData, index, cell_length);
	cells_index      = math_minus(cells_index_end, cell_length);
	result_cells     = string_delete(result_cells, cells_index, cells_index_end);
FinFuncion

Funcion index_cell <- dualCellsCollection_setter_getIndex_right(struct_cells, value_search)
	Definir TYPE, string_search Como Texto; 
	Definir index_cell Como Entero;
	TYPE          = dualCellsCollection_getType_right(struct_cells);
	string_search = value_TypeToString(value_search, TYPE);
	index_cell    = dualCellsCollection_setter_getIndex_right_byString(struct_cells, string_search);
FinFuncion

Funcion separate_string <- dualCellsCollection_getSeparateString_right(struct_cells)
	Definir separate_string, data_string Como Texto;
	Definir start_data, end_data, count_size, cell_length Como Numero;
	count_size  = dualCellsCollection_getSize(struct_cells);
	cell_length = dualCellsCollection_getCellLength_right(struct_cells);
	end_data    = dualCellsCollection_getEndData(struct_cells);
	start_data  = cellsCollection_calcule_indexBlock_atEnd(end_data, count_size, cell_length);
	data_string = string_substring(struct_cells, start_data, end_data);
	separate_string = managerData_getSeparateString_cells(data_string, count_size, cell_length);
FinFuncion

Funcion __private_dualCellsCollection_printer_right(struct_cells, isBreakLine)
	Definir separate_string, data_string Como Texto;
	Definir start_data, end_data, count_size, cell_length Como Numero;
	count_size  = dualCellsCollection_getSize(struct_cells);
	cell_length = dualCellsCollection_getCellLength_right(struct_cells);
	end_data    = dualCellsCollection_getEndData(struct_cells);
	start_data  = cellsCollection_calcule_indexBlock_atEnd(end_data, count_size, cell_length);
	data_string = string_substring(struct_cells, start_data, end_data);
	managerData_printer_cells(data_string, count_size, cell_length, isBreakLine);
FinFuncion

Funcion MODE <- CELL_FIXED
	Definir MODE Como Texto;
	MODE = "mode_fixed";
FinFuncion

Funcion MODE <- CELL_SETTER
	Definir MODE Como Texto;
	MODE = "mode_setter";
FinFuncion

Funcion isValidLength <- dualCellsCollection_validateFixedLength(element_string, cell_length)
	Definir isValidLength Como Logico;
	isValidLength = String_length(element_string) <= cell_length;
FinFuncion

Funcion result_cells <- dualCellsCollection_add_byString_right_force(struct_cells, element_string, index_end, index_insert, cell_length)
	Definir result_cells Como Texto;
	Definir cells_index Como Entero;
	result_cells = struct_cells;
	element_string = cellsCollection_String_normalizedToBlockLegth(element_string, cell_length);
	cells_index = cellsCollection_calcule_indexBlock_atEnd(index_end, index_insert, cell_length);
	result_cells = String_insert(result_cells, element_string, cells_index);
FinFuncion

Funcion result_cells <- dualCellsCollection_setter_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length)
	Definir result_cells Como Texto;
	Si dualCellsCollection_setter_constains_right(struct_cells, element_string) Entonces
		result_cells = struct_cells;
	SiNo
		result_cells  = dualCellsCollection_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
	FinSi
FinFuncion

Funcion result_cells <- dualCellsCollection_Dynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length)
	Definir result_cells Como Texto;
	Definir element_length, cells_size Como Entero;
	result_cells  = struct_cells;
	element_length = String_length(element_string);
	cells_size    = cellsCollection_getSize(result_cells);
	result_cells  = dualCellsCollection_Dynamic_ensureCapacity_right_force(struct_cells, cell_length, element_length, index_endData, cells_size);
	si  element_length > cell_length Entonces
		cell_length  =  element_length;
		index_endData = dualCellsCollection_getEndData(result_cells);
	FinSi
	result_cells  = dualCellsCollection_add_byString_right_force(result_cells, element_string, index_endData, index_insert, cell_length);
FinFuncion

Funcion result_cells <- dualCellsCollection_setterDynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length)
	Definir result_cells Como Texto;	
	Si dualCellsCollection_setter_constains_right(struct_cells, element_string) Entonces
		result_cells = struct_cells;
	SiNo
		result_cells = dualCellsCollection_Dynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
	FinSi
FinFuncion

Funcion index_cell <- dualCellsCollection_setter_getIndex_right_byString(struct_cells, element_string)
	Definir index_cell, element_length, cell_length Como Entero;
	element_length = string_length(element_string);
	cell_length = dualCellsCollection_getCellLength_right(struct_cells);
	si (element_length > cell_length) Entonces
		index_cell = number_NULL();
	SiNo
		index_cell = dualCellsCollection_setter_getIndex_right_byString_force(struct_cells, element_string, cell_length);	
	FinSi
FinFuncion

Funcion constains_string <- dualCellsCollection_setter_constains_right(struct_cells, element_string)
	Definir constains_string Como Logico;
	constains_string = dualCellsCollection_setter_getIndex_right_byString(struct_cells, element_string) >= 0;
FinFuncion

Funcion result_cells <- dualCellsCollection_Dynamic_ensureCapacity_right_force(struct_cells, cell_length, required_length, index_endData, cells_size)
	Definir result_cells Como Texto;
	result_cells = struct_cells;
	si required_length > cell_length Entonces
		result_cells = dualCellsCollection_Dynamic_reSize_right_force(struct_cells, required_length, index_endData, cells_size, cell_length);
	FinSi
FinFuncion

Funcion index_cell <- dualCellsCollection_setter_getIndex_right_byString_force(struct_cells, element_string, cell_length)
	Definir index_cell, index_endData, cells_size, index_startData_right Como Entero;	
	index_endData         = dualCellsCollection_getEndData(struct_cells);
	cells_size           = cellsCollection_getSize(struct_cells);
	index_startData_right = cellsCollection_calcule_indexBlock_atEnd(index_endData, cells_size, cell_length);
	index_cell          = cellsCollection_setter_getIndex_byString_inRange_force(struct_cells, element_string, 0, cells_size, index_startData_right, cell_length);
	si (index_cell >= 0) Entonces
		index_cell = math_minus(math_decrement(cells_size), index_cell);
	FinSi
FinFuncion

Funcion result_cells <- dualCellsCollection_Dynamic_reSize_right_force(struct_cells, new_fixed_Length, index_endData, cells_size, cell_length)
	Definir result_cells Como Texto;
	result_cells = cellsCollection_Dynamic_reSize_inRange_force(struct_cells, new_fixed_Length, 0, cells_size, index_endData, cell_length);	
	result_cells = dualCellsCollection_UpdateLength_right(result_cells, new_fixed_Length);
FinFuncion

Funcion result_cells <- dualCellsCollection_UpdateLength_right(struct_cells, new_fixed_Length)
	Definir result_cells Como Texto;
	result_cells = collection_replaceRange_between_lastSymbols(struct_cells, number_toString(new_fixed_Length), symbol_metaData(), symbol_ExtraData());
FinFuncion
//---[ canvas_ (#CAN) ]--------------------------------------------------------------------

Funcion pixel <- pixel_Qr_plain
	Definir pixel Como Texto;
	pixel = "  ";
FinFuncion

Funcion pixel <- pixel_Qr_clear
	Definir pixel Como Texto;
	pixel = "��";
FinFuncion
//---[ tui_ (#TUI) ]-----------------------------------------------------------------------

Funcion spriteString_struct <- spriteString_new
	Definir spriteString_struct Como Texto;
	spriteString_struct = linearCollection_new(tComponent_TYPE_SPRITE_STRING(), TYPE_STRING());
	spriteString_struct = linearCollection_addLast(spriteString_struct, "0");
FinFuncion

Funcion spriteString_newChange <- spriteString_addLine(spriteString_struct, line_String)
	Definir spriteString_newChange Como Texto;
	spriteString_newChange = linearCollection_addLast(spriteString_struct, line_String);
	spriteString_newChange = spriteString_UpdateMaxWidth(spriteString_newChange, line_String);
FinFuncion

Funcion spriteString_newChange <- spriteString_UpdateMaxWidth(spriteString_struct, line_String)
	Definir spriteString_newChange Como Texto;
	Definir line_length Como Numero;
	line_length = string_Length(line_String);
	spriteString_newChange = spriteString_struct;
	si spriteString_GetWidth(spriteString_newChange) < line_length Entonces
		spriteString_newChange = linearCollection_SetElement(spriteString_newChange, 0, number_toString(line_length));
	FinSi
FinFuncion

Funcion length_MaxLine <- spriteString_GetWidth(spriteString_struct)
	Definir length_MaxLine Como Numero;
	length_MaxLine = string_toNumber(linearCollection_getFirst_ToString(spriteString_struct));
FinFuncion
//---[ tComponent_ (#TCO) ]----------------------------------------------------------------

Funcion tComponent_Type <- tComponent_TYPE_SPRITE_STRING
	Definir tComponent_Type Como Texto;
	tComponent_Type = "@TSpriteString@";
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
