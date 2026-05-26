Algoritmo MODULE_PRINTERS
	println("Hello\nWorld");
FinAlgoritmo
///%%%%%[ PRINTERS............................ ]%%%%%%%[   #PRN    ]%%%%%%%%%%%%%%%%%%%%

Funcion print(text)
	print_byseparator(text, "\n");
FinFuncion

Funcion println(text)
	text = string_append(text, "\n");
	print(text);
FinFuncion

Funcion print_byseparator(text, separator)
	__private_Print_Split(text, separator);
FinFuncion

Funcion println_bySeparator(text, separator)
	text = string_append(text, separator);
	print_bySeparator(text, separator);
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

Funcion println_progress(text)
	text = string_append(text, "\n");
	print_progress_with_speed(text, 60);
FinFuncion

Funcion print_progress(text)
	print_progress_with_speed(text, 60);
FinFuncion

Funcion print_progress_Simple(text)
	print_progress_with_speed_Simple(text, 60);
FinFuncion

Funcion print_progress_with_speed(text, speed)
	Definir index_break_Line Como Numero;
	index_break_Line = string_indexOf(text, "\n");
	Mientras index_break_Line > -1 Hacer
		print_progress_with_speed_Simple(string_substring(text, 0, index_break_Line), speed);
		break_Line();
		text = string_substring(text, math_sum(index_break_Line, 2), string_Length(text));
		index_break_Line = string_indexOf(text, "\n");
	FinMientras
	print_progress_with_speed_Simple(string_substring(text, 0, string_Length(text)), speed);
FinFuncion

Funcion print_progress_with_speed_Simple(text, speed)
	Definir i, end Como Numero;
	end = string_Length(text);
	Para i = 0 Hasta end hacer 
		native_print(char_At(text, i));
		sleep(speed);
	FinPara
FinFuncion

Funcion print_shoot(text)
	__private_internal_printer_formater_shoot(text, false);
FinFuncion

Funcion println_shoot(text)
	text = string_append(text, "\n");
	print_shoot(text);
FinFuncion

Funcion print_shoot_clear(text)
	__private_internal_printer_formater_shoot(text, true);
FinFuncion

Funcion println_shoot_clear(text)
	text = string_append(text, "\n");
	print_shoot_clear(text);
FinFuncion

Funcion __private_internal_printer_formater_shoot(text, isClear)
	Definir index_break_Line, text_length, num_break_Line, i Como Numero;
	Definir text_ammunition Como Texto;
	num_break_Line = string_countMatches(text, "\n");
	num_break_Line = math_max_int(num_break_Line, 1);
	Dimension text_ammunition[num_break_Line];
	
	index_break_Line = string_indexOf_fromIndex(text, "\n", 0);
	i=0;
	Mientras i<num_break_Line Hacer
		text_ammunition[i] = string_substring(text, 0, index_break_Line);
		text = string_substring(text, math_sum(index_break_Line, 2), string_Length(text));
		index_break_Line = string_indexOf_fromIndex(text, "\n", 0);
		i=math_increment(i);
	FinMientras
	
	Si isClear Entonces
		clear_Console();
	FinSi
	
	println_array(text_ammunition, num_break_Line);//shoot
	native_print(string_substring(text, 0, string_Length(text)));
FinFuncion

Funcion println_array(array, index_array)
	Definir i Como Numero;
	para i = 0 Hasta math_decrement(index_array) Hacer
		native_println(array[i]);
	FinPara
FinFuncion

Funcion print_array(array, index_array)
	Definir i Como Numero;
	para i = 0 Hasta math_decrement(index_array) Hacer
		native_print(array[i]);
	FinPara
FinFuncion

Funcion println_array_color(array, index_array, color)
	Definir i Como Numero;
	para i = 0 Hasta math_decrement(index_array) Hacer
		array[i] = string_append(color, array[i]);
	FinPara
	println_array(array, index_array);
FinFuncion

Funcion print_array_color(array, index_array, color)
	Definir i Como Numero;
	para i = 0 Hasta math_decrement(index_array) Hacer
		array[i] = string_append(color, array[i]);
	FinPara
	print_array(array, index_array);
FinFuncion

Funcion print_Repeat(text, numEnd)
	Definir start Como Numero;
	Para start=1 Hasta numEnd Con Paso 1 Hacer
		print(text);
	FinPara
FinFuncion

Funcion println_Repeat(text, numEnd)
	Definir start Como Numero;
	Para start=1 Hasta numEnd Con Paso 1 Hacer
		println(text);
	FinPara
FinFuncion

Funcion break_Line
	print("\n");
FinFuncion

Funcion hide_Text
	print(string_append(symbol_Escape(), "2J"));
FinFuncion

///==========[DEPENDECES]=============================================
//---[ native_ (#NAV) ]--------------------------------------------------------------------

Funcion native_println(text)
	Escribir text;
FinFuncion

Funcion native_print(text)
	Escribir text Sin Saltar;
FinFuncion

Funcion clear_Console
	native_clear_console();
FinFuncion

Funcion length <- native_string_length(text)
	Definir length Como Numero;
	length = Longitud(text);
FinFuncion

Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

Funcion native_clear_console
	Limpiar Pantalla;
FinFuncion

Funcion result_string <- native_number_ToString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion
//---[ string_ (#STR) ]--------------------------------------------------------------------

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
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

Funcion result_string <- char_At(text, index)
	Definir result_string Como Texto;
	Definir end_substring, text_length Como Entero;
	text_length   = native_string_length(text);
	end_substring = math_min_int(math_increment(index), text_length);
	result_string = string_substring(text, index, end_substring);
FinFuncion

Funcion count <- string_countMatches(text, text_matcher)
	Definir count Como Numero;
	count =	__private_string_countMatches_general(text, text_matcher, false);
FinFuncion

Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion

Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
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

Funcion strSubs <- string_substring_from(result_string, start)
	Definir strSubs Como Texto;
	Definir end_substring Como Entero;
	end_substring = native_string_length(result_string);
	strSubs = string_substring(result_string, start, end_substring);
FinFuncion
//---[ sleep_ (#SLP) ]---------------------------------------------------------------------

Funcion sleep(ms)
	Esperar ms Milisegundos;
FinFuncion
//---[ int_ (#NUM) ]-----------------------------------------------------------------------

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

Funcion result_string <- number_toString(num)
	Definir result_string Como Texto;
	result_string = native_number_ToString(num);
FinFuncion
//---[ math_ (#MAT) ]----------------------------------------------------------------------

Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion

Funcion result <- math_max_int(value, limit)
	Definir result Como Entero;	
	result = __private_math_choose(value, limit, true());
FinFuncion

Funcion numInc <- math_increment(num)
	Definir numInc Como Numero;
	numInc = num + 1;
FinFuncion

Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
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

Funcion error_message(message)
	native_println(symbol_Escape() + "31m[ERROR] // " + message + ".");
FinFuncion
//---[ collection_ (#CLL) ]----------------------------------------------------------------

Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion
