Algoritmo MODULE
FinAlgoritmo
///%%%%%[ INPUT................... ]%%%%%%%[   #INP    ]%%%%%%%%%%%%%%%%%%%%
//----[ PRIMITIVE ]--------------------------------------------------<#>
Funcion user_input <- user_input_String
	Definir user_input Como Texto;
	Leer user_input;
FinFuncion

Funcion user_input <- user_input_Interger
	Definir user_input Como Numero;
	Definir user_input_str Como Texto;
	user_input_str = user_input_String();
	user_input = string_toNumber(user_input_str);
FinFuncion

Funcion user_input <- user_input_boolean
	Definir user_input Como Logico;
	user_input = string_isBoolean_true(user_input_String());
FinFuncion

Funcion user_input <- user_input_Float
	Definir user_input Como Real;
	Definir user_input_str Como Texto;
	user_input_str = user_input_String();
	si string_isNumber_float(user_input_str) Entonces
		user_input = string_toNumber(user_input_str);
	SiNo
		user_input = number_NULL();
	FinSi
FinFuncion

Funcion user_input_wait
	Esperar Tecla;
FinFuncion
//----[ OPTIONS ]----------------------------------------------------<#>
Funcion user_input <- user_input_options_message(options_text, message, TYPE)
	Segun TYPE Hacer
		caso TYPE_BOOLEAN(): Definir user_input Como Logico;
		caso TYPE_INT(): Definir user_input Como Numero;
		caso TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = user_input_options_separator_message(options_text, symbol_Separator_Simple(), message, TYPE);
FinFuncion

Funcion user_input <- user_input_options_separator_message(options_text, separator, message, TYPE)
	Segun TYPE Hacer
		caso TYPE_BOOLEAN(): Definir user_input Como Logico;
		caso TYPE_INT(): Definir user_input Como Numero;
		caso TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	native_println(message);
	user_input = __private_user_input_options_separator(user_input_String(), options_text, separator, TYPE);
FinFuncion

Funcion user_input <- user_input_options(options_text, TYPE)
	Segun TYPE Hacer
		caso TYPE_BOOLEAN(): Definir user_input Como Logico;
		caso TYPE_INT(): Definir user_input Como Numero;
		caso TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = __private_user_input_options_separator(user_input_String(), options_text, symbol_Separator_Simple(), TYPE);
FinFuncion

Funcion user_input <- user_input_options_ignoreCase(options_text, TYPE)
	Segun TYPE Hacer
		caso TYPE_BOOLEAN(): Definir user_input Como Logico;
		caso TYPE_INT(): Definir user_input Como Numero;
		caso TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = __private_user_input_options_separator(native_string_toLowerCase(user_input_String()), native_string_toLowerCase(options_text), symbol_Separator_Simple(), TYPE);
FinFuncion

Funcion user_input <- user_input_options_separator(options_text, separator, TYPE)
	Segun TYPE Hacer
		caso TYPE_BOOLEAN(): Definir user_input Como Logico;
		caso TYPE_INT(): Definir user_input Como Numero;
		caso TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = __private_user_input_options_separator(user_input_String(), options_text, separator, TYPE);
FinFuncion

Funcion user_input <- __private_user_input_options_separator(user_input_obtained, options_text, separator, TYPE)
	si string_struct_contains(user_input_obtained, options_text, separator) Entonces
		user_input_obtained = user_input_obtained;
	SiNo
		user_input_obtained = string_NULL();
	FinSi
	Segun TYPE Hacer
		caso TYPE_BOOLEAN(): Definir user_input Como Logico;
		caso TYPE_INT(): Definir user_input Como Numero;
		caso TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = value_stringToType(user_input_obtained, TYPE);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion result_string <- symbol_Separator_Simple
	Definir result_string Como Texto;
	result_string = ",";
FinFuncion
///=====[ DEPENDENCIES ]=====[  ///   ]=====================================
//:: #NAV :: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
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

Funcion result_string <- native_number_toString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion

Funcion result_string <- native_string_toLowerCase(text)
	Definir result_string Como Texto;
	result_string = Minusculas(text);
FinFuncion
//:: #MAT :: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
Funcion result <- math_max_int(value, limit)
	Definir result Como Entero;	
	result = __private_math_choose(value, limit, true());
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

Funcion numInc <- math_increment(num)
	Definir numInc Como Numero;
	numInc = num + 1;
FinFuncion

Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion

Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
FinFuncion

Funcion numDec <- math_minus(num, value)
	Definir numDec Como Numero;
	numDec = num - value;
FinFuncion
//:: #STR :: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
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
// :: append ::
Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
FinFuncion
// :: Equals ::
Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
FinFuncion

Funcion boolean <- string_startsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring(text, 0, native_string_length(text_match)), text_match);
FinFuncion
// :: string_is :: 
Funcion boolean <- string_isEmpty(text)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(text, "");
FinFuncion

Funcion boolean <- string_isNumber(text)
	Definir boolean Como Logico;
	boolean = string_isNumber_int(text) | string_isNumber_float(text);
FinFuncion

Funcion isNumber <- string_isNumber_int(text_check)
	Definir isNumber Como Logico;
	Definir i, length Como Numero;
	text_check = string_trim(text_check);
	text_check = if_else(string_startsWith(text_check, "-"), string_substring_from(text_check, 1), text_check, TYPE_STRING());
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
// :: constains ::
Funcion boolean <- string_contains(text, text_match)
	Definir boolean Como Logico;
	boolean = string_indexOf(text, text_match) > -1;
