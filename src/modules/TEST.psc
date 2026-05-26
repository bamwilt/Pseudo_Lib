Algoritmo MODULE_TEST
	// Test call disabled: test_Checkpoint() requires arguments
	// TODO: add valid arguments for standalone execution
FinAlgoritmo
///%%%%%[ TEST................................ ]%%%%%%%[   #TST    ]%%%%%%%%%%%%%%%%%%%%

Funcion test_Checkpoint(id)
	test_Checkpoint_info(id, "");
FinFuncion

Funcion test_Checkpoint_info(id, info_string)
	break_Line();
	native_println(color_setColorText(string_append_withSeparator(" < ", " >- - - - - - - - - - - </>", number_toString(id)), COLOR_CYAN()));
	Si !string_isEmpty(info_string) Entonces
		Definir popup_message Como Texto;
		popup_message = string_append_withSeparator(" < start >", "< /end >", info_string);
		native_println(color_setColorText(popup_message, COLOR_CYAN()));
	FinSi
	user_input_wait();
FinFuncion

Funcion test_Assert_Equal(value, value_expected, TYPE)
	Definir value_String, value_expected_String Como Texto;
	test_Function_Assert_Equal(value, value_expected, TYPE, "<?>");
FinFuncion

Funcion test_Function_Assert_Equal(value, value_expected, TYPE, method_name)
	Definir catch_Boolean Como Logico;
	catch_Boolean = test_Function_Assert_Equal_returnBoolean(value, value_expected, TYPE, method_name);
FinFuncion

Funcion result_Boolean <- test_Function_Assert_Equal_returnBoolean(value, value_expected, TYPE, method_name)
	Definir value_String, value_expected_String Como Texto;
	Definir result_Boolean Como Logico;
	value_String = value_TypeToString(value, TYPE);
	value_expected_String = value_TypeToString(value_expected, TYPE);
	result_Boolean = string_isEquals(value_String, value_expected_String);
	Si result_Boolean Entonces
		native_println(color_setColorText(string_append_withSeparator(method_name, value_String, "() :: check ::"), COLOR_CYAN()));
	SiNo
		error_message(string_append_withSeparator(method_name, string_append_withSeparator(value_String, value_expected_String, " != "), "() .        . The value is not as expected .        . "));
	FinSi
FinFuncion

Funcion count_result <- test_Passed(value, value_expected, TYPE, count_string)
	Definir count_result Como Texto;
	count_result = test_Function_Passed(value, value_expected, TYPE, "<?>", count_string);
FinFuncion

Funcion count_result <- test_Function_Passed(value, value_expected, TYPE, method_name, count_string)
	Definir count_result Como Texto;
	Definir catch_Boolean Como Logico;
	catch_Boolean = test_Function_Assert_Equal_returnBoolean(value, value_expected, TYPE, method_name);
	si string_isEmpty(count_string)Entonces
		count_string = string_append_withSeparator("0", "0", symbol_Separator());
	FinSi
	
	si catch_Boolean Entonces
		count_result = value_modify_StringNumber_inArea(count_string, 1, 0, string_indexOf(count_string, symbol_Separator()));
	SiNo
		count_result = value_modify_StringNumber_inArea(count_string, 1, math_increment(string_indexOf(count_string, symbol_Separator())), string_Length(count_string));
	FinSi
FinFuncion

Funcion test_Function_Passed_Debug(count_string)
	Definir succes_Count, error_Count, array_test Como Texto;
	Definir succes_Msg, error_msg Como Texto;
	Definir index_Center Como Numero;
	index_Center = string_indexOf(count_string, symbol_Separator());
	succes_Count = string_substring(count_string, 0, index_center);
	error_Count = string_substring_from(count_string, math_increment(index_center));
	succes_Msg = string_append("?  + SUCCESS: ", string_fit_end(succes_Count, "            ?"));
	error_Msg = string_append("?  - ERROR:   ", string_fit_end(error_Count, "            ?"));
	Dimension array_test[6];
	array_test[0] = ".=========================.";
	array_test[1] = "?      < END_TEST >        ?";
	array_test[2] = ":=========================:";
	array_test[3] = color_setColorText(succes_Msg, COLOR_CYAN());
	array_test[4] = color_setColorText(error_Msg, COLOR_YELLOW());
	array_test[5] = ".=========================.";
	println_array_color(array_test, 6, COLOR_WHITE());
