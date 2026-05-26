Algoritmo MODULE_MANAGER_DATA
	// Test call disabled: managerData_modify() requires arguments
	// TODO: add valid arguments for standalone execution
FinAlgoritmo
///%%%%%[ MANAGET_DATA........................ ]%%%%%%%[   #MDA    ]%%%%%%%%%%%%%%%%%%%%

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

///==========[DEPENDECES]=============================================
//---[ native_ (#NAV) ]--------------------------------------------------------------------

Funcion native_println(text)
	Escribir text;
FinFuncion

Funcion native_print(text)
	Escribir text Sin Saltar;
FinFuncion

Funcion length <- native_string_length(text)
	Definir length Como Numero;
	length = Longitud(text);
FinFuncion

Funcion num <- native_string_toNumber(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion result_string <- native_number_ToString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion

Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion
//---[ string_ (#STR) ]--------------------------------------------------------------------

Funcion num <- string_length(text)
	Definir num Como Numero;
	num = native_string_length(text);
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

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
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

Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
FinFuncion

Funcion result_string <- string_NULL
	Definir result_string Como Texto;
	result_string = "";
FinFuncion

Funcion result_string <- string_insert(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, false);
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

Funcion boolean <- string_isNumber(text)
	Definir boolean Como Logico;
	boolean = string_isNumber_int(text) | string_isNumber_float(text);
FinFuncion

Funcion strSubs <- string_substring_from(result_string, start)
	Definir strSubs Como Texto;
	Definir end_substring Como Entero;
	end_substring = native_string_length(result_string);
	strSubs = string_substring(result_string, start, end_substring);
FinFuncion

Funcion result_string <- __private_string_insert_general(text, text_insert, index, isReplace)
	Definir result_string, before, after Como Texto;
	Definir index_after Como Entero;
	before        = string_substring(text, 0, index);
	index_after   = math_sum(index, if_else(isReplace, native_string_length(text_insert), 0));
	after         = string_substring_from(text, math_min_int(index_after, native_string_length(text)));
	result_string = string_append_withSeparator(before, after, text_insert);
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

Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Numero;
	result = string_indexOf_fromIndex(text, text_match, 0);
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
//---[ int_ (#NUM) ]-----------------------------------------------------------------------

Funcion boolean <- number_isEquals(num, num2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(num, num2);
FinFuncion

Funcion result_string <- number_toString(num)
	Definir result_string Como Texto;
	result_string = native_number_ToString(num);
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

Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion

Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
FinFuncion

Funcion numInc <- math_increment(num)
	Definir numInc Como Numero;
	numInc = num + 1;
FinFuncion

Funcion numDec <- math_minus(num, value)
	Definir numDec Como Numero;
	numDec = num - value;
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
//---[ boolean_ (#BOO) ]-------------------------------------------------------------------

Funcion boolean <- true
	Definir boolean Como Logico;
	boolean = Verdadero;
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
//---[ collection_ (#CLL) ]----------------------------------------------------------------

Funcion result_string <- symbol_Separator
	Definir result_string Como Texto;
	result_string = "";//001F
FinFuncion

Funcion symbol_area <- symbol_dataArea
	Definir symbol_area Como Texto;
	symbol_area = "";
FinFuncion

Funcion symbol_area <- symbol_metaData
	Definir symbol_area Como Texto;
	symbol_area = "";//001E
FinFuncion

Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion
//---[ cellsCollection_ (#CCO) ]-----------------------------------------------------------

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

Funcion symbol <- cellsCollection_symbol_null
	Definir symbol Como Texto;
	symbol = "";
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
