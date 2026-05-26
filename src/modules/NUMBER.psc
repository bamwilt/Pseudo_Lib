Algoritmo MODULE_NUMBER
	// Test call disabled: number_toString() requires arguments
	// TODO: add valid arguments for standalone execution
FinAlgoritmo
///%%%%%[ NUMBER.............................. ]%%%%%%%[   #NUM    ]%%%%%%%%%%%%%%%%%%%%

Funcion result_string <- number_toString(num)
	Definir result_string Como Texto;
	result_string = native_number_ToString(num);
FinFuncion

Funcion num_range <- int_getRangeCeil_ToFromSeparatedString(num, list_Str)
	Definir num_range, i, length_value, length_listStr Como Numero;
	Definir num_carry, Char_Current Como Texto;
	num_carry = "";
	length_listStr = math_decrement(string_Length(list_Str));
	Mientras i < length_listStr Hacer
		Char_Current = char_At(list_Str, i);
		Si char_isNumber(Char_Current) Entonces
			num_carry = string_append(num_carry, Char_Current);
		SiNo
			length_value = string_toNumber(num_carry);
			num_carry = "";
			Si length_value >= num Entonces
				num_range = length_value;
				i = math_sum(i, length_listStr);
			FinSi
		FinSi
		i = math_increment(i);
	FinMientras
FinFuncion

Funcion int_result <- int_CompareTo(number0, number1)
	Definir int_result Como Entero;
	Si number0 < number1 Entonces
        int_result = -1;
    Sino 
        Si number0 > number1 Entonces
            int_result = 1;
        Sino
            int_result = 0;
        FinSi
    FinSi
FinFuncion

Funcion boolean <- Num_isInterger(num)
	Definir boolean Como Logico;
	boolean = (num == math_truncate(num));
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

Funcion int_result <- int_bitSum(A_int, B_int)
	Definir int_result Como Numero;
	int_result = binarystring_ToInt(binarystring_SUM(int_ToBinaryString(A_int), int_ToBinaryString(B_int)));
FinFuncion

Funcion binaryString <- int_ToBinaryString(num)
	Definir binaryString, reSidue Como Texto;
	Mientras num>0 Hacer
		reSidue = number_toString(math_module(num, 2));
		binaryString = string_insert(binaryString, reSidue, 0);
		num = math_truncate(num/2);
	FinMientras
	binaryString = string_pad(binaryString, "0000");
FinFuncion

Funcion int_result <- Int_BitMoveLeft(int_num, num_movements)
	Definir int_result Como Numero;
	int_result = binarystring_ToInt(binarystring_MoveLeft(int_ToBinaryString(int_num), num_movements));
FinFuncion

Funcion int_result <- Int_BitMoveRight(int_num, num_movements)
	Definir int_result Como Numero;
	int_result = binarystring_ToInt(binarystring_MoveRight(int_ToBinaryString(int_num), num_movements));
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

Funcion TYPE <- TYPE_OBJECT
	Definir TYPE Como Texto;
	TYPE = "object";
FinFuncion

Funcion Num <- number_NULL
	Definir Num Como Numero;
	Num = -1;
FinFuncion

Funcion TYPE <- STRUCT_TYPE_LIST
	Definir TYPE Como Texto;
	TYPE = "list";
FinFuncion

Funcion TYPE <- STRUCT_TYPE_MAP
	Definir TYPE Como Texto;
	TYPE = "map";
FinFuncion

Funcion TYPE <- STRUCT_TYPE_SET
	Definir TYPE Como Texto;
	TYPE = "set";
FinFuncion

Funcion TYPE <- STRUCT_TYPE_QUEUE
	Definir TYPE Como Texto;
	TYPE = "queue";
FinFuncion

Funcion TYPE <- STRUCT_TYPE_STACK
	Definir TYPE Como Texto;
	TYPE = "stack";
FinFuncion

Funcion TYPE <- STRUCT_TYPE_DEQUE
	Definir TYPE Como Texto;
	TYPE = "deque";
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