FinFuncion

Funcion duration_Timer <- Execution_Timer(localTime_Start, funtion_return)
	Definir duration_Timer, localTime_End Como Texto;
	localTime_End = localTime_now();
	duration_Timer = duration_between(localTime_Start, localTime_End);
FinFuncion

Funcion sandbox_development
	Definir canvas, tui Como Texto;
	Definir Cx, Cy, x, i, n Como Entero;
	Cx = 10;
	Cy = 5;
	canvas = canvas_new(Cx, Cy);
	Escribir string_append("cadena: ",canvas);
	Escribir "canvas:";
	canvas_display(canvas, Cx, Cy);
FinFuncion

Funcion message_duration(struct_localTime)
	Definir time_Total, time_message Como Texto;
	time_Total 	  = color_setColorText(localTime_ToString(struct_localTime), COLOR_CYAN());
	time_message  = color_setColorText("::: execution time ::: format(hh:mm:ss) ::: ", COLOR_BLUE());
	println(string_append(time_message, time_Total));
FinFuncion

///==========[DEPENDECES]=============================================
//---[ native_ (#NAV) ]--------------------------------------------------------------------

Funcion native_println(text)
	Escribir text;
FinFuncion

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

Funcion time_value_String <- native_localTime_Now_toString
	Definir time_value_String Como Texto;
	time_value_String = string_fit(number_toString(native_localTime_Now()), "000000");
FinFuncion

Funcion Time_num <- native_localTime_Now
	Definir Time_num Como Numero;
	Time_num = HoraActual();
FinFuncion

Funcion num <- native_string_toNumber(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion native_print(text)
	Escribir text Sin Saltar;
FinFuncion

Funcion result_string <- native_string_ToLowerCase(text)
	Definir result_string Como Texto;
	result_string = Minusculas(text);
FinFuncion
//---[ user_input_ (#INP) ]----------------------------------------------------------------

Funcion user_input_wait
	Esperar Tecla;
FinFuncion
//---[ string_ (#STR) ]--------------------------------------------------------------------

Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion

Funcion boolean <- string_isEmpty(text)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(text, "");
FinFuncion

Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
FinFuncion

Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Numero;
	result = string_indexOf_fromIndex(text, text_match, 0);
FinFuncion

Funcion num <- string_length(text)
	Definir num Como Numero;
	num = native_string_length(text);
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

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
FinFuncion

Funcion result_string <- string_fit_end(text, text_pad)
	Definir result_string, res_pad Como Texto;
	Definir pad_length Como Entero;
	pad_length		= native_string_length(text_pad);
	result_string   = string_pad_limitEnd(text, text_pad, pad_length);
	result_string	= string_substring(result_string, 0, pad_length);
FinFuncion

Funcion result_str <- string_delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_delete", text, start, end);
	start_Str = string_substring(text, 0, start);//Hello <-]
	end_Str = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
FinFuncion

Funcion result_string <- string_insert(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, false);
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

Funcion result_string <- string_pad_limitEnd(text, text_pad, pad_length)
	Definir result_string, res_pad Como Texto;
	Definir text_length, res_length Como Entero;
	text_length		= native_string_length(text);
	res_length      = math_min_Int(text_length, pad_length);
	res_pad         = string_substring(text_pad, res_length, pad_length);
	result_string	= string_insert(text, res_pad, text_length);
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

Funcion result_string <- string_fit(text, text_pad)
	Definir result_string, res_pad Como Texto;
	Definir pad_length Como Entero;
	pad_length		= native_string_length(text_pad);
	result_string   = string_pad_limitStart(text, text_pad, pad_length);
	result_string	= string_substring(result_string, 0, pad_length);
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

Funcion result_string <- __private_string_insert_general(text, text_insert, index, isReplace)
	Definir result_string, before, after Como Texto;
	Definir index_after Como Entero;
	before        = string_substring(text, 0, index);
	index_after   = math_sum(index, if_else(isReplace, native_string_length(text_insert), 0));
	after         = string_substring_from(text, math_min_int(index_after, native_string_length(text)));
	result_string = string_append_withSeparator(before, after, text_insert);
FinFuncion

Funcion boolean <- string_isNumber(text)
	Definir boolean Como Logico;
	boolean = string_isNumber_int(text) | string_isNumber_float(text);
FinFuncion

Funcion result_string <- string_pad_limitStart(text, text_pad, pad_length)
	Definir result_string, res_pad Como Texto;
	Definir text_length, res_length, end_substring Como Entero;
	text_length   = native_string_length(text);
	res_length    = math_minus(pad_length, text_length);
	end_substring = math_max_Int(res_length, 0);
	res_pad       = string_substring(text_pad, 0, end_substring);
	result_string = string_insert(text, res_pad, 0);	
FinFuncion

Funcion result_string <- string_trim(text)
    Definir result_string Como Texto;
	result_string = string_Strip(text, " ");
FinFuncion

Funcion boolean <- string_startsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring(text, 0, native_string_length(text_match)), text_match);
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

