Algoritmo MODULE
FinAlgoritmo
///%%%%%[ STRING.................. ]%%%%%%%[   #STR    ]%%%%%%%%%%%%%%%%%%%%
//----[ APPENDS ]--------------------------------------------------------<#>
Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
FinFuncion

Funcion text_update <- string_append_in_brakelines(text, text_append)
	Definir text_update Como Texto;
	text_update = string_append_in_separators(text, text_append, "\n");
FinFuncion

Funcion text_Color <- string_append_in_separators(text, text_append, separator)
    Definir text_Color Como Texto;
    Definir index_sep, sep_length Como Numero;
    text_Color = "";
    sep_length = native_string_length(separator);
    text_Color = string_append(text_Color, text_append);
    index_sep = string_indexOf(text, separator);
    Mientras index_sep >= 0 Hacer
        text_Color = string_append(text_Color, string_substring(text, 0, math_sum(index_sep, sep_length)));
        text_Color = string_append(text_Color, text_append);
        text = string_substring_from(text, math_sum(index_sep, sep_length));
        index_sep = string_indexOf_fromIndex(text, separator, 0);
    FinMientras
    text_Color = string_append(text_Color, text);
FinFuncion
//----[ STRING_PARSE ]---------------------------------------------------<#>
Funcion boolean <- string_toBoolean(result_string)
	Definir boolean Como Logico;
	boolean = string_isBoolean_true(result_string);
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
//----[ LENGTH ]---------------------------------------------------------<#>
Funcion num <- string_length(text)
	Definir num Como Numero;
	num = native_string_length(text);
FinFuncion

Funcion length_String <- string_length_ToString(text)
	Definir length_String Como Texto;
	length_String = native_number_toString(native_string_length(text));
FinFuncion
//----[ INSERT ]---------------------------------------------------------<#>
Funcion result_string <- string_insert(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, false);
FinFuncion

Funcion result_string <- string_insert_withReplace(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, true);
FinFuncion

Funcion result_string <- string_insert_from_End(text, text_insert)
	Definir result_string Como Texto;
	result_string = string_insert(text, text_insert, native_string_length(text));
FinFuncion

Funcion result_string <- __private_string_insert_general(text, text_insert, index, isReplace)
	Definir result_string, before, after Como Texto;
	Definir index_after Como Numero;
	before        = string_substring(text, 0, index);
	index_after   = math_sum(index, if_else(isReplace, native_string_length(text_insert), 0, TYPE_INT()));
	after         = string_substring_from(text, math_min_int(index_after, native_string_length(text)));
	result_string = string_append_withSeparator(before, after, text_insert);
FinFuncion

Funcion result_string <- string_pad_start(text, text_pad)
	Definir result_string Como Texto;
	result_string=string_insert(text, string_substring(text_pad, 0, math_max_Int(math_minus(native_string_length(text_pad), native_string_length(text)), 0)), 0);
FinFuncion

Funcion result_string <- string_fit(text, text_pad)
	Definir result_string Como Texto;
	Definir text_length, pad_length, start_positionition Como Entero;
	text_length		= native_string_length(text);
	pad_length		= native_string_length(text_pad);
	start_positionition	= math_max_Int(math_minus(pad_length, text_length), 0);
	result_string	= string_insert(text, string_substring(text_pad, 0, start_positionition), 0);
	result_string	= string_substring(result_string, 0, pad_length);
FinFuncion

Funcion result_string <-  string_fit_end(text, text_pad)
	Definir result_string, pad_text Como Texto;
	pad_text		= string_substring_from(text_pad, math_min_Int(native_string_length(text), native_string_length(text_pad)));
	result_string	= string_insert(text, pad_text, native_string_length(text));
	result_string	= string_substring(result_string, 0, native_string_length(text_pad));
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
//----[ DELETE ]---------------------------------------------------------<#>
Funcion result_str <- string_delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_delete", text, start, end);
	start_Str = string_substring(text, 0, start);//Hello <-]
	end_Str = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
FinFuncion

Funcion result_str <- string_delete_From(text, start)
	Definir result_str Como Texto;
	result_str = string_delete(text, start, native_string_length(text));
