Algoritmo MODULE_ASCII_HASH
	// Test call disabled: ascii_char() requires arguments
	// TODO: add valid arguments for standalone execution
FinAlgoritmo
///%%%%%[ ASCCI/HASH.......................... ]%%%%%%%[   #ASC    ]%%%%%%%%%%%%%%%%%%%%

Funcion char <- ascii_char(code)
	Definir i Como Numero;
	Definir char Como Texto;
	i=0;
	Mientras code >= ascii_getOffSet_Category(i+1) Hacer
		i = math_increment(i);
	FinMientras
	segun i Hacer
		0: char = char_At(ascii_GetControlSymbols(), code);
		1: char = char_At(ascii_GetBasicSymbols(), math_minus(code, 32));
		2: char = char_At(ascii_GetNumberSymbols(), math_minus(code, 48));
		3: char = char_At(ascii_GetOperatorSymbols(), math_minus(code, 58));
		4: char = char_At(ascii_GetLetters_UpperCase(), math_minus(code, 65));
		5: char = char_At(ascii_GetSpecialSymbols(), math_minus(code, 91));
		6: char = char_At(ascii_GetLetters_LowerCase(), math_minus(code, 97));
		7: char = char_At(ascii_GetExtraSymbols(), math_minus(code, 123));
		De Otro Modo: char = '�';
	FinSegun
FinFuncion

Funcion ascii_codeCategory <- ascii_ord(char)
	Definir ascii_codeCategory, i Como Numero;
	i=0;
	Mientras !ascii_IsCategory_index(char, i) Hacer
		i = math_increment(i);
	FinMientras
	segun i Hacer
		0: ascii_codeCategory = string_indexOf(ascii_GetControlSymbols(), char);
		1: ascii_codeCategory = math_sum(string_indexOf(ascii_GetBasicSymbols(), char), 32);
		2: ascii_codeCategory = math_sum(string_indexOf(ascii_GetNumberSymbols(), char), 48);
		3: ascii_codeCategory = math_sum(string_indexOf(ascii_GetOperatorSymbols(), char), 58);
		4: ascii_codeCategory = math_sum(string_indexOf(ascii_GetLetters_UpperCase(), char), 65);
		5: ascii_codeCategory = math_sum(string_indexOf(ascii_GetSpecialSymbols(), char), 91);
		6: ascii_codeCategory = math_sum(string_indexOf(ascii_GetLetters_LowerCase(), char), 97);
		7: ascii_codeCategory = math_sum(string_indexOf(ascii_GetExtraSymbols(), char), 123);
		De Otro Modo: ascii_codeCategory = 164;
	FinSegun
FinFuncion

Funcion hash <- ascii_hash_Mini_DBJ2(result_string)
	Definir hash, i, text_length, num_limited Como Numero;
	Definir key, left, Right, center, hash_str Como Texto;
	hash = 5381;
	num_limited = 100000000;
	text_length = string_Length(result_string);
	left = string_substring(result_string, math_max_Int(math_minus(text_length, 3), 0), text_length);
	Right = string_substring(result_string, 0, math_min_Int(2, text_length));
	center = string_substring(result_string, text_length/2 , math_min_Int(text_length/2  + 2, text_length));
	key = string_append_withSeparator(left, Right, center );
	para i = 0 Hasta math_decrement(string_Length(key)) con paso 1 hacer
		hash = (hash * 33) + ascii_ord( char_At(key, i));
		Si hash > num_limited Entonces
			hash_str = number_toString(hash);
			hash = string_toNumber(string_substring_from(hash_str, string_Length(hash_str)/2));
		FinSi
	FinPara
FinFuncion

Funcion hash <- ascii_hash_DBJ2(result_string)
	Definir hash, i Como Numero;
	hash = 5381;
	para i = 0 Hasta math_decrement(string_Length(result_string)) con paso 1 hacer
		hash = (hash * 33) + ascii_ord( char_At(result_string, i) );
	FinPara
FinFuncion

Funcion value_StringHash <- ascii_hash_mini_toString(value_String)
	Definir value_StringHash Como Texto;
	value_StringHash = number_toString(ascii_hash_Mini_DBJ2(value_String));
FinFuncion