Funcion result_str <- string_delete_From(text, start)
	Definir result_str Como Texto;
	result_str = string_delete(text, start, native_string_length(text));
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

Funcion boolean <- string_toBoolean(result_string)
	Definir boolean Como Logico;
	boolean = string_isBoolean_true(result_string);
FinFuncion

Funcion result <- string_lastIndexOf(text, text_match)//< ---
	Definir result Como Numero;
	result = string_lastindexOf_fromIndex(text, text_match, native_string_length(text));
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
//---[ print_ (#PRN) ]---------------------------------------------------------------------

Funcion break_Line
	print("\n");
FinFuncion

Funcion println_array_color(array, index_array, color)
	Definir i Como Numero;
	para i = 0 Hasta math_decrement(index_array) Hacer
		array[i] = string_append(color, array[i]);
	FinPara
	println_array(array, index_array);
FinFuncion

Funcion println(text)
	text = string_append(text, "\n");
	print(text);
FinFuncion

Funcion print(text)
	print_byseparator(text, "\n");
FinFuncion

Funcion println_array(array, index_array)
	Definir i Como Numero;
	para i = 0 Hasta math_decrement(index_array) Hacer
		native_println(array[i]);
	FinPara
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

Funcion Num <- number_NULL
	Definir Num Como Numero;
	Num = -1;
FinFuncion

Funcion TYPE <- TYPE_STRING
	Definir TYPE Como Texto;
	TYPE = "string";
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

Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
FinFuncion

Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
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

Funcion num_trunc <- math_truncate(num)
	Definir num_trunc, index_point Como Numero;
	Definir str_num Como Texto;
	str_num = number_toString(num);
	index_point = string_indexOf(str_num, ".");
	si index_point > 0 Entonces
		str_num = string_delete_From(str_num, index_point);
	FinSi
	num_trunc = string_toNumber(str_num);
FinFuncion

Funcion module <- math_module(dividend, divisor)
	Definir module Como Numero;// module = a-floor(a/b)*b
	divisor = math_max_float(divisor, 1);
	module = dividend - math_truncate(dividend/divisor) * divisor;
FinFuncion

Funcion float_lim <- math_limitDecimals(num, limitFloat)
	Definir float_lim, index_point, index_max, TextLength Como Numero;
	Definir str_num Como Texto;
	str_num = number_toString(num);//1.123
	TextLength = string_Length(str_num);
	index_point = math_increment(string_indexOf_fromIndex(str_num, ".", 0));
	si index_point > 1 Entonces
		index_point = math_min_Int(math_sum(index_point, limitFloat), TextLength );
		str_num = string_delete(str_num, index_point, TextLength);
	FinSi
	float_lim = string_toNumber(str_num);
FinFuncion

Funcion result <- math_max_Float(value, limit)
	Definir result Como Real;
	result = __private_math_choose(value, limit, true());
FinFuncion
//---[ boolean_ (#BOO) ]-------------------------------------------------------------------