FinFuncion
//----[ REMPLACE ]-------------------------------------------------------<#>
Funcion result <- string_replace(text, text_match, text_Replace)
    Definir result Como Texto;
    Definir index, match_length, current_position Como Numero;
    match_length = native_string_length(text_match);
    result = "";
    current_position = 0;
    index = string_indexOf_fromIndex(text, text_match, current_position);
    Mientras index >= 0 Hacer
        result = string_append(result, string_substring(text, current_position, index));
        result = string_append(result, text_Replace);
        current_position = math_sum(index, match_length);
        index = string_indexOf_fromIndex(text, text_match, current_position);
    FinMientras
    result = string_append(result, string_substring_from(text, current_position));
FinFuncion

Funcion result <- string_replace_first(text, text_match, text_Replace)
	Definir result Como Texto;
    Definir index Como Numero;
    index = string_indexOf(text, text_match);
    result = __private_string_replace_inIndex(text, text_match, text_Replace, index);
FinFuncion

Funcion result <- string_replace_last(text, text_match, text_Replace)
	Definir result Como Texto;
    Definir index Como Numero;
    index = String_lastIndexOf(text, text_match);
    result = __private_string_replace_inIndex(text, text_match, text_Replace, index);
FinFuncion

Funcion result <- __private_string_replace_inIndex(text, text_match, text_Replace, index)
    Definir result, end_text Como Texto;
    Si index < 0 Entonces
        result = text;
    SiNo
        result = string_substring(text, 0, index);
        result = string_append(result, text_Replace);
		end_text = string_substring_from(text, math_sum(index, native_string_length(text_match)));
        result = string_append(result, end_text);
    FinSi
FinFuncion

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
    result_string = string_SubString(text, start, end);
FinFuncion

Funcion result_string <- string_Strip_Left(text, strip_symbol)
	Definir result_string Como Texto;
	result_string = string_SubString(text, string_FindInterruption_Left(text, strip_symbol), native_string_length(text));
FinFuncion

Funcion result_string <- string_Strip_Right(text, strip_symbol)
    Definir result_string Como Texto;
    result_string = string_SubString(text, 0, string_FindInterruption_Right(text, strip_symbol));
FinFuncion

Funcion index_interruption <- string_FindInterruption_Left(text, strip_symbol)
	Definir index_interruption, length_text Como Entero;
	length_text = native_string_length(text);
	index_interruption = 0;
	Mientras index_interruption < length_text & string_isEquals(char_At(text, index_interruption), strip_symbol) Hacer
		index_interruption = math_increment(index_interruption);
	FinMientras
FinFuncion

Funcion index_interruption <- string_FindInterruption_Right(text, strip_symbol)
	Definir index_interruption Como Entero;
    index_interruption = native_string_length(text);
    Mientras index_interruption > 0 & string_isEquals(char_At(text, math_decrement(index_interruption)), strip_symbol) Hacer
        index_interruption = math_decrement(index_interruption);
    FinMientras
FinFuncion

Funcion text_Reverse <- string_TextReverse(text)
	Definir text_Reverse Como Texto;
	Definir i, indexText Como Numero;
	text_Reverse = "";
	indexText = native_string_length(text);
	Para i = 0 Hasta indexText Con Paso 1 Hacer
		text_Reverse = string_append(text_Reverse, char_At(text, math_minus(indexText, i)));
	FinPara
FinFuncion
//----[ UPPER/LOWER CASE ]-----------------------------------------------<#>
Funcion result_string <- string_toUpperCase(text)
	Definir result_string Como Texto;
	result_string = native_string_ToUpperCase(text);
FinFuncion

Funcion result_string <- string_toLowerCase(text)
	Definir result_string Como Texto;
	result_string = native_string_ToLowerCase(text);
FinFuncion
//----[ REVERSE ]--------------------------------------------------------<#>
Funcion text_Reverse <- string_TextReverse_Caracters(text, array_Carathers, array_size)
    Definir text_Reverse, array_symbol, Char_Current Como Texto;
    Definir i, j, indexText Como Numero;
    text_Reverse = "";
    indexText = math_decrement(native_string_length(text));
    i = 0;
    Mientras i <= indexText  Hacer
        Char_Current = char_At(text, math_minus(indexText, i));
        si !string_isEquals(Char_Current, pixel_clear()) Entonces 
			Char_Current = __private_string_CharReverse_Caracters(Char_Current, array_Carathers, array_size);
		FinSi
        text_Reverse = string_append(text_Reverse, Char_Current);
        i = math_increment(i);
    FinMientras