Funcion ascii_codeCategory <- ascii_getOffSet_Category(index)
	Definir ascii_codeCategory Como Numero;
	segun index Hacer
		0: ascii_codeCategory = 0;
		1: ascii_codeCategory = 32;
		2: ascii_codeCategory = 48;
		3: ascii_codeCategory = 58;
		4: ascii_codeCategory = 65;
		5: ascii_codeCategory = 91;
		6: ascii_codeCategory = 97;
		7: ascii_codeCategory = 123;
		De Otro Modo: ascii_codeCategory = 164;
	FinSegun
FinFuncion

Funcion ControlSymbols <- ascii_GetControlSymbols
	Definir ControlSymbols Como Texto;
	ControlSymbols = "	";//TAP BL LF
FinFuncion

Funcion BasicSymbols <- ascii_GetBasicSymbols
	Definir BasicSymbols Como Texto;
	BasicSymbols = " !!#+$%&&()*+,,-./";// !"#$%&'()*+, -./
FinFuncion

Funcion NumberSymbols <- ascii_GetNumberSymbols
	Definir NumberSymbols Como Texto;
	NumberSymbols = "0123456789";
FinFuncion

Funcion OperatorSymbols <- ascii_GetOperatorSymbols
	Definir OperatorSymbols Como Texto;
	OperatorSymbols = ":;<=>?@";
FinFuncion

Funcion Letters_UpperCase <- ascii_GetLetters_UpperCase
	Definir Letters_UpperCase Como Texto;
	Letters_UpperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
FinFuncion

Funcion SpecialSymbols <- ascii_GetSpecialSymbols
	Definir SpecialSymbols Como Texto;
	SpecialSymbols = "`[\]^_``";
FinFuncion

Funcion Letters_LowerCase <- ascii_GetLetters_LowerCase
	Definir Letters_LowerCase Como Texto;
	Letters_LowerCase = "abcdefghijklmnopqrstuvwxyz";
FinFuncion

Funcion ExtraSymbols <- ascii_GetExtraSymbols
	Definir ExtraSymbols Como Texto;
	ExtraSymbols = "{|}~";
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

Funcion category_Check <- ascii_IsCategory(char, category_name)
    Definir category_Check Como Logico;
    Definir index_category Como Entero;
    index_category = ascii_getIndexCategory(category_name);
    category_Check = ascii_IsCategory_index(char, index_category);
	si string_isEquals(category_name, ascii_ALPHABETIC()) Entonces
		category_Check = ascii_IsLetters(char);
	FinSi
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

Funcion isType <- ascii_IsLetters(char)
	Definir isType Como Logico;
	isType = ascii_IsLetters_UpperCase(char) | ascii_IsLetter_LowerCase(char);//65-90
FinFuncion

Funcion isType <- ascii_IsControlSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '', '');//0-31
FinFuncion

Funcion isType <- ascii_IsBasicSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, ' ', '/');//32-47
FinFuncion

Funcion isType <- ascii_IsNumberSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '0', '9');//48-57
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

Funcion iSinRangue <- ascii_isInRangue(char, char_start, char_end)
	Definir iSinRangue Como Logico;
	iSinRangue = (char_start <= char & char <= char_end);
FinFuncion

Funcion result_String <- asci_getPrefix_alphabetic(text_input)
	Definir result_String Como Texto;
	result_String = asci_getPrefix_alphabetic_fromIndex(text_input, 0);
FinFuncion

Funcion result_String <- asci_getPrefix_alphabetic_fromIndex(text_input, start_position)
    Definir result_String Como Texto;
	result_String = ascii_getPrefix_Category_fromIndex(text_input, start_position, ascii_ALPHABETIC());
FinFuncion

Funcion result_String <- ascii_getPrefix_Control(text_input)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Control_fromIndex(text_input, 0);
FinFuncion

Funcion result_String <- ascii_getPrefix_Control_fromIndex(text_input, start_position)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Category_fromIndex(text_input, start_position, ascii_CONTROL());
FinFuncion

Funcion result_String <- ascii_getPrefix_Basic(text_input)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Basic_fromIndex(text_input, 0);
FinFuncion

Funcion result_String <- ascii_getPrefix_Basic_fromIndex(text_input, start_position)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Category_fromIndex(text_input, start_position, ascii_BASIC());
FinFuncion