Funcion boolean <- __private_isEquals_general(value1, value2)
	Definir boolean Como Logico;
	boolean = (value1 == value2);
FinFuncion

Funcion text <- boolean_ToString(boolean)	
	Definir text Como Texto;
	text = if_else(boolean, "true", "false");
FinFuncion

Funcion boolean <- true
	Definir boolean Como Logico;
	boolean = Verdadero;
FinFuncion

Funcion boolean <- false
	Definir boolean Como Logico;
	boolean = Falso;
FinFuncion
//---[ if_ (#CDT) ]------------------------------------------------------------------------

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

Funcion error_message_Function(method, message)
	error_message(string_append_withSeparator(method, message, "//"));
FinFuncion

Funcion exection_Error(message_Error)
	Definir error_int Como Entero;
	log_ERROR(message_Error);
	error_int = string_NULL();
FinFuncion
//---[ COLOR_ (#COL) ]---------------------------------------------------------------------

Funcion text_Color <- color_setColorText(text, color)
	Definir text_Color Como Texto;
	text_Color = string_append(color, text);
FinFuncion

Funcion color <- COLOR_CYAN
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(6);
FinFuncion

Funcion color <- COLOR_YELLOW
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(3);
FinFuncion

Funcion color <- COLOR_WHITE
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(7);
FinFuncion

Funcion color <- COLOR_BLUE
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(4);
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

Funcion color <- COLOR_RED
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(1);
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

Funcion string_Increment <- value_modify_StringNumber_inArea(Text, num_sum, index_start, index_end)
	Definir string_Increment, text_new, num_last, num_update Como Texto;
	text_new = string_delete(Text, index_start, index_end);
	num_last = string_substring(text, index_start, index_end);
	num_update = value_modify_StringNumber(num_last, num_sum);
	string_Increment = string_insert(text_new, num_update, index_start);
FinFuncion

Funcion string_Increment <- value_modify_StringNumber(string_number, num_sum)
	Definir string_Increment Como Texto;
	string_Increment = number_toString(math_sum(string_toNumber(string_number), num_sum));
FinFuncion

Funcion result <- value_StringCatch_ofType(value, TYPE, method, message) 
	Definir result Como Texto;
	result = value;
	Si value_isNull(value, TYPE_STRING()) Entonces
		result = value_getNullType_toString(TYPE);
		error_message_Function(method, message);
	FinSi
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

Funcion result <- value_getNullType_toString(TYPE)
	Definir result Como Texto;
	result = value_TypeToString(value_getNullType(TYPE), TYPE);
FinFuncion

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
//---[ collection_ (#CLL) ]----------------------------------------------------------------

Funcion result_string <- symbol_Separator
	Definir result_string Como Texto;
	result_string = "";//001F
FinFuncion

Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion

Funcion type_area <- collection_getContent_TypeArea(collection)
	Definir type_area Como Texto;
	type_area =  collection_getContent_TypeArea_End_Of_Text(collection, symbol_dataArea());
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

Funcion result_string <- symbol_ExtraData
	Definir result_string Como Texto;
	result_string = "";//0003
FinFuncion

Funcion type_area <- collection_getContent_TypeArea_End_Of_Text(collection, text_end)
	Definir type_area Como Texto;
	type_area = collection_getContent_Between_Symbols(collection, symbol_typeArea(), text_end);
FinFuncion

Funcion symbol_area <- symbol_dataArea
	Definir symbol_area Como Texto;
	symbol_area = "";
FinFuncion

Funcion symbol_area <- symbol_typeArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001D
FinFuncion

Funcion symbol_area <- symbol_metaData
	Definir symbol_area Como Texto;
	symbol_area = "";//001E
FinFuncion

Funcion index_MetaData <- collection_getIndex_metaData(struct_Collection)
	Definir index_MetaData Como Numero;
	index_MetaData = string_lastIndexOf(struct_Collection, symbol_metaData());
FinFuncion

Funcion type_area <- collection_getContent_Between_Symbols(collection, symbol_start, symbol_end)
	Definir Type_property, type_area Como Texto;
	Definir index_start, index_end, index_check Como Numero;
	index_start = math_increment(string_indexOf(collection, symbol_start));
	index_end = string_indexOf_fromIndex(collection, symbol_end, index_start);
	type_area = string_substring(collection, index_start, index_end);