FinFuncion

Funcion found <- string_struct_contains_ignoreCase(text_search, string_struct, separator)
	Definir found Como Logico;
	found = string_struct_contains(native_string_toLowerCase(text_search), native_string_toLowerCase(string_struct), separator);
FinFuncion

Funcion found <- string_struct_contains(text_search, string_struct, separator)
	Definir found Como Logico;
	Definir startIndex, endIndex, collectionLength, separatorLength Como Numero;
	Definir currentToken Como Texto;
	found = false();
	startIndex = 0;
	collectionLength = native_string_length(string_struct);
	separatorLength = native_string_length(separator);
	Mientras startIndex < collectionLength Hacer
		endIndex = string_indexOf_fromIndex(string_struct, separator, startIndex);
		Si endIndex < 0 Entonces
			endIndex = collectionLength;
		FinSi
		currentToken = string_substring(string_struct, startIndex, endIndex);
		Si string_isEquals(text_search, currentToken) Entonces
			found = true();
			startIndex = collectionLength;
		SiNo
			startIndex = math_sum(endIndex, separatorLength);
		FinSi
	FinMientras
FinFuncion
// :: index ::
Funcion result <- string_indexOf(text, text_match)
	Definir result Como Numero;
	result = string_indexOf_fromIndex(text, text_match, 0);
FinFuncion

Funcion index <- string_indexOf_fromIndex(text, match, index_Start)
	Definir index, i, match_length, index_end Como Numero;
	Definir condition Como Logico;
    index = -1;
    match_length = native_string_length(match);
	i = math_max_int(index_Start, 0);
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
// :: substring ::
Funcion strSubs <- string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	message_validateIndexRange("string_substring", result_string, start, end);
	strSubs = if_else(number_isEquals(start, end), "", native_string_substring(result_string, start, math_max_int(end-1, 0)), TYPE_STRING());
FinFuncion

Funcion strSubs <- string_substring_from(result_string, start)
	Definir strSubs Como Texto;
	strSubs = string_substring(result_string, start, native_string_length(result_string));
FinFuncion

Funcion result_string <- char_At(text, index)
	Definir result_string Como Texto;
	result_string = string_substring(text, index, math_min_int(math_increment(index), native_string_length(text)));
FinFuncion
// :: trim ::
Funcion result_string <- string_trim(text)
    Definir result_string Como Texto;
	result_string = string_Strip(text, " ");
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
    result_string = string_substring(text, start, end);
FinFuncion
// :: string_isBool ::
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
//:: #CON :: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
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

Funcion error_message_Function(method, message)
	error_message(string_append_withSeparator(method, message, "//"));
FinFuncion

Funcion error_message(message)
	native_println(symbol_Escape()+"31m[ERROR] // "+message+".");
FinFuncion

Funcion message_validateIndexRange(Function_name, result_string, start, end)
    Definir num_length Como Numero;
    num_length = native_string_length(result_string);
    number_validateNumberRange(Function_name, start, 0, num_length);
    number_validateNumberRange(Function_name, end, 0, num_length);
	si (start > end) Entonces
		error_message_Function(Function_name, "Index Error: Start > End");
	FinSi
FinFuncion

Funcion number_validateNumberRange(Function_name, value, min_val, max_val)
	si (min_val > max_val) Entonces
		error_message_Function(Function_name, "Config Error: Min > Max");
	FinSi
    Si !number_IsInRange(value, min_val, max_val) Entonces
        Definir error_msg Como Texto;
        error_msg = string_append("Value out of range: ", native_number_toString(value));
        error_msg = string_append(error_msg, string_append(" [Limit: ", native_number_toString(min_val)));
        error_msg = string_append(error_msg, string_append(" - ", native_number_toString(max_val)));
        error_msg = string_append(error_msg, "]");
        error_message_Function(Function_name, error_msg);
    FinSi
FinFuncion

Funcion IsInRange <- number_IsInRange(value, min_val, max_val)
    Definir IsInRange Como Logico;
    IsInRange = value >= min_val & value <= max_val;
FinFuncion
//:: #BOO :: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
Funcion boolean <- false
	Definir boolean Como Logico;
	boolean = Falso;
FinFuncion

Funcion boolean <- true
	Definir boolean Como Logico;
	boolean = Verdadero;
FinFuncion

Funcion boolean <- number_isEquals(num, num2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(num, num2);
FinFuncion

Funcion boolean <- __private_isEquals_general(value1, value2)
	Definir boolean Como Logico;
	boolean = (value1 == value2);
FinFuncion
//:: #COL :: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion
//:: #VAL :: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
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

Funcion TYPE <- TYPE_STRING
	Definir TYPE Como Texto;
	TYPE = "string";
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

Funcion result_string <- string_NULL
	Definir result_string Como Texto;
	result_string = "";
FinFuncion

Funcion Num <- number_NULL
	Definir Num Como Numero;
	Num = -1;
FinFuncion
//:: #ASC :: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
Funcion isType <- ascii_IsNumberSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, "0", "9");//48-57
FinFuncion

Funcion iSinRangue <- ascii_isInRangue(char, char_start, char_end)
	Definir iSinRangue Como Logico;
	iSinRangue = (char_start <= char & char <= char_end);
FinFuncion
//===============================[ END_CODE ]===============================