FinFuncion

Funcion char_Reverse <- __private_string_CharReverse_Caracters(char_, array_Carathers, array_size)
	Definir char_Reverse Como Texto;
	Definir i Como Numero;
	char_Reverse = char_;
	si !string_isEquals(char_Reverse, " ")  Entonces
		Mientras i < array_size Hacer
			Si char_Reverse == array_Carathers[i] Entonces
				Si native_math_module(i, 2) == 0 Entonces
					char_Reverse = array_Carathers[math_increment(i)];
				SiNo
					char_Reverse = array_Carathers[math_decrement(i)];
				FinSi
				i = array_size;
			SiNo
				i = math_increment(i);
			FinSi
		FinMientras;
	FinSi
FinFuncion

Funcion inverted_text <- string_reverse_separated_values(text, separator)
    Definir inverted_text, current_token, current_char Como Texto;
    Definir i Como Numero;
    inverted_text = "";
    current_token = "";
    i = native_string_length(text);
    Mientras i >= 0 Hacer
        current_char = char_At(text, i);
        Si string_isEquals(current_char, separator) Entonces
            inverted_text = string_append_withSeparator(inverted_text, current_token, separator);
            current_token = "";
        SiNo
            current_token = string_append(current_char, current_token);
        FinSi
        Si i == 0 & !string_isEquals(current_char, separator) Entonces
            inverted_text = string_append_withSeparator(inverted_text, current_token, separator);
        FinSi
        i = math_decrement(i);
    FinMientras
FinFuncion
//----[ SUBSTRING ]------------------------------------------------------<#>
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
//----[ INDEX ]----------------------------------------------------------<#>
Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Numero;
	result = string_indexOf_fromIndex(text, text_match, 0);
FinFuncion
//speed 23 s string_test:100*100 +4
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

Funcion result <- string_lastIndexOf(text, text_match)//< ---
	Definir result Como Numero;
	result = string_lastindexOf_fromIndex(text, text_match, native_string_length(text));
FinFuncion
//speed 23 s string_test:100*100 +4
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
//----[ OCURRENCES ]-----------------------------------------------------<#>
Funcion result <- __private_string_occurrences_general(text, text_match, isOverLap)
	Definir result, count, next_index, progress_sum, current_index Como Entero;
	Definir text_Current Como Texto;
	text_Current = text;
	count = 0;
	next_index = 0;
	progress_sum = if_else(isOverLap, 1, native_string_length(text_match), TYPE_INT());
	Mientras current_index >= 0 Hacer
		current_index = string_indexOf_fromIndex(text_Current, text_match, next_index);
		next_index = math_sum(current_index, progress_sum);
		count = math_increment(count);
	FinMientras 
	result = count;
FinFuncion

Funcion result <- string_occurrences(text, text_match)
	Definir result Como Numero;
	result = __private_string_occurrences_general(text, text_match, false);
FinFuncion

Funcion result <- string_occurrences_overlap(text, text_match)
	Definir result Como Numero;
	result = __private_string_occurrences_general(text, text_match, true);
FinFuncion
//---[ COVERSIONS ]------------------------------------------------------<#>
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
//----[ COUNT_MATCH ]----------------------------------------------------<#>
Funcion count <- string_countMatches(text, text_matcher)
	Definir count Como Numero;
	count =	__private_string_countMatches_general(text, text_matcher, false);
FinFuncion

Funcion count <- string_countMatches_overlap(text, text_matcher)
	Definir count Como Numero;
	count =	__private_string_countMatches_general(text, text_matcher, true);
FinFuncion

Funcion count <- __private_string_countMatches_general(text, text_matcher, isOverLap)
	Definir index, count , length_Match Como Numero;
	length_Match = if_else(isOverLap, 1, native_string_length(text_matcher), TYPE_INT());
	count = 0;
	index = string_indexOf_fromIndex(text, text_matcher, 0);
	Mientras index>=0 Hacer
		count = math_increment(count);
		text = string_substring_from(text, if_else(isOverLap, 1, index, TYPE_INT()));
		index = string_indexOf_fromIndex(text, text_matcher, length_Match);
	FinMientras
FinFuncion
//----[ CONSTAINS ]------------------------------------------------------<#>
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
//----[ STATE ]----------------------------------------------------------<#>
Funcion boolean <- string_isEmpty(text)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(text, "");
FinFuncion