Funcion num <- native_string_toNumber(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

Funcion native_println(text)
	Escribir text;
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

Funcion num <- string_toNumber(result_string)
	Definir num Como Numero;
	Si !string_isEmpty(result_string) & string_isNumber(result_string) Entonces
		result_string = result_string; 
	SiNo
		result_string = "-1";
	FinSi
	num = native_string_toNumber(result_string);
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

Funcion result_string <- string_insert(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, false);
FinFuncion

Funcion result_string <- string_pad(text, text_pad)
	Definir result_string Como Texto;
	Definir pad_length Como Entero;
	pad_length    = native_string_length(text_pad);
	result_string = string_pad_limitStart(text, text_pad, pad_length);
FinFuncion

Funcion strSubs <- string_substring(result_string, start, end)
	Definir strSubs, str_data Como Texto;
	Definir end_substring Como Entero;
	message_validateIndexRange("string_substring", result_string, start, end);
	end_substring = math_max_int( math_minus(end, 1), 0);
	str_data = native_string_substring(result_string, start, end_substring);
	strSubs = if_else(number_isEquals(start, end), "", str_data);
FinFuncion

Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion

Funcion boolean <- string_isEmpty(text)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(text, "");
FinFuncion

Funcion boolean <- string_isNumber(text)
	Definir boolean Como Logico;
	boolean = string_isNumber_int(text) | string_isNumber_float(text);
FinFuncion

Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Numero;
	result = string_indexOf_fromIndex(text, text_match, 0);
FinFuncion

Funcion result_str <- string_delete_From(text, start)
	Definir result_str Como Texto;
	result_str = string_delete(text, start, native_string_length(text));
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

Funcion result_string <- string_NULL
	Definir result_string Como Texto;
	result_string = "";
FinFuncion

Funcion boolean <- string_contains(text, text_match)
	Definir boolean Como Logico;
	boolean = string_indexOf(text, text_match) > -1;
FinFuncion

Funcion result_string <- __private_string_insert_general(text, text_insert, index, isReplace)
	Definir result_string, before, after Como Texto;
	Definir index_after Como Entero;
	before        = string_substring(text, 0, index);
	index_after   = math_sum(index, if_else(isReplace, native_string_length(text_insert), 0));
	after         = string_substring_from(text, math_min_int(index_after, native_string_length(text)));
	result_string = string_append_withSeparator(before, after, text_insert);
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

Funcion result_str <- string_delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_delete", text, start, end);
	start_Str = string_substring(text, 0, start);//Hello <-]
	end_Str = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
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

Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
FinFuncion
//---[ array_ (#ARR) ]---------------------------------------------------------------------

Funcion bitChar <- array_bitChar_LogicalOperations(bitChar1, bitChar2, index)
	Definir bitChar Como Texto;
	Segun index Hacer
		caso 0:bitChar = bitChar_AND(bitChar1, bitChar2);
		caso 1:bitChar = bitChar_OR(bitChar1, bitChar2);
		caso 2:bitChar = bitChar_XOR(bitChar1, bitChar2);
		De Otro Modo: bitChar = bitChar_NOT(bitChar1);
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
//---[ binarystring_ (#BST) ]--------------------------------------------------------------

Funcion int_num <- binarystring_ToInt(binaryString)
	Definir int_num, i, binary_Length, bit Como Numero;
	binary_Length = math_decrement(string_Length(binaryString));
	int_num = 0;
	para i = 0 Hasta binary_Length Con Paso 1 hacer
		bit = string_toNumber(char_At(binaryString, i));//bit 1/0
		int_num = (int_num * 2) + bit;// 1 0 1 1 -->  (((n*2 + 1)*2 + 0)*2 + 1)*2 + 1) = 11
	FinPara
FinFuncion

Funcion binarystring_result <- binarystring_SUM(binaryString1, binaryString2)
    Definir binarystring_result, sum, carry Como Texto;
    Mientras string_Contains(binaryString2, "1") Hacer
        sum  = binarystring_XOR(binaryString1, binaryString2);
        binaryString2  = binarystring_MoveLeft(binarystring_AND(binaryString1, binaryString2), 1);
        binaryString1 = sum;
    FinMientras
    binarystring_result = sum;
FinFuncion

Funcion binarystring_result <- binarystring_MoveLeft(binaryString, num_movements)
	Definir binarystring_result Como Texto;
	binarystring_result = string_append(binaryString, string_repeatText("0", num_movements));
FinFuncion

Funcion binarystring_result <- binarystring_MoveRight(binaryString, num_movements)
	Definir binarystring_result Como Texto;
	binarystring_result = string_substring(binaryString, 0, math_minus(string_Length(binaryString), num_movements));
FinFuncion

Funcion binarystring_Result <- binarystring_XOR(binaryString1, binaryString2)
	Definir binarystring_Result Como Texto;
	binarystring_Result = binarystring_LogicalOperations(binaryString1, binaryString2, 2);
FinFuncion

Funcion binarystring_Result <- binarystring_AND(binaryString1, binaryString2)
	Definir binarystring_Result Como Texto;
	binarystring_Result = binarystring_LogicalOperations(binaryString1, binaryString2, 0);
FinFuncion

Funcion binarystring_Result <- binarystring_LogicalOperations(binaryString1, binaryString2, index)
	Definir binarystring_Result, Norm_binary Como Texto;
	Definir binary_MaxSize, i Como Numero;
	binarystring_Result = "";
	Norm_binary = binarystring_GetPad_MaxSize(binaryString1, binaryString2);
	binaryString1 = string_pad(binaryString1, Norm_binary);
	binaryString2 = string_pad(binaryString2, Norm_binary);
	binary_MaxSize = math_decrement(string_Length(Norm_binary));
	para i = 0 Hasta binary_MaxSize Con Paso 1 Hacer
		binarystring_Result = string_append(binarystring_result, array_bitChar_LogicalOperations(char_At(binaryString1, i), char_At(binaryString2, i), index));
	FinPara
	binarystring_Result = string_delete(binarystring_result, 0, if_else(string_indexOf(binarystring_result, "1") <> -1, string_indexOf(binarystring_result, "1"), 0));
FinFuncion

Funcion binaryPad <- binarystring_GetPad_MaxSize(binaryString1, binaryString2)
	Definir binaryPad Como Texto;
	Definir max_length Como Numero;
	max_length = math_max_Int(string_Length(binaryString1), string_Length(binaryString2));
	binaryPad= string_repeatText("0", max_length);
FinFuncion

Funcion bitChar_Result <- bitChar_AND(bit_char1, bit_char2)
	Definir bitChar_Result Como Texto;
	bitChar_Result = if_else(string_isEquals(bit_char1, "1") & string_isEquals(bit_char2, "1"), "1", "0");
FinFuncion

Funcion bitChar_Result <- bitChar_OR(bit_char1, bit_char2)
	Definir bitChar_Result Como Texto;
	bitChar_Result = if_else(string_isEquals(bit_char1, "0") & string_isEquals(bit_char2, "0"), "0", "1");
FinFuncion

Funcion bitChar_Result <- bitChar_XOR(bit_char1, bit_char2)
	Definir bitChar_Result Como Texto;
	bitChar_Result = if_else(string_isEquals(bit_char1, bit_char2), "0", "1");
FinFuncion

Funcion bitChar_Result <- bitChar_NOT(bit_char1)
	Definir bitChar_Result Como Texto;
	bitChar_Result = if_else(string_isEquals(bit_char1, "1"), "0", "1");
FinFuncion
//---[ math_ (#MAT) ]----------------------------------------------------------------------

Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
FinFuncion

Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion

Funcion numInc <- math_increment(num)
	Definir numInc Como Numero;
	numInc = num + 1;
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

Funcion result <- math_min_int(value, limit)
	Definir result Como Entero;
	result = __private_math_choose(value, limit, false());
FinFuncion

Funcion result <- math_max_Float(value, limit)
	Definir result Como Real;
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

Funcion result <- math_max_int(value, limit)
	Definir result Como Entero;	
	result = __private_math_choose(value, limit, true());
FinFuncion
//---[ boolean_ (#BOO) ]-------------------------------------------------------------------

Funcion boolean <- __private_isEquals_general(value1, value2)
	Definir boolean Como Logico;
	boolean = (value1 == value2);
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

Funcion exection_Error(message_Error)
	Definir error_int Como Entero;
	log_ERROR(message_Error);
	error_int = string_NULL();
FinFuncion

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
//---[ collection_ (#CLL) ]----------------------------------------------------------------

Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
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