FinFuncion
//---[ linearCollection_ (#LCL) ]----------------------------------------------------------

Funcion element_Result <- linearCollection_getLast(struct_Collection)
	Definir TYPE, element_String Como Texto;
	TYPE = collection_getContent_TypeArea(struct_Collection);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = linearCollection_getLast_toType(struct_Collection, TYPE);
FinFuncion

Funcion new_LinearColletion <- linearCollection_new(struct_Collection, TYPE)
	Definir new_LinearColletion Como Texto;
	new_LinearColletion = string_append_withSeparator(collection_new(struct_Collection, TYPE), "0", symbol_ExtraData());
FinFuncion

Funcion collection_result <- linearCollection_addLast_ByType(struct_Collection, Element, TYPE)
	Definir collection_result, element_String Como Texto;// (C, B, A/1;2;3)
	element_String = value_TypeToString(Element, TYPE);//"Z";
	collection_result = linearCollection_addLast_ByString(struct_Collection, element_String);
FinFuncion

Funcion element_Result <- linearCollection_getLast_toType(struct_Collection, TYPE)
	Definir element_String Como Texto;
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_String = linearCollection_getLast_ToString(struct_Collection);
	element_String = value_StringCatch_ofType(element_String, TYPE, "linearCollection_getLast_toType(struct, TYPE)", "struct is Empty");
	element_Result = value_stringToType(element_String, TYPE);
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

Funcion element_String <- linearCollection_getLast_ToString(struct_Collection)
	Definir element_String Como Texto;
	Definir index_DataArea, index_MetaData, property_ Como Numero;
	Definir length_separator, Index_EndMetaData , element_Length Como Numero;
	Si linearCollection_isEmpty(struct_Collection) Entonces
		error_message_Function("linearCollection_getLast_ToString", "struct is Empty");
		element_String = string_NULL();
	SiNo
		Index_EndMetaData = linearCollection_getIndex_EndMetaData(struct_Collection);
		length_separator = string_Length(symbol_Separator());
		index_MetaData = math_sum(collection_getIndex_metaData(struct_Collection), length_separator);
		property_ = string_indexOf_fromIndex(struct_Collection, symbol_Separator(), math_increment(index_MetaData));
		property_ = if_else(property_ > 0, property_, Index_EndMetaData);
		element_Length = string_toNumber(string_substring(struct_Collection, math_increment(index_MetaData), property_));
		index_MetaData = math_minus(index_MetaData, length_separator);
		element_String = string_substring(struct_Collection, math_minus(index_MetaData, element_Length), index_MetaData);
	FinSi
FinFuncion

Funcion collection_result <- linearCollection_increment_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, 1);
FinFuncion

Funcion struct_IsEmpty <- linearCollection_isEmpty(struct_Collection)
	Definir struct_IsEmpty Como Logico;
	struct_IsEmpty = (linearCollection_getSize(struct_Collection) < 1);
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

Funcion Size_int <- linearCollection_getSize(struct_Collection)
	Definir Size_int Como Numero;
	Size_int = string_toNumber(string_substring_from(struct_Collection, math_increment(linearCollection_getIndex_EndMetaData(struct_Collection))));
FinFuncion
//---[ temporal_ (#TMP) ]------------------------------------------------------------------

Funcion seconds <- temporal_getSeconds(struct_temporal)
    Definir seconds Como Real;
    seconds = linearCollection_getLast(struct_temporal);
FinFuncion

Funcion Temporal_Type <- chronoUnit_HOURS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "HOUR";
FinFuncion

Funcion Temporal_Type <- chronoUnit_MINUTES
	Definir Temporal_Type Como Texto;
	Temporal_Type = "MINUTE";
FinFuncion

Funcion Temporal_Type <- chronoUnit_SECONDS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "SECOND";
FinFuncion

Funcion isValid <- temporal_isValid(hours, minutes, seconds)
	Definir isValid Como Logico;
	isValid = temporal_isValidHours(hours) &temporal_isValidMinutes(minutes) & temporal_isValidSeconds(seconds);