Funcion boolean <- string_isBlank(text)
	Definir boolean Como Logico;
	Definir i Como Numero;
	Definir char_Current Como Texto;
	boolean = true();
	i = 0;
	Mientras i < native_string_length(text) Hacer
		char_Current = char_At(text, i);
		boolean = __private_isEquals_general(Char_Current, " ");
		i = if_else(boolean, math_increment(i), math_sum(i, native_string_length(text)), TYPE_INT());
	FinMientras
FinFuncion

Funcion boolean <- string_hasColor(text)
	Definir boolean Como Logico;
	boolean = __private_string_hasStyle_or_Color(text);
FinFuncion

Funcion boolean <- string_hasStyle(text)
	Definir boolean Como Logico;
	boolean = __private_string_hasStyle_or_Color(text);
FinFuncion

Funcion boolean <- string_hascolor_or_Style(text)
	Definir boolean Como Logico;
	boolean =__private_string_hasStyle_or_Color(text);
FinFuncion

Funcion boolean <- __private_string_hasStyle_or_Color(text)
	Definir boolean Como Logico;
	boolean = string_contains(text, symbol_Escape());
FinFuncion
//----[ REVERSE ]--------------------------------------------------------<#>
Funcion boolean <- string_startsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring(text, 0, native_string_length(text_match)), text_match);
FinFuncion

Funcion boolean <- string_endsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring_from(text, math_minus(native_string_length(result_string), numIndex)), text_match);
FinFuncion
//----[ COMPARISON ]-----------------------------------------------------<#>
Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
FinFuncion

Funcion boolean <- string_isEquals_ignoreCase(str1, str2)
	Definir boolean Como Logico;
	boolean = string_isEquals(native_string_toUpperCase(str1), native_string_toUpperCase(str2));
FinFuncion

Funcion isNull <- string_isNull(value_string) 
	Definir isNull Como Logico;
	isNull = string_isEquals(value_string, string_NULL());
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

Funcion boolean <- string_isBoolean(text)
	Definir boolean Como Logico;
	boolean = string_isBoolean_false(text) | string_isBoolean_true(text);
FinFuncion

Funcion boolean <- string_isBoolean_false(text)
	Definir boolean Como Logico;
	Definir index Como Numero;
	boolean = false;
	text = native_string_toLowerCase(text);
	index = 0;
	Mientras !boolean & !string_isEquals(array_string_Booleans_False(index), string_NULL()) hacer 
		boolean = string_isEquals(text, array_string_Booleans_False(index));
		index = math_increment(index);
	FinMientras
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

Funcion boolean <- char_isNumber(char)
	Definir boolean Como Logico;
	boolean = ascii_IsNumberSymbols(char);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion value <- array_string_Booleans_False(index)
	Definir value Como Texto;
	segun index hacer 
		caso 0: value = "false";
		caso 1: value = "falso";
		caso 2: value = "no";
		caso 3: value = "f";
		caso 4: value = "n";
		caso 5: value = "0";
		De Otro Modo:
			value = string_NULL();
	FinSegun
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
///=====[ DEPENDENCIES ]=====[  ///   ]=====================================
//:: #NAV :: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
Funcion length <- native_string_length(text)
	Definir length Como Numero;
	length = Longitud(text);
FinFuncion

Funcion result_string <- native_string_ToUpperCase(text)
	Definir result_string Como Texto;
	result_string = Mayusculas(text);
FinFuncion

Funcion result_string <- native_string_ToLowerCase(text)
	Definir result_string Como Texto;
	result_string = Minusculas(text);
FinFuncion

Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

Funcion num <- native_string_toNumber(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion result_string <- native_number_ToString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion

Funcion num_module <- native_math_module(number1, number2)
	Definir num_module Como Numero;
	num_module = number1 MOD number2;
FinFuncion

Funcion native_println(text)
	Escribir text;
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
//:: #CON :: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
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

Funcion exection_Error(message)
	Definir error_int Como Entero;
	error_message(message);
	error_int = string_NULL();
FinFuncion
//:: #VAL :: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
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
//:: #COL :: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion
//:: #CAN :: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
Funcion pixel <- pixel_clear
	Definir pixel Como Texto;
	pixel = "·";
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