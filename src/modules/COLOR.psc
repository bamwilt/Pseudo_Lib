Algoritmo MODULE_COLOR
FinAlgoritmo
///%%%%%[ COLOR................... ]%%%%%%%[   #COL    ]%%%%%%%%%%%%%%%%%%%%
Funcion color <- COLOR_TRANSPARENT
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(0);
FinFuncion
// CODES <<<<<<
Funcion color <- COLOR_RED
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(1);
FinFuncion

Funcion color <- COLOR_GREEN
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(2);
FinFuncion

Funcion color <- COLOR_YELLOW
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(3);
FinFuncion

Funcion color <- COLOR_BLUE
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(4);
FinFuncion

Funcion color <- COLOR_MAGENTA
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(5);
FinFuncion

Funcion color <- COLOR_CYAN
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(6);
FinFuncion

Funcion color <- COLOR_WHITE
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(7);
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

Funcion color <- COLOR_STYLE_BOLD
	Definir color Como Texto;
	color =__private_color_getcolor_or_style_forIndex(1);
FinFuncion

Funcion color <- COLOR_STYLE_PLAIN
	Definir color Como Texto;
	color = __private_color_getcolor_or_style_forIndex(0);
FinFuncion

Funcion remove_Colors 
	
FinFuncion

Funcion text_Color <- color_setColorText(text, color)
	Definir text_Color Como Texto;
	text_Color = string_append(color, text);
FinFuncion

Funcion text_Color <- color_setColorText_brakelines(text, color)
	Definir text_Color Como Texto;
	si !string_hasColor(color) Entonces
		error_message_Function("color_setColorText", string_append("invalid color `", string_append(color, "`")));
		text_Color = string_append_in_brakelines(text, COLOR_TRANSPARENT());
	SiNo
		text_Color = string_append_in_brakelines(text, color);
	FinSi
FinFuncion

Funcion text_Color <- color_setColorText_multiColor(text)
	Definir text_Color, color_char Como Texto;
	Definir text_length, i Como Numero;
	text_length = string_Length(text);
	para i=0 Hasta text_length Hacer
		color_char = color_setColorText(char_At(text, i), COLOR_getcolor_forIndex(math_increment(math_module(i, 7))));
		text_Color = string_append(text_Color, color_char);
	FinPara
FinFuncion

Funcion text_Color <- color_Darked(text, color)
	Definir text_Color Como Texto;
	text = string_append(DARK, text);
	text_Color = string_append(color, text);
FinFuncion

Funcion text_dark <- color_Normal(text)
	Definir text_dark Como Texto;
	text_dark = string_append(DARK, text);
FinFuncion

///=====[ DEPENDENCIES ]=====[  ///   ]=====================================

//--[ASCII]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion isType <- ascii_IsNumberSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '0', '9');//48-57
FinFuncion
Funcion iSinRangue <- ascii_isInRangue(char, char_start, char_end)
	Definir iSinRangue Como Logico;
	iSinRangue = (char_start <= char & char <= char_end);
FinFuncion

//--[CHAR]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result_string <- char_At(text, index)
	Definir result_string Como Texto;
	result_string = string_substring(text, index, math_min_int(math_increment(index), string_Length(text)));
FinFuncion
Funcion boolean <- char_isNumber(char)
	Definir boolean Como Logico;
	boolean = ascii_IsNumberSymbols(char);
FinFuncion


//--[ERROR]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion error_message_Function(method, message)
	error_message(string_append_withSeparator(method, message, "//"));
FinFuncion
Funcion error_message(message)
	native_println(symbol_Escape()+"31m[ERROR] // "+message+".");
FinFuncion

//--[FALSE]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion boolean <- false
	Definir boolean Como Logico;
	boolean = Falso;
FinFuncion

//--[GENERAL]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion boolean <- __private_string_hasStyle_or_Color(text)
	Definir boolean Como Logico;
	boolean = string_Contains(text, symbol_Escape());
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
Funcion boolean <- __private_isEquals_general(value1, value2)
	Definir boolean Como Logico;
	boolean = (value1 == value2);