Funcion result_String <- ascii_getPrefix_Numbers(text_input)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Numbers_fromIndex(text_input, 0);
FinFuncion

Funcion result_String <- ascii_getPrefix_Numbers_fromIndex(text_input, start_position)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Category_fromIndex(text_input, start_position, ascii_NUMBER());
FinFuncion

Funcion result_String <- ascii_getPrefix_Operators(text_input)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Operators_fromIndex(text_input, 0);
FinFuncion

Funcion result_String <- ascii_getPrefix_Operators_fromIndex(text_input, start_position)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Category_fromIndex(text_input, start_position, ascii_OPERATOR());
FinFuncion

Funcion result_String <- ascii_getPrefix_Upper(text_input)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Upper_fromIndex(text_input, 0);
FinFuncion

Funcion result_String <- ascii_getPrefix_Upper_fromIndex(text_input, start_position)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Category_fromIndex(text_input, start_position, ascii_ALPHABETIC_UPPER());
FinFuncion

Funcion result_String <- ascii_getPrefix_Special(text_input)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Special_fromIndex(text_input, 0);
FinFuncion

Funcion result_String <- ascii_getPrefix_Special_fromIndex(text_input, start_position)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Category_fromIndex(text_input, start_position, ascii_SPECIAL());
FinFuncion

Funcion result_String <- ascii_getPrefix_Lower(text_input)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Lower_fromIndex(text_input, 0);
FinFuncion

Funcion result_String <- ascii_getPrefix_Lower_fromIndex(text_input, start_position)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Category_fromIndex(text_input, start_position, ascii_ALPHABETIC_LOWER());
FinFuncion

Funcion result_String <- ascii_getPrefix_Extra(text_input)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Extra_fromIndex(text_input, 0);
FinFuncion

Funcion result_String <- ascii_getPrefix_Extra_fromIndex(text_input, start_position)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Category_fromIndex(text_input, start_position, ascii_EXTRA());
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

Funcion ascii_category <- ascii_CONTROL
    Definir ascii_category Como Texto; 
    ascii_category = "CONTROL";
FinFuncion

Funcion ascii_category <- ascii_BASIC
    Definir ascii_category Como Texto; 
    ascii_category = "BASIC";
FinFuncion

Funcion ascii_category <- ascii_NUMBER
    Definir ascii_category Como Texto; 
    ascii_category = "NUMBER";
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

Funcion ascii_category <- ascii_ALPHABETIC
    Definir ascii_category Como Texto; 
    ascii_category = "ALPHABETIC";
FinFuncion

Funcion ascii_category <- ascii_UNKNOWN_CATEGORY
    Definir ascii_category Como Texto; 
    ascii_category = "UNKNOWN";
FinFuncion

///==========[DEPENDECES]=============================================
//---[ native_ (#NAV) ]--------------------------------------------------------------------

Funcion length <- native_string_length(text)
	Definir length Como Numero;
	length = Longitud(text);
FinFuncion

Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

Funcion result_string <- native_number_ToString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion

Funcion num <- native_string_toNumber(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion native_println(text)
	Escribir text;
FinFuncion
//---[ string_ (#STR) ]--------------------------------------------------------------------

Funcion result_string <- char_At(text, index)
	Definir result_string Como Texto;
	Definir end_substring, text_length Como Entero;
	text_length   = native_string_length(text);
	end_substring = math_min_int(math_increment(index), text_length);
	result_string = string_substring(text, index, end_substring);
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

Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
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

Funcion result_string <- string_NULL
	Definir result_string Como Texto;
	result_string = "";
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

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
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
//---[ int_ (#NUM) ]-----------------------------------------------------------------------

Funcion result_string <- number_toString(num)
	Definir result_string Como Texto;
	result_string = native_number_ToString(num);
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

Funcion numDec <- math_minus(num, value)
	Definir numDec Como Numero;
	numDec = num - value;
FinFuncion

Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion

Funcion result <- math_max_int(value, limit)
	Definir result Como Entero;	
	result = __private_math_choose(value, limit, true());
FinFuncion

Funcion result <- math_min_int(value, limit)
	Definir result Como Entero;
	result = __private_math_choose(value, limit, false());
FinFuncion

Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
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