FinFuncion

Funcion Temporal_Type <- chronoUnit_DAYS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "DAY";
FinFuncion

Funcion isValid <- temporal_isValidHours(hours)
	Definir isValid Como Logico;
	isValid = number_IsInRange(hours, 0, 23);
FinFuncion

Funcion isValid <- temporal_isValidMinutes(minutes)
	Definir isValid Como Logico;
	isValid = number_IsInRange(minutes, 0, 59);
FinFuncion

Funcion isValid <- temporal_isValidSeconds(seconds)
	Definir isValid Como Logico;
	isValid = number_IsInRange(seconds, 0, 59);
FinFuncion

Funcion second_ofUnit <- temporal_daysToSecond(unit_second)
	Definir second_ofUnit Como Real;
	second_ofUnit = unit_second * chronoUnit_getDuration(chronoUnit_DAYS);
FinFuncion

Funcion Temporal_Type <- TEMPORAL_LOCALTIME
	Definir Temporal_Type Como Texto;
	Temporal_Type = "LocalTime";
FinFuncion

Funcion time_result <- __private_temporal_addSecondOfDays(struct_time, seconds)
	Definir time_result Como Texto;
	time_result = linearCollection_addLast_ByType(struct_time, seconds, TYPE_FLOAT());
FinFuncion

Funcion Temporal_Type <- TEMPORAL_AMOUNT_DURATION
	Definir Temporal_Type Como Texto;
	Temporal_Type = "Duration";
FinFuncion

Funcion second_units <- chronoUnit_getDuration(chronoUnit_type)
    Definir second_units Como Entero;
    Segun chronoUnit_type Hacer
        chronoUnit_SECONDS():
            second_units = 1;
        chronoUnit_MINUTES:
            second_units = 60;
        chronoUnit_HOURS():
            second_units = 3600;
        chronoUnit_DAYS():
            second_units = 86400;
        chronoUnit_WEEKS():
            second_units = 604800;
        De Otro Modo:
            second_units = 0;
    FinSegun
FinFuncion

Funcion Temporal_Type <- chronoUnit_WEEKS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "WEEKS";
FinFuncion
//---[ localTime_ (#LTI) ]-----------------------------------------------------------------

Funcion LocalTime_result <- localTime_now
	Definir LocalTime_result, TimeNow_String Como Texto;
	Definir hours, minutes, seconds Como Real;
	TimeNow_String = native_localTime_Now_toString();
	hours = string_toNumber(string_substring(TimeNow_String, 0, 2));
	minutes = string_toNumber(string_substring(TimeNow_String, 2, 4));
	seconds = string_toNumber(string_substring(TimeNow_String, 4, 6));
	LocalTime_result = localTime_of(hours, minutes, seconds);
FinFuncion

Funcion Time_ToString <- localTime_ToString(struct_localTime)
	Definir Time_ToString, hours, minutes, seconds Como Texto;
	Definir TimeLocal Como Real;
	TimeLocal = temporal_getSeconds(struct_localTime);
	hours 	  = number_toString(duration_secondsToTemporalUnitPart(TimeLocal, chronoUnit_HOURS()));
	minutes   = number_toString(duration_secondsToTemporalUnitPart(TimeLocal, chronoUnit_MINUTES()));
	seconds   = number_toString(duration_secondsToTemporalUnitPart(TimeLocal, chronoUnit_SECONDS()));
	hours 	  = string_fit(hours, "00");
	minutes   = string_fit(minutes, "00");
	seconds   = string_fit(seconds, "00");
	Time_ToString = string_append_withSeparator(hours, minutes, ":");
	Time_ToString = string_append_withSeparator(Time_ToString, seconds, ":");
FinFuncion

Funcion LocalTime_result <- localTime_of(hours, minutes, seconds)
	Definir LocalTime_result Como Texto;
	Definir seconds_hours, seconds_minutes, seconds_total Como Real;
	si temporal_isValid(hours, minutes, seconds) Entonces
		seconds_hours = duration_TemporalUnitToSeconds(hours, chronoUnit_HOURS());
		seconds_minutes = duration_TemporalUnitToSeconds(minutes, chronoUnit_MINUTES());
		seconds_total = math_sum(seconds_hours, math_sum(seconds_minutes, seconds));
		LocalTime_result =  localTime_ofSecondOfDays(seconds_total);
	SiNo
		error_message_Function("localTime_of(hh,mm,ss)","The given time is not valid [valid:: 00:00:00 - 23:59:59]");
		LocalTime_result =  __private_localTime_ofNull();
	FinSi
FinFuncion

Funcion LocalTime_result <- localTime_ofSecondOfDays(seconds)
	Definir LocalTime_result Como Texto;
	LocalTime_result = linearCollection_new(TEMPORAL_LOCALTIME(), TYPE_FLOAT());
	LocalTime_result = __private_temporal_addSecondOfDays(LocalTime_result, seconds);
FinFuncion

Funcion LocalTime_result <- __private_localTime_ofNull
	Definir LocalTime_result Como Texto;
	LocalTime_result = localTime_ofSecondOfDays(number_NULL());
FinFuncion
//---[ duration_ (#DUR) ]------------------------------------------------------------------

Funcion struct_difference <- duration_between(duration_Start, duration_End)
    Definir struct_difference Como Texto;
    Definir difference Como Real;
    difference = math_minus(duration_getSeconds(duration_End), duration_getSeconds(duration_Start));
    struct_difference = duration_ofSeconds(difference);
FinFuncion

Funcion duration_ofUnit <- duration_getSeconds(struct_Duration)
	Definir duration_ofUnit Como Real;
	duration_ofUnit = temporal_getSeconds(struct_Duration);
FinFuncion

Funcion duration_ofUnit <- duration_ofSeconds(number_Units)
	Definir duration_ofUnit Como Texto;
	duration_ofUnit = duration_of(number_Units, chronoUnit_SECONDS());
FinFuncion

Funcion second_UnitTemp <- duration_secondsToTemporalUnitPart(unit_second, Temporal_Type)
	Definir second_UnitTemp Como Real;
	second_UnitTemp = math_truncate(duration_secondsToTemporalUnit(unit_second, Temporal_Type));
	Segun Temporal_Type Hacer
		Caso chronoUnit_DAYS():
			second_UnitTemp = second_UnitTemp;
		Caso chronoUnit_HOURS():
			second_UnitTemp = math_module(second_UnitTemp, 24);
		Caso chronoUnit_MINUTES():
			second_UnitTemp = math_module(second_UnitTemp, 60);
		Caso chronoUnit_SECONDS():
			second_UnitTemp = math_module(second_UnitTemp, 60);
		De Otro Modo:
			second_UnitTemp = 0;
	FinSegun
FinFuncion

Funcion second_ofUnit <- duration_TemporalUnitToSeconds(unit_seconds, Temporal_Type)
	Definir second_ofUnit Como Real;
	Segun Temporal_Type Hacer
		Caso chronoUnit_DAYS():
			second_ofUnit = temporal_daysToSecond(unit_seconds);
		Caso chronoUnit_HOURS():
			second_ofUnit = duration_hoursToSeconds(unit_seconds);
		Caso chronoUnit_MINUTES():
			second_ofUnit = duration_minutesToSeconds(unit_seconds);
		Caso chronoUnit_SECONDS():
			second_ofUnit = unit_seconds;
		De Otro Modo:
			second_ofUnit = 0;
	FinSegun
FinFuncion

Funcion duration_ofUnit <- duration_of(number_Units, Temporal_Type)
	Definir duration_ofUnit Como Texto;
	Definir second_duration Como Real;
	duration_ofUnit = linearCollection_new(TEMPORAL_AMOUNT_DURATION(), TYPE_FLOAT());
	second_duration = duration_TemporalUnitToSeconds(number_Units, Temporal_Type);
	duration_ofUnit = linearCollection_addLast_ByType(duration_ofUnit, second_duration, TYPE_FLOAT());
FinFuncion

Funcion second_UnitTemp <- duration_secondsToTemporalUnit(unit_second, Temporal_Type)
	Definir second_UnitTemp Como Real;
	Segun Temporal_Type Hacer
		Caso chronoUnit_DAYS():
			second_UnitTemp = duration_secondsToDay(unit_second);
		Caso chronoUnit_HOURS():
			second_UnitTemp = duration_secondsToHours(unit_second);
		Caso chronoUnit_MINUTES():
			second_UnitTemp = duration_secondsToMinutes(unit_second);
		Caso chronoUnit_SECONDS():
			second_UnitTemp = unit_second;
		De Otro Modo:
			second_UnitTemp = 0;
	FinSegun
	second_UnitTemp = math_limitDecimals(second_UnitTemp, 2);
FinFuncion

Funcion second_ofUnit <- duration_hoursToSeconds(unit_second)
	Definir second_ofUnit Como Real;
	second_ofUnit = unit_second * chronoUnit_getDuration(chronoUnit_HOURS);
FinFuncion

Funcion second_ofUnit <- duration_minutesToSeconds(unit_second)
	Definir second_ofUnit Como Real;
	second_ofUnit = unit_second * chronoUnit_getDuration(chronoUnit_MINUTES);
FinFuncion

Funcion unit_Res <- duration_secondsToDay(unit_second)
    Definir unit_Res Como Real;
    unit_Res = unit_second / chronoUnit_getDuration(chronoUnit_DAYS());
FinFuncion

Funcion unit_Res <- duration_secondsToHours(unit_second)
    Definir unit_Res Como Real;
    unit_Res = unit_second / chronoUnit_getDuration(chronoUnit_HOURS());
FinFuncion

Funcion unit_Res <- duration_secondsToMinutes(unit_second)
    Definir unit_Res Como Real;
    unit_Res = unit_second / chronoUnit_getDuration(chronoUnit_MINUTES());
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
//---[ canvas_ (#CAN) ]--------------------------------------------------------------------

Funcion canvas <- canvas_new(CWx, CWy)
	Definir canvas Como Texto;
	canvas = canvas_new_WithPixel(CWx, CWy, pixel_clear());
FinFuncion

Funcion canvas_display(canvas, CWx, CWy)
	canvas_display_MonoColor(canvas, CWx, CWy, "");
FinFuncion

Funcion canvas <- canvas_new_WithPixel(CWx, CWy, pixel_BackGround)
	Definir i Como Numero;
	Definir canvas, canvas_x Como Texto;
	canvas_x = canvas_Row_WithText(pixel_BackGround, CWx);
	Para i=1 Hasta CWy Con Paso 1 Hacer
		canvas = string_append(canvas, canvas_x);
	FinPara
FinFuncion

Funcion canvas_display_MonoColor(canvas, CWx, CWy, color)
	Definir i, slice_start, slice_end Como Numero;
	Definir canvas_array, DrawX Como Texto;
	Dimension canvas_array[CWy];
	para i=0 Hasta math_decrement(CWy) con paso 1 Hacer
		slice_start = canvas_getIndex(0, i, CWx);
		slice_end 	= canvas_getIndex(0, math_increment(i), CWx);
		DrawX		= string_substring(canvas, slice_start, slice_end);
		canvas_array[i] = DrawX;
	FinPara	
	println_array_color(canvas_array, CWy, color);
FinFuncion

Funcion row_x <- canvas_Row_WithText(text, repeats)
	Definir row_x Como Texto;
	row_x = string_repeatText(text, repeats);
FinFuncion

Funcion index_canvas <- canvas_getIndex(x0, y0, CWx)
	Definir index_canvas Como Numero;
	index_canvas= x0+(y0*CWx);
FinFuncion
//---[ tui_ (#TUI) ]-----------------------------------------------------------------------

Funcion pixel <- pixel_clear
	Definir pixel Como Texto;
	pixel =  get_pixel_withIndex(0);
FinFuncion

Funcion pixel <- get_pixel_withIndex(index)
	Definir pixel Como Texto;
	Segun index Hacer
		caso 0:
			pixel = "·";
		caso 1:
			pixel = "¤";//*
		caso 2: 
			pixel = "ø";
		De Otro Modo:
			pixel = "Ø";
	FinSegun
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