FinFuncion

//--[IF]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result <- if_else(condition, result1, result2, TYPE)
	Segun TYPE Hacer
		caso TYPE_INT():
			Definir result Como Entero;
		caso TYPE_BOOLEAN():
			Definir result Como Logico;
		caso TYPE_FLOAT():
			Definir result Como Real;
		De Otro Modo:
			Definir result Como Texto;
	FinSegun	
	Si condition Entonces
		result = result1;
	SiNo
		result = result2;
	FinSi	
FinFuncion

//--[MATH]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion
Funcion numInc <- math_increment(num)
	Definir numInc Como Numero;
	numInc = num + 1;
FinFuncion
Funcion module <- math_module(dividend, divisor)
	Definir module Como Numero;// module = a-floor(a/b)*b
	divisor = math_max_float(divisor, 1);
	module = dividend - math_truncate(dividend/divisor) * divisor;
FinFuncion
Funcion result <- math_min_int(value, limit)
	Definir result Como Entero;
	result = __private_math_choose(value, limit, false());
FinFuncion
Funcion result <- math_max_Float(value, limit)
	Definir result Como Real;
	result = __private_math_choose(value, limit, true());
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
Funcion result <- math_max_int(value, limit)
	Definir result Como Entero;	
	result = __private_math_choose(value, limit, true());
FinFuncion
Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
FinFuncion

//--[MESSAGE]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion message_validateIndexRange(Function_name, result_string, start, end)
    Definir num_length Como Numero;
    num_length = string_Length(result_string);
    number_validateNumberRange(Function_name, start, 0, num_length);
    number_validateNumberRange(Function_name, end, 0, num_length);
	si (start > end) Entonces
		error_message_Function(Function_name, "Index Error: Start > End");
	FinSi
FinFuncion

//--[NATIVE]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result_string <- native_number_ToString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion
Funcion length <- native_string_length(text)
	Definir length Como Numero;
	length = Longitud(text);
FinFuncion
Funcion native_println(text)
	Escribir text;
FinFuncion
Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion
Funcion num <- native_string_toNumber(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

//--[NUMBER]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result_string <- number_toString(num)
	Definir result_string Como Texto;
	result_string = native_number_ToString(num);
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

//--[STRING]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion
Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
FinFuncion
Funcion boolean <- string_hasColor(text)
	Definir boolean Como Logico;
	boolean = __private_string_hasStyle_or_Color(text);
FinFuncion
Funcion text_update <- string_append_in_brakelines(text, text_append)
	Definir text_update Como Texto;
	text_update = string_append_in_separators(text, text_append, "\n");
FinFuncion
Funcion num <- string_Length(text)
	Definir num Como Numero;
	num = native_string_length(text);
FinFuncion
Funcion text_Color <- string_append_in_separators(text, text_append, separator)
    Definir text_Color Como Texto;
    Definir index_sep, sep_length Como Numero;
    text_Color = "";
    sep_length = string_Length(separator);
    text_Color = string_append(text_Color, text_append);
    index_sep = string_indexOf(text, separator);
    Mientras index_sep >= 0 Hacer
        text_Color = string_append(text_Color, string_substring(text, 0, index_sep + sep_length));
        text_Color = string_append(text_Color, text_append);
        text = string_substring_from(text, index_sep + sep_length);
        index_sep = string_indexOf_fromIndex(text, separator, 0);
    FinMientras
    text_Color = string_append(text_Color, text);
FinFuncion
Funcion strSubs <- string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	message_validateIndexRange("string_substring", result_string, start, end);
	strSubs = if_else(number_isEquals(start, end), "", native_string_substring(result_string, start, math_max_int(end-1, 0)), TYPE_STRING());
FinFuncion
Funcion boolean <- string_Contains(text, text_match)
	Definir boolean Como Logico;
	boolean = string_indexOf(text, text_match) > -1;
FinFuncion
Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Numero;
	result = string_indexOf_fromIndex(text, text_match, 0);
FinFuncion
Funcion strSubs <- string_substring_from(result_string, start)
	Definir strSubs Como Texto;
	strSubs = string_substring(result_string, start, string_Length(result_string));
FinFuncion
Funcion index <- string_indexOf_fromIndex(text, match, index_Start)
	Definir index, i, match_length, index_end Como Numero;
	Definir condition Como Logico;
    index = -1;
    match_length = string_Length(match);
	i = math_max_Int(index_Start, 0);
	index_end = string_Length(text) - match_length;
	Mientras index_end >= i & number_isEquals(index, -1) Hacer
		Si string_isEquals(match, string_substring(text, i, i+match_length)) Entonces
			index = i;
			i = math_sum(index_end, 1);
		SiNo
			i = math_sum(i, 1);
		FinSi
	FinMientras
FinFuncion
Funcion result_str <- string_delete_From(text, start)
	Definir result_str Como Texto;
	result_str = string_delete(text, start, string_Length(text));
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
Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
FinFuncion
Funcion result_str <- string_delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_delete", text, start, end);
	start_Str = string_substring_from_start(text, start);//Hello <-]
	end_Str = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
FinFuncion
Funcion boolean <- string_isEmpty(text)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(text, "");
FinFuncion
Funcion boolean <- string_isNumber(text)
	Definir boolean Como Logico;
	boolean = string_isNumber_int(text) O string_isNumber_float(text);
FinFuncion
Funcion strSubs <- string_substring_from_start(result_string, numLimit)
	Definir strSubs Como Texto;
	strSubs = string_substring(result_string, 0, numLimit);
FinFuncion
Funcion boolean <- string_isNumber_int(text)
	Definir boolean Como Logico;
	Definir i, length Como Numero;
	text = if_else(string_startsWith(text, "-"), string_substring_from(text, 1), text, TYPE_STRING());
	length = string_Length(text);
	boolean = false;
	i = 0;
	Mientras i<length Hacer
		boolean = char_isNumber(char_At(text, i));
		i = if_else(boolean, math_increment(i), length, TYPE_INT());
	FinMientras
FinFuncion
Funcion boolean <- string_isNumber_float(str_num)
	Definir boolean, interger_valid, decimal_valid Como Logico;
	Definir str_decimal Como Texto;
	str_num = if_else(string_Contains(str_num, " "), string_trim(str_num), str_num, TYPE_STRING());// poner esto en trim
	Si string_Contains(str_num, ".") & string_indexOf(str_num, ".") > 0 Entonces
		interger_valid = string_isNumber(string_substring_from_start(str_num, string_indexOf(str_num, ".")));
		str_decimal = string_substring_from(str_num, math_increment(string_indexOf(str_num, ".")));
		decimal_valid = string_isNumber(str_decimal) & !string_startsWith(str_decimal, "-");
		boolean = decimal_valid & interger_valid;
	SiNo
		boolean = string_isNumber_int(str_num);
	FinSi
FinFuncion
Funcion boolean <- string_startsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring_from_start(text, string_Length(text_match)), text_match);
FinFuncion
Funcion result_string <- string_trim(text)
    Definir result_string Como Texto;
	result_string = string_Strip(text, " ");
FinFuncion
Funcion result_string <- string_Strip(text, strip_symbol)
    Definir result_string Como Texto;
    Definir start, end, length_text Como Entero;
    length_text = string_Length(text);
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

//--[SYMBOL]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion

//--[TRUE]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion boolean <- true
	Definir boolean Como Logico;
	boolean = Verdadero;
FinFuncion

//--[TYPE]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion TYPE <- TYPE_STRING
	Definir TYPE Como Texto;
	TYPE = "string";
FinFuncion
Funcion TYPE <- TYPE_INT
	Definir TYPE Como Texto;
	TYPE = "int";
FinFuncion
Funcion TYPE <- TYPE_BOOLEAN
	Definir TYPE Como Texto;
	TYPE = "boolean";
FinFuncion
Funcion TYPE <- TYPE_FLOAT
	Definir TYPE Como Texto;
	TYPE = "float";
FinFuncion