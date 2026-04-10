///%%%%%[ MAIN ]%%%%%%%%[ #0 ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


Funcion main
	println("Hello\nPseudoLib !!!");
FinFuncion


///%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% [ PSeInt-Toolkit ] %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//LIB !0 >> SEARCH: Ctrl+F   >> LIBRARIES:  
//--------------------------------------------------------------------------------------
//    NAME	       /		CODE_SEARCH 		/      USE			/      STATE	   
//--------------------------------------------------------------------------------------
//1--INPUT  ·  ·  ·  ·  ·  ·  · #1 					user_input_				[+]
//1--STRING ·  ·  ·  ·  ·  ·  · #2  			 	string_					[+]
//1--ARRAY  ·  ·  ·  ·  ·  ·  · #3  				array_					[P]
//1--PRINTERS  ·  ·  ·  ·  ·  · #4 		        	print_ : prinln_ 		[P]
//1    \--SLEEP   ·  ·  ·  ·  · ++4_1				sleep_					[+]
//1    \--LOGS ·  ·  ·  ·  ·  · ++4_2				Log_					[+]
//1    \--TEST ·  ·  ·  ·  ·  · ++4_3				Test_					[+]
//1--INT ·  ·  ·  ·  ·  ·  ·  · #5  				int_					[+]
//1    \--BINARY_STRING ·  ·  ·	++5					binarystring_			[+]
//1--MATH   ·  ·  ·  ·  ·  ·  ·	#6 				 	math_					[+]
//1--BOOLEAN   ·  ·  ·  ·  ·  ·	#7 					 ...					[+]
//1--CONDITIONS   ·  ·  ·  ·  ·	#8    	 			if_ : condition_		[+]
//1--COLOR  ·  ·  ·  ·  ·  ·  · #9  				COLOR_     				[P]
//1--TEMPORAL\CHRONO_UNIT ·  ·	#+0					localDate_time_			[+]
//1    \--LOCALTIME  ·  ·  ·  · -+0_1				localTime_				[+]
//1    \--LOCALDATE  ·  ·  ·  · -+0_2				localDate_				[P]
//1    \--LOCALDATE_TIME·  ·  ·	-+0_3				localDate_time_			[P]
//1--DURATION  ·  ·  ·  ·  ·  · -+0_4				duration_				[+]	
//1--PERIOD ·  ·  ·  ·  ·  ·  · -+0_5				period_  				[P]
//1--VALUE  ·  ·  ·  ·  ·  ·  · #+1				    value_					[+]
//1--UTIL   ·  ·  ·  ·  ·  ·  · /// 			 	...						[+] 
//1    \--COLLECTION ·  ·  ·  · #+2				    collection_				[+]
//1      \--LINEAR_COLLECTION ·	-+2_1		    	linearCollection_		[+]
//1    	   \--DEQUE  ·  ·  ·  · -+2_2				util_Deque_				[+]
//1    	   \--QUEUE  ·  ·  ·  ·	-+2_3				util_Queue_				[+]
//1    	   \--STACK  ·  ·  ·  ·	-+2_4				util_Stack				[+]
//1        \--LIST   ·  ·  ·  ·	-+2_5				util_List_				[+]
//1        \--COLLECTION_SETTER -+2_6				collectionSetter_		[+]
//1    			\--SET  ·  ·  ·	-+2_7				util_Set_				[+]
//1 			\--MAP  ·  ·  ·	-+2_8				util_Map_				[+]
//1--OBJECT ·  ·  ·  ·  ·  ·  ·	#+3   			 	object_					[+]
//1--CANVAS ·  ·  ·  ·  ·  ·  ·	#+4  			 	canvas_					[+]
//1    \--SPRITE  ·  ·  ·  ·  ·	-+4_1  			 	sprite_					[+]
//1--TUI ·  ·  ·  ·  ·  ·  ·  · #+5  				TUI_					[+]
//1    \--TCOMPONENT ·  ·  ·  ·	-+5_1  			 	Tcomponent_				[+]
//1--VEC 	   ·  ·  ·  ·  ·  · #+6   				VEC_					[X]
//1--ASCCI/HASH   ·  ·  ·  ·  · #+7   				ascii_					[+]
//1-- END_CODE ++0
//¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
//[+]: Stable
//[D]: Current Development (Unusable temporaly)
//[P]: stable (Pending additions)
//[X]: Unusable / undeveloped state
//Pseint --version 2023
//LINES_CODE: ~7300
//______________________________________________________________________________________
// TYPE			 /		TYPE_PSEINT
//--------------------------------------------------------------------------------------
// String 		= 	Texto, Caracter 
// Int 			= 	Numero, Numerico, Entero 
// Float 		= 	Real 
// Boolean 		= 	Logico 
// | 			=  	|| 
// & 			= 	&&
// return 		= var+FinFuncion(@retorna el estado final que quedo var en la Funcion)
// Symbols_Extra:
//  ¡ ¢ £ ¤ ¥ ¦ § ¨ © ª « ~ ­® ¯ ° ± ² ³ ´ µ ¶ · ¸ ¹ º » ¼ ½ ¾ ¿ À Á Â Ã Ä Å Æ Ç È É 
// Ê Ë Ì Í Î Ï Ð Ò Ó Ô Õ Ö × Ø Ù Ú Û Ü Ý Þ ß à á â ã ä å æ ç è é é ê ë ì í î ï ð ñ ò ó 
// ô õ ö ÷ ø ù ú ü ý þ ÿ ñ Ñ 
//----[ TASK ]----------------------------------------------------------------------<#>
// metodos: array_sort, Array_reverse, array_filter, Runnable(opcional para el #+8)
// contains_IgnoreCase, posible agregado de mas componentes (opcional)
// mejorar print progress con soporte para color y color transparente, print color 
// <TODO: Actualizar con Index_FromIndex> __private_string_occurrences_general
// <TODO: Agregar un CompareTo> String(?)
// <TODO: Eliminar agregar o modifcar las animacion para hacerlas utiles > Sleep
// <TODO: Mejorar lectura o dejarlo Como esta>  math_ Serie de Taylor
// <TODO: agregar hasColor y RemoveColor >  Color
// <TODO: Eliminar esta Funcion y eleminar las dependencias >  if_else_TYPEBOOLEAN
// <TODO: agregar soporte para monocolor y agregar Como maquina de escritura (Hell_ luego Hello)>  
//	en print_progress_formater()
//--------------------------------------------------------------------------------------
//   .============================.		___						:::::::::          :::::
//   |   Bryan.A.M.Wilt   © 2026 |				::::::::::::::
//   '==========================='   ::::::::			___	       -----      ::::::::::
//--------------------------------------------------------------------------------------
//................../* You are not expected to understand this */.....................//
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% [ START FUNCTIONS ] %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
///%%%%%[ INPUT ]%%%%%%%%%%%%%%%%%%%%[   #1   ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//----[ PRIMITIVE ]-----------------------------------------------------------------<#>
Funcion user_input <- user_input_String
	Definir user_input Como Texto;
	Leer user_input;
FinFuncion

Funcion user_input <- user_input_Interger
	Definir user_input Como Numero;
	Definir user_input_str Como Texto;
	user_input_str = user_input_String;
	user_input = string_ToNum(user_input_str);
FinFuncion

Funcion user_input <- user_input_boolean
	Definir user_input Como Logico;
	user_input = string_isBoolean_true(user_input_String());
FinFuncion

Funcion user_input <- user_input_Float
	Definir user_input Como Real;
	Definir user_input_str Como Texto;
	user_input_str = user_input_String();
	user_input = if(string_isNumber_float(user_input_str), string_ToNum(user_input_str), TYPE_FLOAT());
FinFuncion

Funcion user_input_wait
	Esperar Tecla;
FinFuncion
//----[ OPTIONS ]---------------------------------------------------------------------<#>
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
	println(message);
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
	user_input = __private_user_input_options_separator(string_ToLowerCase(user_input_String()), string_ToLowerCase(options_text), symbol_Separator_Simple(), TYPE);
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
	user_input_obtained = if(string_Struct_Contains(user_input_obtained, options_text, separator), user_input_obtained, TYPE_STRING());
	Segun TYPE Hacer
		caso TYPE_BOOLEAN(): Definir user_input Como Logico;
		caso TYPE_INT(): Definir user_input Como Numero;
		caso TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = value_Parser_StringToType(user_input_obtained, TYPE);
FinFuncion
///%%%%%[ STRING ]%%%%%%%%%%%%%%%%%%%%[   #2   ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//----[ APPENDS ]---------------------------------------------------------------------<#>
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
//----[ STRING_PARSE ]---------------------------------------------------------------<#>
Funcion boolean <- string_toBoolean(result_string)
	Definir boolean Como Logico;
	boolean = string_isBoolean_true(result_string);
FinFuncion

Funcion num <- string_ToNum(result_string)
	Definir num Como Numero;
	result_string = if_else(!string_isEmpty(result_string) & string_isNumber(result_string), result_string, "-1", TYPE_STRING());
	num = text_ToNum(result_string);
FinFuncion

Funcion value_StringHash <- string_toHashText(value_String)
	Definir value_StringHash Como Texto;
	value_StringHash = num_ToString(ascii_hash_Mini_DBJ2(value_String));
FinFuncion
//----[ LENGTH ]---------------------------------------------------------------------<#>
Funcion num <- string_Length(text)
	Definir num Como Numero;
	num = Longitud(text);// --- native
FinFuncion

Funcion length_String <- string_Length_ToString(text)
	Definir length_String Como Texto;
	length_String = num_ToString(string_Length(text));
FinFuncion
//----[ INSERT ]---------------------------------------------------------------------<#>
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
	result_string = string_insert(text, text_insert, string_Length(text));
FinFuncion

Funcion result_string <- __private_string_insert_general(text, text_insert, index, isReplace)
	Definir result_string, before, after, fragments Como Texto;
	Definir index_after Como Numero;
	DimenSion text_Union(3);
	DimenSion fragments[3];// ...join
	before			= string_substring_from_start(text, index);
	index_after		= index+if_else(isReplace, string_Length(text_insert), 0, TYPE_INT());
	after			= string_substring_from(text, math_min_int(index_after, string_Length(text)));
	fragments[0]	= before;
	fragments[1]	= text_insert;
	fragments[2]	= after;
	result_string	= array_ofstring_separator(fragments, 3, "", TYPE_STRING());
FinFuncion

Funcion result_string <- string_pad_start(text, text_pad)
	Definir result_string Como Texto;
	result_string=string_insert(text, string_substring_from_start(text_pad, math_max_Int(decrement_step(string_Length(text_pad), string_Length(text)), 0)), 0);
FinFuncion

Funcion result_string <- string_fit(text, text_pad)
	Definir result_string Como Texto;
	Definir text_length, pad_length, start_position Como Entero;
	text_length		= string_Length(text);
	pad_length		= string_Length(text_pad);
	start_position	= math_max_Int(decrement_step(pad_length, text_length), 0);
	result_string	= string_insert(text, string_substring(text_pad, 0, start_position), 0);
	result_string	= string_substring(result_string, 0, pad_length);
FinFuncion

Funcion result_string <-  string_fit_end(text, text_pad)
	Definir result_string, pad_text Como Texto;
	pad_text		= string_substring_from(text_pad, math_min_Int(string_Length(text), string_Length(text_pad)));
	result_string	= string_insert(text, pad_text, string_Length(text));
	result_string	= string_substring(result_string, 0, string_Length(text_pad));
FinFuncion

Funcion result_string <- string_RepeatText(text, repeats)
    Definir i Como Numero;
    Definir result_string Como Texto;
    result_string = "";
    Para i = 1 Hasta repeats Con Paso 1 Hacer
        result_string = string_append(result_string, text);
    FinPara
FinFuncion
//----[ DELETE ]---------------------------------------------------------------------<#>
Funcion result_str <- string_Delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_Delete", text, start, end);
	start_Str = string_substring_from_start(text, start);//Hello <-]
	end_Str = string_substring_from(text, end);//[->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
FinFuncion

Funcion result_str <- string_Delete_From(text, start)
	Definir result_str Como Texto;
	result_str = string_Delete(text, start, string_Length(text));
FinFuncion
//----[ REMPLACE ]-----------------------------------------------------------------<#>
Funcion result <- string_replace(text, text_match, text_Replace)
	Definir result, text_Current Como Texto;
	Definir index, match_length, index_end Como Numero;//Hello World, "o", "X" = HellX World
	index = string_indexOf(text, text_match);
	match_length = string_Length(text_match);
	result = "";
	Mientras index >= 0 Hacer
		index_end = index + match_length;
		result = string_append(result, string_substring(text, 0, index));//Hell
		result = string_append(result, text_Replace);//X
		text = string_substring_from(text, increment_step(index, match_length));
		index = string_indexOf_fromIndex(text, text_match, 0);
	FinMientras
	result = string_append(result, text);// World
FinFuncion

Funcion result <- string_replace_First(text, text_match, text_Replace)
	Definir result Como Texto;
    Definir index Como Numero;
    index = string_indexOf_fromIndex(text, text_match, 0);
    result = __private_string_replace_inIndex(text, text_match, text_Replace, index);
FinFuncion

Funcion result <- string_replace_Last(text, text_match, text_Replace)
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
		end_text = string_substring_from(text, increment_step(index, string_Length(text_match)));
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
    length_text = string_Length(text);
    start = 0;
    Mientras start < length_text & string_isEquals(char_At(text, start), strip_symbol) Hacer
        start = increment(start);
    FinMientras
    end = length_text;
    Mientras end > start & string_isEquals(char_At(text, decrement(end)), strip_symbol) Hacer
        end = decrement(end);
    FinMientras
    result_string = string_SubString(text, start, end);
FinFuncion

Funcion result_string <- string_Strip_Left(text, strip_symbol)
	Definir result_string Como Texto;
	result_string = string_SubString(text, string_FindInterruption_Left(text, strip_symbol), string_Length(text));
FinFuncion

Funcion result_string <- string_Strip_Right(text, strip_symbol)
    Definir result_string Como Texto;
    result_string = string_SubString(text, 0, string_FindInterruption_Right(text, strip_symbol));
FinFuncion

Funcion index_interruption <- string_FindInterruption_Left(text, strip_symbol)
	Definir index_interruption, length_text Como Entero;
	length_text = string_Length(text);
	index_interruption = 0;
	Mientras index_interruption < length_text & string_isEquals(char_At(text, index_interruption), strip_symbol) Hacer
		index_interruption = increment(index_interruption);
	FinMientras
FinFuncion

Funcion index_interruption <- string_FindInterruption_Right(text, strip_symbol)
	Definir index_interruption Como Entero;
    index_interruption = string_Length(text);
    Mientras index_interruption > 0 & string_isEquals(char_At(text, decrement(index_interruption)), strip_symbol) Hacer
        index_interruption = decrement(index_interruption);
    FinMientras
FinFuncion

Funcion text_Reverse <- string_TextReverse(text)
	Definir text_Reverse Como Texto;
	Definir i, indexText Como Numero;
	text_Reverse = "";
	indexText = string_Length(text);
	Para i=0 Hasta indexText Con Paso 1 Hacer
		text_Reverse = string_append(text_Reverse, char_At(text, indexText-i));
	FinPara
FinFuncion
//----[ UPPER/LOWER CASE ]-----------------------------------------------------------<#>
Funcion result_string <- string_ToUpperCase(text)
	Definir result_string Como Texto;
	result_string = Mayusculas(text);
FinFuncion

Funcion result_string <- string_ToLowerCase(text)
	Definir result_string Como Texto;
	result_string = Minusculas(text);
FinFuncion
//----[ REVERSE ]---------------------------------------------------------------------<#>
Funcion text_Reverse <- string_TextReverse_Caracters(text, array_Carathers, array_size)
    Definir text_Reverse, array_symbol, Char_Current Como Texto;
    Definir i, j, indexText Como Numero;
    text_Reverse = "";
    indexText = decrement(string_Length(text));
    i = 0;
    Mientras i <= indexText  Hacer
        Char_Current = char_At(text, decrement_step(indexText, i));
        si !string_isEquals(Char_Current, pixel_clear()) Entonces 
			Char_Current = __private_string_CharReverse_Caracters(Char_Current, array_Carathers, array_size);
		FinSi
        text_Reverse = string_append(text_Reverse, Char_Current);
        i = increment(i);
    FinMientras
FinFuncion

Funcion char_Reverse <- __private_string_CharReverse_Caracters(char_, array_Carathers, array_size)
	Definir char_Reverse Como Texto;
	Definir i Como Numero;
	char_Reverse = char_;
	si !string_isEquals(char_Reverse, " ")  Entonces
		Mientras i < array_size Hacer
			Si char_Reverse == array_Carathers[i] Entonces
				Si math_module(i, 2) == 0 Entonces
					char_Reverse = array_Carathers[increment(i)];
				SiNo
					char_Reverse = array_Carathers[decrement(i)];
				FinSi
				i = array_size;
			SiNo
				i = increment(i);
			FinSi
		FinMientras;
	FinSi
FinFuncion

Funcion inverted_text <- string_ReverseSeparatedValues(text, separator)
    Definir inverted_text, current_token, current_char Como Texto;
    Definir i Como Numero;
    inverted_text = "";
    current_token = "";
    i = string_Length(text);
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
        i = decrement(i);
    FinMientras
FinFuncion
//----[ SUBSTRING ]-----------------------------------------------------------------<#>
Funcion strSubs <- __private_PSEINT_SUBCADENA(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

Funcion strSubs <- string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	message_validateIndexRange("string_substring", result_string, start, end);
	strSubs = if_else(Num_isEquals(start, end), "", __private_PSEINT_SUBCADENA(result_string, start, math_max_int(end-1, 0)), TYPE_STRING());
FinFuncion

Funcion strSubs <- string_substring_from(result_string, start)
	Definir strSubs Como Texto;
	strSubs = string_substring(result_string, start, string_Length(result_string));
FinFuncion

Funcion strSubs <- string_substring_from_start(result_string, numLimit)
	Definir strSubs Como Texto;
	strSubs = string_substring(result_string, 0, numLimit);
FinFuncion

Funcion strSubs <- string_substring_from_end(result_string, numIndex)
	Definir strSubs Como Texto;
	Definir end Como Numero;
	end = string_Length(result_string)-numIndex;
	strSubs = string_substring_from(result_string, end);
FinFuncion

Funcion result_string <- char_At(text, index)
	Definir result_string Como Texto;
	result_string = string_substring(text, index, math_min_int(increment(index), string_Length(text)));
FinFuncion

Funcion result_String <- string_GetLeadingLetters(text_input)
    Definir result_String, Char_Current Como Texto;
    Definir i, length_Text Como Numero;
    i = 0;
    result_String = "";
    length_Text = string_Length(text_input);
    Si length_Text > 0 Entonces
        Char_Current = char_At(text_input, i);
        Mientras i < length_Text & ascii_IsLetters(Char_Current) Hacer
            result_String = string_append(result_String, Char_Current);
            i = increment(i);
            Si i < length_Text Entonces
                Char_Current = char_At(text_input, i);
            FinSi
        FinMientras
    FinSi
FinFuncion
//----[ INDEX ]---------------------------------------------------------------------<#>
Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Numero;
	result = string_indexOf_fromIndex(text, text_match, 0);
FinFuncion
//speed 23 s string_test:100*100 +4
Funcion index <- string_indexOf_fromIndex(text, match, index_Start)
	Definir index, i, match_length, index_end Como Numero;
	Definir condition Como Logico;
    index = -1;
    match_length = string_Length(match);
	i = math_max_Int(index_Start, 0);
	index_end = string_Length(text) - match_length;
	Mientras index_end >= i & Num_isEquals(index, -1) Hacer
		Si string_isEquals(match, string_substring(text, i, i+match_length)) Entonces
			index = i;
			i = index_end + 1;
		SiNo
			i = i + 1;
		FinSi
	FinMientras
FinFuncion

Funcion result <- string_lastIndexOf(text, text_match)//< ---
	Definir result Como Numero;
	result = string_lastindexOf_fromIndex(text, text_match, string_Length(text));
FinFuncion
//speed 23 s string_test:100*100 +4
Funcion index <- string_LastindexOf_fromIndex(text, match, index_Start)
	Definir index, i, match_length, index_end Como Numero;
	Definir condition Como Logico;
    index = -1;
    match_length = string_Length(match);
	i = math_max_Int(index_Start, match_length);
	index_end = match_length;
	Mientras index_end <= i & Num_isEquals(index, -1) Hacer
		Si string_isEquals(match, string_substring(text, i-match_length, i)) Entonces
			index = i-match_length;
			i = -1;
		SiNo
			i = i - 1;
		FinSi
	FinMientras
FinFuncion
//kmp speed 40 s string_test:100*100 +4
Funcion index <- string_indexOf_fromIndex_KMP(text, text_pattern, index_Start)
	Definir index, i, j, pattern_length, text_length, LPS, len Como Numero;
	Definir pattern Como Texto;
	Definir condition, equalsChar Como Logico;
    index = -1;
	text_length = string_Length(text);
	pattern_length = string_Length(text_pattern);
	DimenSion pattern[pattern_length];
	
	DimenSion LPS[pattern_length];
	len = 0;
	
	Para i=0 Hasta decrement(pattern_length) con paso 1 hacer
		pattern[i] = char_At(text_pattern, i);
	FinPara
	
    Para i = 1 Hasta pattern_length-1 con paso 1 hacer
        Mientras len > 0 y !string_isEquals(pattern[i], pattern[len]) Hacer
            len = LPS[len-1] ;
        FinMientras
        Si string_isEquals(pattern[i], pattern[len]) Entonces
            len = increment(len);
        FinSi
        LPS[i] = len;
    FinPara
	
	condition = !Num_isEquals(j, pattern_length);
	i = math_rangeLimit_Int(index_Start, 0, text_length);
	
	Mientras condition hacer 
		equalsChar = string_isEquals(pattern[j], char_At(text, i));
		j = if_else(equalsChar, increment(j), if_else(j<>0, LPS[math_max_Int(j-1, 0)], j, TYPE_INT()), TYPE_INT());
		i = if_else(equalsChar, increment(i), if_else(j<>0, i, increment(i), TYPE_INT()), TYPE_INT());
		condition = !Num_isEquals(j, pattern_length) & i<=text_length;
	FinMientras
	index=if(equalsChar, i-j, TYPE_INT());
FinFuncion
//----[ OCURRENCES ]-----------------------------------------------------------------<#>
Funcion result <- string_occurrences(text, text_match)
	Definir result Como Numero;
	result = __private_string_occurrences_general(text, text_match, false);
FinFuncion

Funcion result <- string_occurrences_overlap(text, text_match)
	Definir result Como Numero;
	result = __private_string_occurrences_general(text, text_match, true);
FinFuncion

Funcion result <- __private_string_occurrences_general(text, text_match, isOverLap)
	Definir result, count, index, progress_sum Como Numero;
	Definir text_Current Como Texto;
	text_Current = text;
	count = 0;
	progress_sum = if_else(isOverLap, 1, string_Length(text_match), TYPE_INT());
	Mientras string_Contains(text_Current, text_match) Hacer
		index = string_indexOf(text_Current, text_match);
		text_Current = string_Delete(text_Current, 0, index+progress_sum);
		count = increment(count);// i++
	FinMientras 
	result = count;
FinFuncion
//---[ COVERSIONS ]-----------------------------------------------------------------<#>
Funcion result_string <- object_ToString(object_str, TYPE)
	Definir result_string Como Texto;
	Definir object_isValid Como Logico;
	object_isValid = object_isType(object_str, TYPE);
	si object_isValid Entonces
		result_string = object_str;
	SiNo
		result_string = object_New(TYPE);
		error_message_Function("object_ToString", string_append_withSeparator(TYPE, object_str, " // type no valid >> "));
	FinSi
FinFuncion

Funcion result_string <- interger_ToString(num)
	Definir result_string Como Texto;
	result_string = num_ToString(num);
	Si !string_isNumber_int(result_string) Entonces
		exection_Error(string_append("Error de tipado Interger: ", result_string));
	FinSi
FinFuncion

Funcion result_string <- float_ToString(num)
	Definir result_string Como Texto;
	result_string = num_ToString(num);
	Si !string_isNumber_float(result_string) Entonces
		exection_Error(string_append("Error de tipado Float: ", result_string));
	FinSi
FinFuncion

Funcion result_string <- num_ToString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion
//----[ COUNTMATCH ]-----------------------------------------------------------------<#>
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
	length_Match = if_else(isOverLap, 1, string_Length(text_matcher), TYPE_INT());
	count = 0;
	index = string_indexOf_fromIndex(text, text_matcher, 0);
	Mientras index>=0 Hacer
		count = increment(count);
		text = string_substring_from(text, if_else(isOverLap, 1, index, TYPE_INT()));
		index = string_indexOf_fromIndex(text, text_matcher, length_Match);
	FinMientras
FinFuncion
//----[ IS_TYPE ]-------------------------------------------------------------------<#>
Funcion boolean <- string_isNumber(text)
	Definir boolean Como Logico;
	boolean = string_isNumber_int(text) O string_isNumber_float(text);
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
		i = if_else(boolean, increment(i), length, TYPE_INT());
	FinMientras
FinFuncion

Funcion boolean <- string_isNumber_float(str_num)
	Definir boolean, interger_valid, decimal_valid Como Logico;
	Definir str_decimal Como Texto;
	str_num = if_else(string_Contains(str_num, " "), string_trim(str_num), str_num, TYPE_STRING());// poner esto en trim
	Si string_Contains(str_num, ".") & string_indexOf(str_num, ".") > 0 Entonces
		interger_valid = string_isNumber(string_substring_from_start(str_num, string_indexOf(str_num, ".")));
		str_decimal = string_substring_from(str_num, increment(string_indexOf(str_num, ".")));
		decimal_valid = string_isNumber(str_decimal) & !string_startsWith(str_decimal, "-");
		boolean = decimal_valid & interger_valid;
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
	text = string_ToLowerCase(text);
	index = 0;
	Mientras !boolean & !string_isEquals(array_string_Booleans_False(index), string_Null()) hacer 
		boolean = string_isEquals(text, array_string_Booleans_False(index));
		index = increment(index);
	FinMientras
FinFuncion

Funcion boolean <- string_isBoolean_true(text)
	Definir boolean Como Logico;
	Definir index Como Numero;
	boolean = false;
	text = string_ToLowerCase(text);
	index = 0;
	Mientras !boolean & !string_isEquals(array_string_Booleans_True(index), string_Null()) hacer 
		boolean = string_isEquals(text, array_string_Booleans_True(index));
		index = increment(index);
	FinMientras
FinFuncion
//----[ CONSTAINS ]-----------------------------------------------------------------<#>
Funcion boolean <- string_Contains(text, text_match)
	Definir boolean Como Logico;
	boolean = string_indexOf(text, text_match) > -1;
FinFuncion

Funcion found <- string_Struct_Contains_ignoreCase(text_search, string_struct, separator)
	Definir found Como Logico;
	found = string_Struct_Contains(string_ToLowerCase(text_search), string_ToLowerCase(string_struct), separator);
FinFuncion

Funcion found <- string_Struct_Contains(text_search, string_struct, separator)
	Definir found Como Logico;
	Definir startIndex, endIndex, collectionLength Como Numero;
	Definir currentToken Como Texto;
	found = false();
	startIndex = 0;
	endIndex = 0;
	collectionLength = string_Length(string_struct);
	Mientras endIndex < collectionLength Hacer
		endIndex = string_indexOf_fromIndex(string_struct, separator, startIndex);
		endIndex = if_else(endIndex < 0, collectionLength, endIndex, TYPE_INT());
		
		currentToken = string_substring(string_struct, startIndex, endIndex);
		
		Si string_isEquals(text_search, currentToken) Entonces
			found = true();
			endIndex = collectionLength;
		FinSi
		
		startIndex = increment(endIndex);
	FinMientras
FinFuncion
//----[ STATE ]---------------------------------------------------------------------<#>
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
	Mientras i < string_Length(text) Hacer
		char_Current = char_At(text, i);
		boolean = __private_isEquals_general(Char_Current, " ");
		i = if_else(boolean, increment(i), increment_step(i, string_Length(text)), TYPE_INT());
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

Funcion boolean <- string_hasColor_or_Style(text)
	Definir boolean Como Logico;
	boolean =__private_string_hasStyle_or_Color(text);
FinFuncion

Funcion boolean <- __private_string_hasStyle_or_Color(text)
	Definir boolean Como Logico;
	boolean = string_Contains(text, symbol_Escape());
FinFuncion

Funcion isNull <- string_isNull(value_string) 
	Definir isNull Como Logico;
	isNull = string_isEquals(value_string, string_Null());
FinFuncion
//----[ AFFIX ]---------------------------------------------------------------------<#>
Funcion boolean <- string_startsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring_from_start(text, string_Length(text_match)), text_match);
FinFuncion

Funcion boolean <- string_endsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring_from_end(text, string_Length(text_match)), text_match);
FinFuncion
//----[ COMPARISON ]----------------------------------------------------------------<#>
Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
FinFuncion

Funcion boolean <- string_isEquals_IgnoreCase(str1, str2)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_ToUpperCase(str1), string_ToUpperCase(str2));
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=========================================
Funcion result_string <- symbol_Separator
	Definir result_string Como Texto;
	result_string = "";//001F
FinFuncion

Funcion result_string <- symbol_Separator_Simple
	Definir result_string Como Texto;
	result_string = ",";
FinFuncion

Funcion result_string <- symbol_Key_Value
	Definir result_string Como Texto;
	result_string = "=";
FinFuncion

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
			value = string_Null();
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
			value = string_Null();
	FinSegun
FinFuncion
///%%%%%[ ARRAY ]%%%%%%%%%%%%%%%%%%%%[   #3   ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//----[ OFSTRING ]-----------------------------------------------------------------<#>
Funcion str_array <- array_ofString(array, Size, type)
	Definir str_array Como Texto;
	str_array = array_ofstring_separator(array, Size, symbol_Separator_Simple(), type);
FinFuncion

Funcion str_array <- array_ofstring_separator(array, Size, separator, type)
	Definir str_array Como Texto;
	Definir i Como Numero;
	str_array = "";
	i=0;
	Size = decrement(Size);
	Mientras i < Size Hacer
		str_array = string_append(str_array, value_Parser_TypeToString(array[i], type));
		str_array = string_append(str_array, separator);
		i=increment(i);
	FinMientras
	str_array = string_append(str_array, value_Parser_TypeToString(array[i], type));
FinFuncion

//----[ RANGE ]---------------------------------------------------------------------<#>
Funcion num_range <- array_int_getRangeCeil(array, Size, num)
	Definir num_range, i, j Como Numero;//4, 6, 8, 10     num: 5   result= 6
	para i = 0 Hasta decrement(Size) con paso 1 Hacer
		Si array[i] >= num Entonces
			num_range = array[i];
			i = Size;//break
		FinSi
	FinPara
FinFuncion
//----[ SEARCH ]---------------------------------------------------------------------<#>
Funcion index <- array_search_text(array, Size, text)
	Definir index, i Como Numero;
	i = 0;
	index = -1;
	Mientras (i < Size) & index < 0 hacer 
		index = if(string_isEquals(array[i], text), i, TYPE_INT());
		i = increment(i);
	FinMientras
FinFuncion
//----[ SORT ]----------------------------------------------------------------------<#>
Funcion str_array <- array_QuickSort_Num_toString(array, Size)
	Definir str_array, stack Como Texto;
    Definir low, height, i, j, pivote, temp Como Numero;
	
	str_array = array_ofString(array, Size, TYPE_INT());
FinFuncion
//----[ COMPARE ]---------------------------------------------------------------------<#>
//Funcion On^2: tal vez ordenando el primer y segundo arreglo aumene la velocidad
Funcion string_Delta <- array_ToDeltastring_ByComparation(array_Select, size_Select, array_Comparator, size_Comparator, IsInnerJoin)
	Definir string_Delta Como Texto;
	Definir i, j Como Numero;
	Definir property_exists Como Logico;
	string_Delta = "";
	para i = 0 Hasta decrement(size_Comparator) Con Paso 1 Hacer
		property_exists = false();
		j = 0;
		Mientras (j < size_Select) & !property_exists Hacer
			Si array_Comparator[i] == array_Select[j] Entonces
				property_exists = true();
			FinSi
			j = increment(j);
		FinMientras
		Si IsInnerJoin Entonces
			property_exists = !property_exists;
		FinSi
		Si !property_exists Entonces
			string_Delta = string_append_withSeparator(string_Delta, symbol_Separator(), array_Comparator[i]);
		FinSi
	FinPara
FinFuncion
///%%%%%[ PRINTERS ]%%%%%%%%%%%%%%%%%[   #4   ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Funcion print(text)
	print_byseparator(text, "\n");
FinFuncion

Funcion println(text)
	text = string_append(text, "\n");
	print(text);
FinFuncion
//----[ SIMPLE ]---------------------------------------------------------------------<#>
Funcion print_Simple(text)
	__PSEINT_print(text);
FinFuncion

Funcion println_Simple(text)
	__PSEINT_println(text);
FinFuncion
//----[ JUMPER ]---------------------------------------------------------------------<#>
Funcion print_byseparator(text, separator)
	__private_Print_Split(text, separator);
FinFuncion

Funcion println_bySeparator(text, separator)
	text = string_append(text, separator);
	print_bySeparator(text, separator);
FinFuncion

Funcion __private_Print_Split(text, separator)
	Definir index_break_Line, text_length Como Numero;
	index_break_Line = string_indexOf(text, separator);
	Mientras index_break_Line > -1 Hacer
		println_Simple(string_substring(text, 0, index_break_Line));
		text = string_substring(text, increment_step(index_break_Line, 2), string_Length(text));
		index_break_Line = string_indexOf_fromIndex(text, separator, 0);
	FinMientras
	print_Simple(string_substring(text, 0, string_Length(text)));
FinFuncion
//----[ PSEINT ]---------------------------------------------------------------------<#>
Funcion __PSEINT_println(text)
	Escribir text;
FinFuncion

Funcion __PSEINT_print(text)
	Escribir text Sin Saltar ;
FinFuncion
//----[ PROGRESS ]-----------------------------------------------------------------<#>
Funcion println_progress(text)
	text = string_append(text, "\n");
	print_progress_with_speed(text, 100);
FinFuncion

Funcion print_progress(text)
	print_progress_with_speed(text, 100);
FinFuncion

Funcion print_progress_Simple(text)
	print_progress_with_speed_Simple(text, 100);
FinFuncion

Funcion print_progress_with_speed(text, speed)
	Definir index_break_Line Como Numero;
	index_break_Line = string_indexOf(text, "\n");
	Mientras index_break_Line > -1 Hacer
		print_progress_with_speed_Simple(string_substring(text, 0, index_break_Line), speed);
		break_Line();
		text = string_substring(text, increment_step(index_break_Line, 2), string_Length(text));
		index_break_Line = string_indexOf(text, "\n");
	FinMientras
	print_progress_with_speed_Simple(string_substring(text, 0, string_Length(text)), speed);
FinFuncion

Funcion print_progress_with_speed_Simple(text, speed)
	Definir i, end Como Numero;
	end = string_Length(text);
	Para i = 0 Hasta end hacer 
		print_Simple(char_At(text, i));
		Sleep(speed);
	FinPara
FinFuncion
//----[ SHOOT ]---------------------------------------------------------------------<#>
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
	DimenSion text_ammunition[num_break_Line];
	
	index_break_Line = string_indexOf_fromIndex(text, "\n", 0);
	i=0;
	Mientras i<num_break_Line Hacer
		text_ammunition[i] = string_substring(text, 0, index_break_Line);
		text = string_substring(text, increment_step(index_break_Line, 2), string_Length(text));
		index_break_Line = string_indexOf_fromIndex(text, "\n", 0);
		i=increment(i);
	FinMientras
	
	Si isClear Entonces
		clear_Console();
	FinSi
	
	println_array(text_ammunition, num_break_Line);//shoot
	print_Simple(string_substring(text, 0, string_Length(text)));
FinFuncion
//----[ ARRAY ]---------------------------------------------------------------------<#>
Funcion println_array(array, index_array)
	Definir i Como Numero;
	para i = 0 Hasta decrement(index_array) Hacer
		println_Simple(array[i]);
	FinPara
FinFuncion

Funcion print_array(array, index_array)
	Definir i Como Numero;
	para i = 0 Hasta decrement(index_array) Hacer
		print_Simple(array[i]);
	FinPara
FinFuncion

Funcion println_array_color(array, index_array, color)
	Definir i Como Numero;
	para i = 0 Hasta decrement(index_array) Hacer
		array[i] = string_append(color, array[i]);
	FinPara
	println_array(array, index_array);
FinFuncion

Funcion print_array_color(array, index_array, color)
	Definir i Como Numero;
	para i = 0 Hasta decrement(index_array) Hacer
		array[i] = string_append(color, array[i]);
	FinPara
	print_array(array, index_array);
FinFuncion
//----[ REPEAT ]---------------------------------------------------------------------<#>
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
//----[ UTILITIES ]-----------------------------------------------------------------<#>
Funcion break_Line
	print("\n");
FinFuncion

Funcion hide_Text
	print(string_append(symbol_Escape(), "2J"));
FinFuncion

Funcion clear_Console
	Limpiar Pantalla;
FinFuncion
///$$$$$[ SLEEP ]$$$$$$$$$$$$$$$$$$$$[  ++4_1 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion Sleep(ms)
	Esperar ms Milisegundos;
FinFuncion

Funcion Sleep_And_Clear(ms)
	Sleep(ms);
	clear_Console();
FinFuncion
//----[ SECOND ]---------------------------------------------------------------------<#>
Funcion Sleep_Second_And_Clear(s)
	Sleep_And_Clear(s * 1000);
FinFuncion

Funcion Sleep_Second(s)
	Sleep(s * 1000);
FinFuncion
//----[ messAGE ]---------------------------------------------------------------------<#>
Funcion sleep_if_message(s, condition, message_date)
	Si condition Entonces
		log_INFO(message_date);
		Sleep(s);
	FinSi
FinFuncion

Funcion sleep_message(s, message_date)
	log_INFO(message_date);
	Sleep(s);
FinFuncion
//----[ UTILITIES ]-----------------------------------------------------------------<#>
Funcion Sleep_CircleLoad(s)
	Definir sequence Como Texto;
	Definir Size Como Numero;
	Size = 4;
	DimenSion sequence[Size];
	sequence[0]= "|";
	sequence[1]= "/";
	sequence[2]= "-";
	sequence[3]= "\";
	Sleep_Animation(4, 100, sequence, Size, 35, 10, true());
FinFuncion

Funcion Sleep_Animation(s, speed, text_array_Sequence, Size, padding_x, padding_y, EnableClear)
	Definir Time, Time_End, Time_adjust Como Numero;
	Definir padding_x_text Como Texto;
	
	Time_adjust = math_min_Int(math_max_Int(550, speed), 1000);
	
	Time_End = (s*Time_adjust)/speed;
	Time = 0;
	padding_x_text = canvas_Row_WithText(" ", padding_x);
	println_Repeat( "", padding_y);
	Mientras Time < Time_End Hacer
		print_Simple(string_append(padding_x_text, text_array_Sequence[math_module(Time, Size)]));
		Time = increment(Time);
		Sleep(speed);
		Si EnableClear Entonces
			clear_Console();
			println_Repeat("", padding_y);
		SiNo
			padding_x_text= "";
		FinSi
	FinMientras
	clear_Console();
FinFuncion
///$$$$$[ LOGS ]$$$$$$$$$$$$$$$$$$$$$[  ++4_2 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion log_WARNING(message)
	__private_general_log(message, "WARNING: ", COLOR_YELLOW());
FinFuncion

Funcion log_INFO(message)
	__private_general_log(message, "INFO: ", COLOR_WHITE());
FinFuncion

Funcion log_ERROR(message)
	__private_general_log(message, "ERROR: ", COLOR_RED());
FinFuncion

Funcion log_DEBUG(message)
	__private_general_log(message, "DEBUG: ", COLOR_BLUE());
FinFuncion

Funcion log_TRACE(message)
	__private_general_log(message, "TRACE: ", COLOR_CYAN());
FinFuncion

Funcion log_FATAL(message)
	__private_general_log(message, "FATAL: ", COLOR_MAGENTA());
FinFuncion

Funcion __private_general_log(message, start_tag, SELECTED_COLOR)
	message = string_append(start_tag, message);
	println_Simple(string_append(SELECTED_COLOR, message));
FinFuncion
///$$$$$[ TEST ]$$$$$$$$$$$$$$$$$$$$$[  ++4_3 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
//----[ CHECKPOINT ]-----------------------------------------------------------------<#>
Funcion test_Checkpoint(id)
	test_Checkpoint_info(id, "");
FinFuncion

Funcion test_Checkpoint_info(id, info_string)
	break_Line();
	println_Simple(Color_setColorText(string_append_withSeparator(" < ", " >- - - - - - - - - - - </>", num_ToString(id)), COLOR_CYAN()));
	Si !string_isEmpty(info_string) Entonces
		Definir popup_message Como Texto;
		popup_message = string_append_withSeparator(" < start >", "< /end >", info_string);
		println_Simple(Color_setColorText(popup_message, COLOR_CYAN()));
	FinSi
	user_input_wait();
FinFuncion
//----[ ASSERT ]---------------------------------------------------------------------<#>
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
	value_String = value_Parser_TypeToString(value, TYPE);
	value_expected_String = value_Parser_TypeToString(value_expected, TYPE);
	result_Boolean = string_isEquals(value_String, value_expected_String);
	Si result_Boolean Entonces
		println_Simple(Color_setColorText(string_append_withSeparator(method_name, value_String, "() :: check ::"), COLOR_CYAN()));
	SiNo
		error_message(string_append_withSeparator(method_name, string_append_withSeparator(value_String, value_expected_String, " != "), "() >> The value is not as expected >> "));
	FinSi
FinFuncion
//----[ PASSED ]---------------------------------------------------------------------<#>
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
		count_result = value_modify_StringNumber_inArea(count_string, 1, increment(string_indexOf(count_string, symbol_Separator())), string_Length(count_string));
	FinSi
FinFuncion
//----[ DEBUG ]----------------------------------------------------------------------<#>
Funcion test_Function_Passed_Debug(count_string)
	Definir succes_Count, error_Count, array_test Como Texto;
	Definir succes_Msg, error_msg Como Texto;
	Definir index_Center Como Numero;
	index_Center = string_indexOf(count_string, symbol_Separator());
	succes_Count = string_substring(count_string, 0, index_center);
	error_Count = string_substring_from(count_string, increment(index_center));
	succes_Msg = string_append("¦  + SUCCESS: ", string_fit_end(succes_Count, "            ¦"));
	error_Msg = string_append("¦  - ERROR:   ", string_fit_end(error_Count, "            ¦"));
	Dimension array_test[6];
	array_test[0] = ".=========================.";
	array_test[1] = "¦      < END_TEST >        ¦";
	array_test[2] = ":=========================:";
	array_test[3] = Color_setColorText(succes_Msg, COLOR_CYAN());
	array_test[4] = Color_setColorText(error_Msg, COLOR_YELLOW());
	array_test[5] = ".=========================.";
	println_array_color(array_test, 6, COLOR_WHITE());
FinFuncion
///%%%%%[ INT ]%%%%%%%%%%%%%%%%%%%%%%[   #5   ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Funcion num <- text_ToNum(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion num_range <- int_getRangeCeil_ToFromSeparatedString(num, list_Str)
	Definir num_range, i, length_data_value, length_listStr Como Numero;
	Definir num_carry, Char_Current Como Texto;
	num_carry = "";
	length_listStr = decrement(string_Length(list_Str));
	Mientras i < length_listStr Hacer
		Char_Current = char_At(list_Str, i);
		Si char_isNumber(Char_Current) Entonces
			num_carry = string_append(num_carry, Char_Current);
		SiNo
			length_data_value = string_ToNum(num_carry);
			num_carry = "";
			Si length_data_value >= num Entonces
				num_range = length_data_value;
				i = increment_step(i, length_listStr);
			FinSi
		FinSi
		i = increment(i);
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
//----[ BYNARY_OPERATION ]-----------------------------------------------------------<#>
Funcion int_result <- int_bitSum(A_int, B_int)
	Definir int_result Como Numero;
	int_result = binarystring_ToInt(binarystring_SUM(int_ToBinaryString(A_int), int_ToBinaryString(B_int)));
FinFuncion

Funcion binaryString <- int_ToBinaryString(num)
	Definir binaryString, reSidue Como Texto;
	Mientras num>0 Hacer
		reSidue = num_ToString(math_module(num, 2));
		binaryString = string_insert(binaryString, reSidue, 0);
		num = math_truncate(num/2);
	FinMientras
	binaryString = string_pad_start(binaryString, "0000");
FinFuncion

Funcion int_result <- Int_BitMoveLeft(int_num, num_movements)
	Definir int_result Como Numero;
	int_result = binarystring_ToInt(binarystring_MoveLeft(int_ToBinaryString(int_num), num_movements));
FinFuncion

Funcion int_result <- Int_BitMoveRight(int_num, num_movements)
	Definir int_result Como Numero;
	int_result = binarystring_ToInt(binarystring_MoveRight(int_ToBinaryString(int_num), num_movements));
FinFuncion
///$$$$$[ BINARY_STRING ]$$$$$$$$$$$$[   ++5  ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion int_num <- binarystring_ToInt(binaryString)
	Definir int_num, i, binary_Length, bit Como Numero;
	binary_Length = decrement(string_Length(binaryString));
	int_num = 0;
	para i = 0 Hasta binary_Length Con Paso 1 hacer
		bit = string_toNum(char_At(binaryString, i));//bit 1/0
		int_num = (int_num * 2) + bit;// 1 0 1 1 -->  (((n*2 + 1)*2 + 0)*2 + 1)*2 + 1) = 11
	FinPara
FinFuncion
//----[ LOGICAL_OPERATIONS ]---------------------------------------------------------<#>
Funcion binarystring_Result <- binarystring_AND(binaryString1, binaryString2)
	Definir binarystring_Result Como Texto;
	binarystring_Result = binarystring_LogicalOperations(binaryString1, binaryString2, 0);
FinFuncion

Funcion binarystring_Result <- binarystring_OR(binaryString1, binaryString2)
	Definir binarystring_Result Como Texto;
	binarystring_Result = binarystring_LogicalOperations(binaryString1, binaryString2, 1);
FinFuncion
Funcion binarystring_Result <- binarystring_XOR(binaryString1, binaryString2)
	Definir binarystring_Result Como Texto;
	binarystring_Result = binarystring_LogicalOperations(binaryString1, binaryString2, 2);
FinFuncion

Funcion binarystring_Result <- binarystring_NOT(binaryString1)
	Definir binarystring_Result Como Texto;
	binarystring_Result = binarystring_LogicalOperations(binaryString1, "", 3);
FinFuncion

Funcion bitChar <- array_bitChar_LogicalOperations(bitChar1, bitChar2, index)
	Definir bitChar Como Texto;
	Segun index Hacer
		caso 0:bitChar = bitChar_AND(bitChar1, bitChar2);
		caso 1:bitChar = bitChar_OR(bitChar1, bitChar2);
		caso 2:bitChar = bitChar_XOR(bitChar1, bitChar2);
		De Otro Modo: bitChar = bitChar_NOT(bitChar1);
	FinSegun
FinFuncion

Funcion binarystring_Result <- binarystring_LogicalOperations(binaryString1, binaryString2, index)
	Definir binarystring_Result, Norm_binary Como Texto;
	Definir binary_MaxSize, i Como Numero;
	binarystring_Result = "";
	Norm_binary = binarystring_GetPad_MaxSize(binaryString1, binaryString2);
	binaryString1 = string_pad_start(binaryString1, Norm_binary);
	binaryString2 = string_pad_start(binaryString2, Norm_binary);
	binary_MaxSize = decrement(string_Length(Norm_binary));
	para i = 0 Hasta binary_MaxSize Con Paso 1 Hacer
		binarystring_Result = string_append(binarystring_result, array_bitChar_LogicalOperations(char_At(binaryString1, i), char_At(binaryString2, i), index));
	FinPara
	binarystring_Result = string_Delete(binarystring_result, 0, if_else(string_indexOf(binarystring_result, "1") <> -1, string_indexOf(binarystring_result, "1"), 0, TYPE_INT()));
FinFuncion
//----[ GETTERS ]---------------------------------------------------------------------<#>
Funcion binaryPad <- binarystring_GetPad_MaxSize(binaryString1, binaryString2)
	Definir binaryPad Como Texto;
	Definir max_length Como Numero;
	max_length = math_max_Int(string_Length(binaryString1), string_Length(binaryString2));
	binaryPad= string_RepeatText("0", max_length);
FinFuncion
//----[ BIT_LOGICAL_OPERATIONS ]-----------------------------------------------------<#>
Funcion bitChar_Result <- bitChar_AND(bit_char1, bit_char2)
	Definir bitChar_Result Como Texto;
	bitChar_Result = if_else(string_isEquals(bit_char1, "1") & string_isEquals(bit_char2, "1"), "1", "0", TYPE_STRING());
FinFuncion

Funcion bitChar_Result <- bitChar_OR(bit_char1, bit_char2)
	Definir bitChar_Result Como Texto;
	bitChar_Result = if_else(string_isEquals(bit_char1, "0") & string_isEquals(bit_char2, "0"), "0", "1", TYPE_STRING());
FinFuncion

Funcion bitChar_Result <- bitChar_XOR(bit_char1, bit_char2)
	Definir bitChar_Result Como Texto;
	bitChar_Result = if_else(string_isEquals(bit_char1, bit_char2), "0", "1", TYPE_STRING());
FinFuncion

Funcion bitChar_Result <- bitChar_NOT(bit_char1)
	Definir bitChar_Result Como Texto;
	bitChar_Result = if_else(string_isEquals(bit_char1, "1"), "0", "1", TYPE_STRING());
FinFuncion
//----[ SHIFTING ]-------------------------------------------------------------------<#>
Funcion binarystring_result <- binarystring_MoveLeft(binaryString, num_movements)
	Definir binarystring_result Como Texto;
	binarystring_result = string_append(binaryString, string_RepeatText("0", num_movements));
FinFuncion

Funcion binarystring_result <- binarystring_MoveRight(binaryString, num_movements)
	Definir binarystring_result Como Texto;
	binarystring_result = string_substring(binaryString, 0, decrement_step(string_Length(binaryString), num_movements));
FinFuncion
//----[ ARITHMETIC ]-----------------------------------------------------------------<#>
Funcion binarystring_result <- binarystring_SUM(binaryString1, binaryString2)
    Definir binarystring_result, sum, carry Como Texto;
    Mientras string_Contains(binaryString2, "1") Hacer
        sum  = binarystring_XOR(binaryString1, binaryString2);
        binaryString2  = binarystring_MoveLeft(binarystring_AND(binaryString1, binaryString2), 1);
        binaryString1 = sum;
    FinMientras
    binarystring_result = sum;
FinFuncion

Funcion binarystring_result <- binarystring_TwosComplement(binaryString)
	Definir binarystring_result Como Texto;
	binarystring_result = binarystring_SUM(binarystring_NOT(binaryString), string_pad_start("1", string_RepeatText("0", string_Length(binaryString))));
FinFuncion
///%%%%%[ MATH ]%%%%%%%%%%%%%%%%%%%%%[   #6   ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//----[ MAX ]------------------------------------------------------------------------<#>
Funcion result <- math_max_Int(value, limit)
	Definir result Como Entero;
	result = if_else(value>limit, value, limit, TYPE_INT());
FinFuncion
// max = (1>0, 1, 0) result = 1
Funcion result <- math_max_Float(value, limit)
	Definir result Como Real;
	result = if_else(value>limit, value, limit, TYPE_FLOAT());
FinFuncion
//----[ MIN ]------------------------------------------------------------------------<#>
Funcion result <- math_min_int(value, limit)
	Definir result Como Entero;
	result = if_else(value<limit, value, limit, TYPE_INT());
FinFuncion
// min = (1<0, 0, 1) result = 0
Funcion result <- math_min_float(value, limit)
	Definir result Como Real;
	result = if_else(value<limit, value, limit, TYPE_FLOAT());
FinFuncion
//----[ RANGE_LIMIT ]----------------------------------------------------------------<#>
Funcion result <- math_rangeLimit_Float(value, limit_min, limit_max)
	Definir result Como Real;
	result = math_max_Float(limit_min, math_min_float(limit_max, value));
FinFuncion
// rangeLimit =  [min = (1<2, 2, 1)] result min = 2 -> max(0>min, 0, min) result = 2
Funcion result <- math_rangeLimit_Int(value, limit_min, limit_max)
	Definir result Como Numero;
	result = math_max_Int(limit_min, math_min_int(limit_max, value));
FinFuncion
//----[ POW ]------------------------------------------------------------------------<#>
Funcion num_pow <- math_pow(num, num2)
	Definir num_pow, i Como Entero;
	num_pow = 1;
	i = 1;
	Mientras i <= num2 Hacer
		num_pow = num_pow*num;//2*2>4*2>8*2
		i = increment(i);
	FinMientras
FinFuncion

Funcion num_pow <- math_pow_float(base, exponente)
    Definir num_pow, ln_base Como Real;
    ln_base = math_ln(base);
    num_pow = math_exp(exponente * ln_base);
FinFuncion
//----[ TRIGONOMETRY ]---------------------------------------------------------------<#>
Funcion num_Sin <- math_Sin(x)
    Definir num_Sin Como Real;//RAD
	x = math_Normalize_InPiRange(x);
	num_Sin =  math_serie_taylor(x, x, 20, 1, 2, 2, true(), true());
FinFuncion

Funcion num_cos <- math_cos(x)
    Definir num_cos Como Real;
	x = math_Normalize_InPiRange(x);
	num_cos =  math_serie_taylor(x, 1, 30, 0, 2, 2, true(), true());
FinFuncion

Funcion num_tan <- math_tan(x)
	Definir num_tan, n, i, t Como Real;
	num_tan =  math_Sin(x)/math_cos(x);
FinFuncion

Funcion num_Sin <- math_Sin_DEG(x)
	Definir num_Sin Como Real;
	num_Sin= math_Sin(DEG_TO_RAD(x));
FinFuncion

Funcion num_cos <- math_cos_DEG(x)
	Definir num_cos Como Real;
	num_cos= math_cos(DEG_TO_RAD(x));
FinFuncion

Funcion num_deg <- DEG_TO_RAD(x_rad)
	Definir num_deg Como Real;
    num_deg = x_rad * (math_PI()/180);
FinFuncion

Funcion x_norm <- math_Normalize_InPiRange(x)
	Definir x_norm, pi_ Como Real;
	pi_ = math_PI();
	x_norm = math_module(x + pi_, 2 * pi_) - pi_;
FinFuncion

//----[ EXPONENTIAL ]----------------------------------------------------------------<#>
Funcion lnx0 <- math_ln(x)
	Definir lnx0, t, term Como Real;
    Definir i, n Como Entero;
	//lnx0 =  math_serie_taylor(decrement(x), decrement(x), 10, 1, 1, 1, false(), true());
	t = decrement(x);
    lnx0 = t;
    term = t;
    n = 1;
	
    Para i = 2 Hasta 10 Con Paso 1 Hacer
		n = i;
        term = -term * t;// alterna Signo y multiplica por t
        lnx0 = lnx0 + term / n;
    FinPara
FinFuncion

Funcion logx <- math_log(x, base)
    Definir logx Como Real;
    logx = math_ln(x) / math_ln(base);
FinFuncion

Funcion num_taylor <- math_serie_taylor(x, first_term, num_terms, n_start, n_increment, num_exp, isFact, HasAlternations)
	Definir num_taylor, term, i, n , n_divisor Como Real;	
	num_taylor=first_term;
	term=first_term;
	n=n_start;
	n_divisor =1;
	para i=1 Hasta num_terms con paso 1 Hacer
		n = increment_step(n, n_increment);
		Si isFact Entonces
			n_divisor = decrement(n)*n;
		SiNo
			n_divisor = n;
		FinSi
		n_divisor = if_else(n_divisor<=0, 1, n_divisor, TYPE_FLOAT());
		
		term = term * math_pow(x, num_exp)/n_divisor;
		Si HasAlternations Entonces
			term = -term;
		FinSi
		
		num_taylor=increment_step(num_taylor, term);
	FinPara
FinFuncion

Funcion num_sqrt <- math_sqrt(S)
    Definir num_sqrt, xk, i Como Real;
	xk = S;//Babylonian method: 1/2(xk+S/xk)
	para i=1 Hasta 6 con paso 1 Hacer
		num_sqrt = 0.5 * (increment_step(xk, (math_div(S,xk))));
		xk = num_sqrt;
	FinPara
FinFuncion

Funcion num_exp <- math_exp(x)
    Definir num_exp, term , n Como Real;
	term = 40+x;
    num_exp = math_serie_taylor(x, 1, term, 0, 1, 1, false(), false());
FinFuncion

Funcion num_range <- math_Summation_ToFromSeparatedString(separatedString, separator)
	Definir num_range, i, length_data_value, length_listStr Como Numero;
	Definir num_carry, Char_Current Como Texto;
	Definir IsNumber Como Logico;
	num_carry = "";
	num_range = 0;
	length_listStr = string_Length(separatedString);
	i = 0;
	Mientras i <= length_listStr Hacer
		Char_Current = char_At(separatedString, i);
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(num_carry, Char_Current);
		FinSi
		
		Si !IsNumber & !string_isEmpty(num_carry) Entonces
			length_data_value = string_ToNum(num_carry);
			num_carry = "";
			num_range = increment_step(num_range, length_data_value);
		FinSi
		i = increment(i);
	FinMientras
FinFuncion
//----[ BASIC_ARITHMETIC ]-----------------------------------------------------------<#>
Funcion num_abs <- math_abs(num)
	Definir num_abs Como Numero;
	num_abs=if_else(num < 0, math_Negated(num), num, TYPE_INT());
FinFuncion

Funcion num_Negate <- math_Negated(num)
	Definir num_Negate Como Numero;
	num_Negate = -1 * num;
FinFuncion

Funcion num_div <- math_div(dividend, divisor)
	Definir num_div Como Numero;
	divisor= if_else(divisor == 0, 1, divisor, TYPE_INT());
	num_div = dividend / divisor;
FinFuncion

Funcion num_fact <- math_factorial(x)
    Definir num_fact, i Como Real;
	num_fact=1;
	para i=1 Hasta x Con Paso 1 Hacer
		num_fact = num_fact * i;
	FinPara
FinFuncion
//----[ SIGN_ANALYSIS ]--------------------------------------------------------------<#>
Funcion num_Signum <- math_Signum(num)
	Definir num_Signum Como Numero;
	num_Signum = if_else(num>0, 1, if_else(num<0, -1, 0, TYPE_INT()), TYPE_INT());
FinFuncion

Funcion isPositive <- math_numberIsPosive(num)
	Definir isPositive Como Logico;
	isPositive = num >= 0;
FinFuncion

Funcion isNegative <- math_numberIsNegative(num)
	Definir isNegative Como Logico;
	isNegative = num < 0;
FinFuncion
//----[ ROUNDING ]-------------------------------------------------------------------<#>
Funcion number_Round <- math_Round(number)
	Definir number_Round, index_point Como Numero;
	Definir number_String, number_Point Como Texto;
	number_String = num_ToString(number);
	index_point = increment(string_indexOf(number_String, "."));
	number_Point = string_substring_from(number_String, index_point);
	number_Round = math_truncate(number);
	si string_ToNum(Char_At(number_Point, 0)) >= 5 Entonces
		si number >= 0 Entonces
			number_Round = increment(number_Round);
		SiNo
			number_Round = decrement(number_Round);
		FinSi
	FinSi
FinFuncion

Funcion num_floor <- math_floor(num)
	Definir num_floor Como Numero;
	Definir num_string Como Texto;
	num_floor = math_truncate(num);
	Si num_floor < 0 & string_isNumber_float(num_toString(num)) Entonces
		num_floor = decrement(num_floor);
	FinSi
FinFuncion

Funcion num_trunc <- math_truncate(num)
	Definir num_trunc, index_point Como Numero;
	Definir str_num Como Texto;
	str_num = num_ToString(num);
	index_point = string_indexOf(str_num, ".");
	si index_point > 0 Entonces
		str_num = string_Delete_From(str_num, index_point);
	FinSi
	num_trunc = string_ToNum(str_num);
FinFuncion

Funcion float_lim <- math_limitDecimals(num, limitFloat)
	Definir float_lim, index_point, index_max, TextLength Como Numero;
	Definir str_num Como Texto;
	str_num = num_ToString(num);//1.123
	TextLength = string_Length(str_num);
	index_point = increment(string_indexOf_fromIndex(str_num, ".", 0));
	si index_point > 1 Entonces
		index_point = math_min_Int(increment_step(index_point, limitFloat), TextLength );
		str_num = string_Delete(str_num, index_point, TextLength);
	FinSi
	float_lim = string_ToNum(str_num);
FinFuncion
//----[ MODULE ]---------------------------------------------------------------------<#>
Funcion module <- math_module(dividend, divisor)
	Definir module Como Numero;// module = a-floor(a/b)*b
	divisor = math_max_int(divisor, 1);
	module = dividend-math_truncate(dividend/divisor)*divisor;
FinFuncion

Funcion value_normalized <- math_NormalizeCycle(current_value, max_limit)
    Definir value_normalized Como Real;
    value_normalized = math_module(current_value, max_limit);
    Si value_normalized < 0 Entonces
        value_normalized = increment_step(value_normalized, max_limit);
    FinSi
FinFuncion
//----[ CONSTANTS ]-----------------------------------------------------------------<#>
Funcion num_PI <- math_PI
	Definir num_PI Como Real;
	num_PI = 3.141592653589793;
FinFuncion

Funcion num_PI <- math_2PI
	Definir num_PI Como Real;
	num_PI = 2 * math_PI();
FinFuncion

Funcion num_EULER <- math_EULER
	Definir num_EULER Como Real;
	num_EULER = 2.718281828459045;
FinFuncion

Funcion num_PHI <- math_PHI
    Definir num_PHI Como Real;
    num_PHI = 1.618033988749895;// Para proporciones estéticas
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=========================================
Funcion numInc <- increment(num)
	Definir numInc Como Numero;
	numInc = num + 1;
FinFuncion

Funcion numInc <- increment_step(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion

Funcion numDec <- decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
FinFuncion

Funcion numDec <- decrement_step(num, value)
	Definir numDec Como Numero;
	numDec = num - value;
FinFuncion
///%%%%%[ BOOLEAN ]%%%%%%%%%%%%%%%%%%[   #7   ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Funcion boolean <- false
	Definir boolean Como Logico;
	boolean = Falso;
FinFuncion

Funcion boolean <- true
	Definir boolean Como Logico;
	boolean = Verdadero;
FinFuncion

Funcion text <- boolean_ToString(boolean)	
	Definir text Como Texto;
	text=if_else(boolean, "True", "False", TYPE_STRING());
FinFuncion

Funcion boolean <- __private_isEquals_general(value1, value2)
	Definir boolean Como Logico;
	boolean = (value1 == value2);
FinFuncion

Funcion boolean <- Num_isInterger(num)
	Definir boolean Como Logico;
	boolean = (num == math_truncate(num));
FinFuncion

Funcion boolean <- Num_isEquals(num, num2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(num, num2);
FinFuncion

Funcion boolean <- char_isNumber(char)
	Definir boolean Como Logico;
	boolean = ascii_IsNumberSymbols(char);
FinFuncion
///%%%%%[ CONDITIONS ]%%%%%%%%%%%%%%%[   #8   ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

Funcion result <- __private_if_else(condition, result, result2)
	Si condition Entonces
		result = result2;
	FinSi	
FinFuncion

Funcion result <- if(condition, result1, TYPE)
	Segun TYPE Hacer
		caso TYPE_INT():
			Definir result Como Entero;
		caso TYPE_FLOAT():
			Definir result Como Real;
		caso TYPE_BOOLEAN():
			Definir result Como Logico;
		De Otro Modo:
			Definir result Como Texto;
	FinSegun
	result = value_getNullType(TYPE);
	Si condition Entonces
		result = result1;
	FinSi
FinFuncion

Funcion error_message_Function(method, message)
	error_message(string_append_withSeparator(method, message, "//"));
FinFuncion

Funcion error_message(message)
	println_Simple(symbol_Escape()+"31m[ERROR] // "+message+".");
FinFuncion

Funcion condition_message_log(condition, message, log)
	Si condition Entonces
		Segun log hacer
			caso "error":
				log_ERROR(message);
			caso "info":
				log_INFO(message);
			caso "debug":
				log_DEBUG(message);
			caso "trace":
				log_TRACE(message);
			caso "warning":
				log_WARNING(message);
			De Otro Modo:
				log_FATAL(message);
		FinSegun
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

Funcion number_validateNumberRange(Function_name, value, min_val, max_val)
	si (min_val > max_val) Entonces
		error_message_Function(Function_name, "Config Error: Min > Max");
	FinSi
    Si !number_IsInRange(value, min_val, max_val) Entonces
        Definir error_msg Como Texto;
        error_msg = string_append("Value out of range: ", num_ToString(value));
        error_msg = string_append(error_msg, string_append(" [Limit: ", num_ToString(min_val)));
        error_msg = string_append(error_msg, string_append(" - ", num_ToString(max_val)));
        error_msg = string_append(error_msg, "]");
        error_message_Function(Function_name, error_msg);
    FinSi
FinFuncion

Funcion IsInRange <- number_IsInRange(value, min_val, max_val)
    Definir IsInRange Como Logico;
    IsInRange = value >= min_val & value <= max_val;
FinFuncion

Funcion exection_Error(message_Error)
	Definir error_int Como Entero;
	log_ERROR(message_Error);
	error_int = string_Null();
FinFuncion
///%%%%%[ COLOR ]%%%%%%%%%%%%%%%%%%%%[   #9   ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Funcion color <- COLOR_TRANSPARENT
	Definir color Como Texto;
	color =  COLOR_getColor_forIndex(0);
FinFuncion
// CODES <<<<<<
Funcion color <- COLOR_RED
	Definir color Como Texto;
	color =  COLOR_getColor_forIndex(1);
FinFuncion

Funcion color <- COLOR_GREEN
	Definir color Como Texto;
	color =  COLOR_getColor_forIndex(2);
FinFuncion

Funcion color <- COLOR_YELLOW
	Definir color Como Texto;
	color =  COLOR_getColor_forIndex(3);
FinFuncion

Funcion color <- COLOR_BLUE
	Definir color Como Texto;
	color =  COLOR_getColor_forIndex(4);
FinFuncion

Funcion color <- COLOR_MAGENTA
	Definir color Como Texto;
	color =  COLOR_getColor_forIndex(5);
FinFuncion

Funcion color <- COLOR_CYAN
	Definir color Como Texto;
	color =  COLOR_getColor_forIndex(6);
FinFuncion

Funcion color <- COLOR_WHITE
	Definir color Como Texto;
	color =  COLOR_getColor_forIndex(7);
FinFuncion

Funcion color <- COLOR_getColor_forIndex(index)
	Definir color Como Texto;
	si (index < 0) | (index > 7) Entonces
		error_message_Function("COLOR_getColor_forIndex", "invalid index color (index valid: 0...7)");
		color = __private_color_getColor_or_style_forIndex(0);
	SiNo
		index = increment_step(index, 30);
		color = __private_color_getColor_or_style_forIndex(index);
	FinSi
FinFuncion

Funcion color <- __private_color_getColor_or_style_forIndex(index)
	Definir color Como Texto;
	color = string_append_withSeparator(symbol_Escape(), "m", num_ToString(index));
FinFuncion

Funcion color <- COLOR_STYLE_BOLD
	Definir color Como Texto;
	color =__private_color_getColor_or_style_forIndex(1);
FinFuncion

Funcion color <- COLOR_STYLE_PLAIN
	Definir color Como Texto;
	color = __private_color_getColor_or_style_forIndex(0);
FinFuncion

Funcion remove_Colors 
	
FinFuncion

Funcion text_Color <- Color_setColorText(text, color)
	Definir text_Color Como Texto;
	text_Color = string_append(color, text);
FinFuncion

Funcion text_Color <- Color_setColorText_brakelines(text, color)
	Definir text_Color Como Texto;
	si !string_hasColor(color) Entonces
		error_message_Function("Color_setColorText", string_append("invalid color `", string_append(color, "`")));
		text_Color = string_append_in_brakelines(text, COLOR_TRANSPARENT());
	SiNo
		text_Color = string_append_in_brakelines(text, color);
	FinSi
FinFuncion

Funcion text_Color <- Color_setColorText_multiColor(text)
	Definir text_Color, color_char Como Texto;
	Definir text_length, i Como Numero;
	text_length = string_Length(text);
	para i=0 Hasta text_length Hacer
		color_char = Color_setColorText(char_At(text, i), COLOR_getColor_forIndex(increment(math_module(i, 7))));
		text_Color = string_append(text_Color, color_char);
	FinPara
FinFuncion

Funcion text_Color <- Color_Darked(text, color)
	Definir text_Color Como Texto;
	text = string_append(DARK, text);
	text_Color = string_append(color, text);
FinFuncion

Funcion text_dark <- Color_Normal(text)
	Definir text_dark Como Texto;
	text_dark = string_append(DARK, text);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=========================================
Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion
///$$$$$$[ VALUE ]$$$$$$$$$$$$$$$$$$$$[   #+1  ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
//----[ PARSERS ]---------------------------------------------------------------------<#>
Funcion element_Result <- value_Parser_StringToType(element_String, TYPE)
	Segun TYPE Hacer
		caso TYPE_INT():
			Definir element_Result Como Numero;
			element_Result = string_ToNum(element_String);
		caso TYPE_FLOAT():
			Definir element_Result Como Real;
			element_Result = string_ToNum(element_String);
		caso TYPE_BOOLEAN():
			Definir element_Result Como Logico;
			element_Result = string_toBoolean(element_String);
		De Otro Modo:
			Definir element_Result Como Texto;
			element_Result = string_append(element_String, "");//wrapper
	FinSegun
FinFuncion

Funcion result <- value_Parser_TypeToString(data, TYPE)
	Definir result Como Texto;
	Segun TYPE Hacer
		caso TYPE_INT():
			result = interger_ToString(data);
		caso TYPE_FLOAT():
			result = float_ToString(data);
		caso TYPE_BOOLEAN():
			result = boolean_ToString(data);
		caso TYPE_STRING():
			result = string_append(data, "");//wrapper
		De Otro Modo:
			result = object_ToString(data, TYPE);
	FinSegun
FinFuncion
//----[ GETTERS ]---------------------------------------------------------------------<#>
Funcion result <- value_getNullType(TYPE)
	Segun TYPE Hacer
		caso TYPE_INT():
			Definir result Como Numero;
			result = number_Null();
		caso TYPE_BOOLEAN():
			Definir result Como Logico;
			result = false();
		caso TYPE_FLOAT():
			Definir result Como Real;
			result = number_Null();
		caso TYPE_STRING():
			Definir result Como Texto;
			result = string_Null();
		De Otro Modo:
			Definir result Como Texto;
			result = object_Empty(TYPE);
	FinSegun
FinFuncion

Funcion result <- value_getNullType_toString(TYPE)
	Definir result Como Texto;
	result = value_Parser_TypeToString(value_getNullType(TYPE), TYPE);
FinFuncion

Funcion result <- value_getValidstring_ofType(value, TYPE) 
	Definir result Como Texto;
	result = value;
	Si value_isNull(value, TYPE_STRING()) Entonces
		result = value_getNullType_toString(TYPE);
	FinSi
FinFuncion

Funcion boolean <- value_isNull(value, TYPE)
	Definir boolean Como Logico;
	Segun TYPE Hacer
		caso TYPE_INT():
			boolean = Num_isEquals(value, number_Null());
		caso TYPE_FLOAT():
			boolean = Num_isEquals(value, number_Null());
		caso TYPE_BOOLEAN():
			boolean = !value;
		caso TYPE_STRING():
			boolean = string_isEquals(value, string_Null());
		De Otro Modo:
			boolean = string_isEquals(value, object_Empty(TYPE));
	FinSegun
FinFuncion
//----[ CATCH_VALUE ]-----------------------------------------------------------------<#>
Funcion result <- value_StringCatch_ofType(value, TYPE, method, message) 
	Definir result Como Texto;
	result = value;
	Si value_isNull(value, TYPE_STRING()) Entonces
		result = value_getNullType_toString(TYPE);
		error_message_Function(method, message);
	FinSi
FinFuncion

Funcion result <- value_catch_toString(expected_value, method, message, TYPE)
	Definir result Como Texto;
	result = value_Parser_TypeToString(value_catch(expected_value, method, message, TYPE), TYPE);
FinFuncion

Funcion result <- value_catch(expected_value, method, message, TYPE)
	Segun TYPE Hacer
		caso TYPE_INT():
			Definir result Como Numero;
		caso TYPE_FLOAT():
			Definir result Como Real;
		caso TYPE_BOOLEAN():
			Definir result Como Logico;
		De Otro Modo:
			Definir result Como Texto;
	FinSegun
	
	Si value_isNull(expected_value, TYPE) Entonces
		error_message_Function(method, message);
		result = value_getNullType(TYPE);
	SiNo
		result = expected_value;
	FinSi
FinFuncion
//----[ MODIFY_STRINGNUMBER ]--------------------------------------------------------<#>
Funcion string_Increment <- value_modify_StringNumber(string_number, num_sum)
	Definir string_Increment Como Texto;
	string_Increment = num_ToString(increment_step(string_toNum(string_number), num_sum));
FinFuncion

Funcion string_Increment <- value_increment_StringNumber_inArea(Text, index_start, index_end)
	Definir string_Increment Como Texto;
	string_Increment = value_modify_StringNumber_inArea(Text, 1, index_start, index_end);
FinFuncion

Funcion string_Increment <- value_decrement_StringNumber_inArea(Text, index_start, index_end)
	Definir string_Increment Como Texto;
	string_Increment = value_modify_StringNumber_inArea(Text, -1, index_start, index_end);
FinFuncion

Funcion string_Increment <- value_modify_StringNumber_inArea(Text, num_sum, index_start, index_end)
	Definir string_Increment Como Texto;
	string_Increment = string_insert(string_Delete(Text, index_start, index_end), value_modify_StringNumber(string_substring(text, index_start, index_end), num_sum), index_start);
FinFuncion

Funcion string_Increment <- value_modify_StringNumber_inArea_symbols(Text, num_sum, symbol_start, symbol_end)
	Definir string_Increment Como Texto;
	Definir index_start, index_end Como Numero;
	index_start = increment(string_indexOf(Text, symbol_start));
	index_end = string_indexOf_fromIndex(Text, symbol_end, increment(index_start));
	string_Increment = value_modify_StringNumber_inArea(Text, num_sum, index_start, index_end);
FinFuncion
Funcion isValid <- value_type_isValid(TYPE)
	Definir isValid Como Logico;
	isValid = string_isEquals(TYPE, TYPE_STRING()) | string_isEquals(TYPE, TYPE_INT()) | string_isEquals(TYPE, TYPE_BOOLEAN()) | string_isEquals(TYPE, TYPE_FLOAT());
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=========================================
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

Funcion Num <- number_Null
	Definir Num Como Numero;
	Num = -1;
FinFuncion

Funcion result_string <- string_Null
	Definir result_string Como Texto;
	result_string = "";
FinFuncion

Funcion result_string <- object_Empty(type_Name)
	Definir result_string Como Texto;
	result_string = object_New(type_Name);
FinFuncion
///%%%%%[ UTIL ]%%%%%%%%%%%%%%%%%%%%%[   ///  ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
///$$$$$$[ COLLECTION ]$$$$$$$$$$$$$$$[   #+2  ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion data_collection <- collection_new(STRUCT_TYPE, TYPE)
	Definir data_collection, dataParts, index_end_dataArea Como Texto;
	Definir length_data_area Como Numero;
	DimenSion dataParts[5];
	dataParts[0] = STRUCT_TYPE;
	dataParts[1] = symbol_TypeArea();
	dataParts[2] = TYPE;
	dataParts[3] = symbol_DataArea();
	dataParts[4] = symbol_MetaData();
	data_collection = array_ofstring_separator(dataParts, 5, "", TYPE_STRING());//struct/<STRING[Data(meta_data
FinFuncion
//----[ UTILITIES ]-----------------------------------------------------------------<#>
Funcion isType <- ascii_IsLetters(char)
	Definir isType Como Logico;
	isType = ascii_IsLetters_UpperCase(char) | ascii_IsLetter_LowerCase(char);//65-90
FinFuncion

Funcion clear_Collection <- collection_Clear(struct_Collection)
	Definir clear_Colection Como Texto;
	clear_Colection = collection_new(collection_getContent_TypesArea(struct_Collection), collection_getNameCollection(struct_Collection));
FinFuncion

Funcion isEmpty <- collection_isEmpty(struct_collection)
	Definir isEmpty Como Logico;
	isEmpty = string_isEmpty(collection_getContent_DataArea(struct_collection));
FinFuncion
//----[ GETTERS ]---------------------------------------------------------------------<#>
Funcion name_Collection <- collection_getNameCollection(collection)
	Definir name_Collection Como Texto;
	name_Collection = string_GetLeadingLetters(collection);
FinFuncion

Funcion data_Area <- collection_getContent_DataArea(collection)
	Definir data_Area Como Texto;
	data_Area = collection_getContent_Between_Symbols(collection, symbol_DataArea(), symbol_MetaData());
FinFuncion

Funcion type_area <- collection_getContent_TypesArea(collection)
	Definir type_area Como Texto;
	type_area =  collection_getContent_TypesArea_End_Of_Text(collection, symbol_DataArea());
FinFuncion

Funcion type_area <- collection_getContent_TypesArea_End_Of_Text(collection, text_end)
	Definir type_area Como Texto;
	type_area = collection_getContent_Between_Symbols(collection, symbol_TypeArea(), text_end);
FinFuncion

Funcion type_area <- collection_getContent_Between_Symbols(collection, symbol_start, symbol_end)
	Definir Type_property, type_area Como Texto;
	Definir index_start, index_end, index_check Como Numero;
	index_start = increment(string_indexOf(collection, symbol_start));
	index_end = string_indexOf_fromIndex(collection, symbol_end, index_start);
	type_area = string_substring(collection, index_start, index_end);
FinFuncion

Funcion type_area <- collection_getContent_Between_LastSymbols(collection, symbol_start, symbol_end)
	Definir Type_property, type_area Como Texto;
	Definir index_start, index_end, index_check Como Numero;
	index_start = increment(string_LastindexOf(collection, symbol_start));
	index_end = string_indexOf_fromIndex(collection, symbol_end, index_start);
	type_area = string_substring(collection, index_start, index_end);
FinFuncion

Funcion index_TypeArea <- collection_getIndex_TypeArea(struct_Collection)
	Definir index_TypeArea Como Numero;
	index_TypeArea = string_indexOf(struct_Collection, symbol_TypeArea());
FinFuncion

Funcion index_MetaData <- collection_getIndex_MetaDataArea(struct_Collection)
	Definir index_MetaData Como Numero;
	index_MetaData = string_lastIndexOf(struct_Collection, symbol_MetaData());
FinFuncion

Funcion index_DataArea <- collection_getIndex_DataArea(struct_Collection)
	Definir index_DataArea Como Numero;
	index_DataArea = string_IndexOf(struct_Collection, symbol_DataArea());
FinFuncion

Funcion index_separator <- collection_getIndex_FromNumElement(text, num)
	Definir index_separator Como Numero;
	index_separator = collection_getIndex_FromNumElement_Separator(text, num, symbol_Separator());
FinFuncion

Funcion index_separator <- collection_getLastIndex_FromNumElement(text, num)
	Definir index_separator Como Numero;
	index_separator = collection_getLastIndex_FromNumElement_Separator(text, num, symbol_Separator());
FinFuncion

Funcion index_separator <- collection_getIndex_FromNumElement_Separator(text, num, separator)
	Definir i, index_separator, text_length Como Numero;
	text_length = string_Length(text);
	index_separator = string_indexOf_fromIndex(text, separator, index_separator);
	mientras index_separator < text_length & i<num Hacer
		index_separator = increment(index_separator);
		index_separator = string_indexOf_fromIndex(text, separator, index_separator);
		i = increment(i);
	FinMientras
FinFuncion

Funcion index_separator <- collection_getLastIndex_FromNumElement_Separator(text, num_separator, separator)
	Definir i, index_separator, text_length Como Numero;
	index_separator = string_lastIndexOf(text, separator);
	i = 0;
	mientras index_separator > -1 & i < num_separator Hacer
		index_separator = decrement(index_separator);
		index_separator = string_lastIndexOf_fromIndex(text, separator, index_separator);
		i = increment(i);
	FinMientras
FinFuncion

Funcion str_element <- collection_getElement_AtIndex(text, index)
	Definir str_element Como Texto;
	str_element = collection_getElement_AtIndex_withSeparator(text, index, symbol_Separator_Simple());
FinFuncion

Funcion str_element <- collection_getElement_AtIndex_withSeparator(text, index, separator)
	Definir count_sep, i, index_match, index_matchEnd, sum Como Real;
	Definir str_element, Slice_After Como Texto;
	index_matchEnd = collection_getIndex_FromNumElement_Separator(text, index, separator);
	index_matchEnd= if_else(index_Matchend<0, string_Length(text), index_Matchend, TYPE_INT);
	
	index_match = string_LastindexOf_fromIndex(text, separator, index_MatchEnd)+1;
	index_match = if_else(index_Match<0, 0, index_Match, TYPE_INT);
	
	Si index >= 0 & index <= string_countMatches(text, separator) Entonces
		str_element = string_substring(text, index_Match, index_Matchend);
	SiNo
		str_element = string_Null();
	FinSi
FinFuncion
//----[ PRINTER ]---------------------------------------------------------------------<#>
Funcion __private_Collection_Printer(data_soup, string_sumation, isNewLine)
	Definir separated_String, num_carry, Char_Current, line_Current Como Texto;
	Definir i, num_range, length_data_value Como Numero;
	Definir length_Sumation, num_range_inc Como Numero;
	Definir IsNumber Como Logico;
	num_carry 	     = "";
	separated_String = "";
	num_range		 = 0;	
	num_range_inc  	 = 0;
	length_Sumation  = string_Length(string_sumation);
	i				 = length_Sumation;
	Mientras i >= 0 Hacer
		Char_Current = char_At(string_sumation, i);
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(Char_Current, num_carry);
		FinSi
		
		Si !IsNumber & !string_isEmpty(num_carry) | Num_isEquals(i, 0) Entonces
			length_data_value = string_ToNum(num_carry);
			num_range_inc = increment_step(num_range, length_data_value);
			line_Current  = string_substring(data_soup, num_range, num_range_inc);
			si isNewLine Entonces
				println(line_Current);
			SiNo
				print(line_Current);
			FinSi
			num_carry       = "";// clear
			num_range       = num_range_inc;
		FinSi
		i = decrement(i);
	FinMientras
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=========================================
Funcion symbol_area <- symbol_DataArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001A
FinFuncion

Funcion symbol_area <- symbol_TypeArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001D
FinFuncion

Funcion symbol_area <- symbol_MetaData
	Definir symbol_area Como Texto;
	symbol_area = "";//001E
FinFuncion
///$$$$$$[ LINEAR_COLLECTION ]$$$$$$$$[  -+2_1 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion new_LinearColletion <- linearCollection_newLinearCollection(struct_Collection, TYPE)
	Definir new_LinearColletion Como Texto;
	new_LinearColletion = string_append_withSeparator(collection_new(struct_Collection, TYPE), "0", symbol_ExtraData());
FinFuncion
//----[ ADD ]------------------------------------------------------------------------<#>
Funcion collection_result <- linearCollection_addFirst(struct_Collection, Element)
	Definir collection_result, TYPE Como Texto;
	TYPE = linearCollection_GetType(struct_Collection);
	collection_result = linearCollection_addFirst_ByType(struct_Collection, Element, TYPE);
FinFuncion

Funcion collection_result <- linearCollection_addLast(struct_Collection, Element)
	Definir collection_result, TYPE Como Texto;
	TYPE = linearCollection_GetType(struct_Collection);
	collection_result = linearCollection_addLast_ByType(struct_Collection, Element, TYPE);
FinFuncion

Funcion collection_result <- linearCollection_addFirst_ByType(struct_Collection, Element, TYPE)
	Definir collection_result, element_String Como Texto;// (C, B, A/1;2;3)
	element_String = value_Parser_TypeToString(Element, TYPE);//"Z"
	collection_result = linearCollection_addFirst_byString(struct_Collection, element_String);
FinFuncion

Funcion collection_result <- linearCollection_addLast_ByType(struct_Collection, Element, TYPE)
	Definir collection_result, element_String Como Texto;// (C, B, A/1;2;3)
	element_String = value_Parser_TypeToString(Element, TYPE);//"Z";
	collection_result = linearCollection_addLast_ByString(struct_Collection, element_String);
FinFuncion
//....[ add_by_string ].................................................................
Funcion collection_result <- linearCollection_addFirst_byString(struct_Collection, element_String)
	Definir collection_result, element_Length_str Como Texto;// (C, B, A/1;2;3)
	Definir index_DataArea, index_MetaData Como Numero;//first  (<-:->)
	element_Length_str = string_append(symbol_Separator(), num_ToString(string_Length(element_String)));// , 4
	index_DataArea = collection_getIndex_DataArea(struct_Collection);
	collection_result = string_insert(struct_Collection, element_Length_str, linearCollection_getIndex_EndMetaData(struct_Collection));
	collection_result = string_insert(collection_result, element_String, increment(index_DataArea));//(Z, C, B, A/1;2;3;4)		
	collection_result = linearCollection_increment_numElement(collection_result);
FinFuncion

Funcion collection_result <- linearCollection_addLast_ByString(struct_Collection, element_String)
	Definir collection_result, element_Length_str Como Texto;// (C, B, A/1;2;3)
	Definir index_DataArea, index_MetaData Como Numero;//last  (->:<-)
	collection_result = struct_Collection;
	element_Length_str = string_append(symbol_Separator(), num_ToString(string_Length(element_String)));//, 4
	index_MetaData = collection_getIndex_MetaDataArea(struct_Collection);
	collection_result = string_insert(collection_result, element_Length_str, increment(index_MetaData));
	collection_result = string_insert(collection_result, element_String, index_MetaData);//(C, B, A, Z/4;1;2;3)
	collection_result = linearCollection_increment_numElement(collection_result);
FinFuncion
//----[ REMOVE ]---------------------------------------------------------------------<#>
Funcion collection_result <- linearCollection_RemoveElement(struct_Collection, index_element)
	Definir collection_result Como Texto;
	collection_result = __private_LinearCollection_ModifyElement(struct_Collection, index_element, string_Null());
	collection_result = linearCollection_decrement_numElement(collection_result);
FinFuncion

Funcion collection_result <- linearCollection_RemoveFirst(struct_Collection)
	Definir collection_result Como Texto;
	Definir index_DataArea, index_MetaData, property_ Como Numero;
	Definir length_separator, index_EndMetaData, element_Length Como Numero;
	index_EndMetaData = linearCollection_getIndex_EndMetaData(struct_Collection);
	index_DataArea = increment(collection_getIndex_DataArea(struct_Collection));// (C B A/, 1, 2, 3)
	property_ = string_lastIndexOf(struct_Collection, symbol_Separator());
	element_Length = string_ToNum(string_substring(struct_Collection, increment(property_), index_EndMetaData));
	collection_result = string_Delete(struct_Collection, property_, index_EndMetaData);
	collection_result = string_Delete(collection_result, index_DataArea, increment_step(index_DataArea, element_Length));
	collection_result = linearCollection_decrement_numElement(collection_result);
FinFuncion

Funcion collection_result <- linearCollection_RemoveLast(struct_Collection)
	Definir collection_result Como Texto;
	Definir index_DataArea, index_MetaData, property_ Como Numero;
	Definir length_separator, index_EndMetaData, element_Length Como Numero;
	index_EndMetaData = linearCollection_getIndex_EndMetaData(struct_Collection);
	length_separator = string_Length(symbol_Separator());
	index_MetaData = increment_step(collection_getIndex_MetaDataArea(struct_Collection), length_separator);
	property_ = string_indexOf_fromIndex(struct_Collection, symbol_Separator(), increment(index_MetaData));
	property_ = if_else(property_ > 0, property_, index_EndMetaData, TYPE_INT());
	element_Length = string_ToNum(string_substring(struct_Collection, increment(index_MetaData), property_));
	collection_result = string_Delete(struct_Collection, index_MetaData, property_);
	index_MetaData = decrement_step(index_MetaData, length_separator);
	collection_result = string_Delete(collection_result, decrement_step(index_MetaData, element_Length), index_MetaData);
	collection_result = linearCollection_decrement_numElement(collection_result);
FinFuncion
//----[ INCREMENT ]-----------------------------------------------------------------<#>
Funcion collection_result <- linearCollection_increment_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, 1);
FinFuncion

Funcion collection_result <- linearCollection_decrement_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, -1);
FinFuncion

Funcion collection_result <- linearCollection_update_numElement(struct_List, num_sum)
	Definir collection_result, num_elements_str Como Texto;
	Definir index_ExtraData Como Numero;
	index_ExtraData = increment(string_lastIndexOf(struct_List, symbol_ExtraData()));
	num_elements_str = string_substring_from(struct_List, index_ExtraData);
	Si string_isEquals(struct_List, num_elements_str) Entonces
		collection_result = struct_List;
		error_message_Function("linearCollection_update_numElement", "unrecognized data structure ( no exist symbol_ExtraData() or num_Size)");
	SiNo
		collection_result = string_append(string_substring(struct_List, 0, index_ExtraData), value_modify_StringNumber(num_elements_str, num_sum));
	FinSi
FinFuncion
//----[ GETTERS ]---------------------------------------------------------------------<#>
Funcion element_Result <- linearCollection_getElement(struct_Collection, index_element)
	Definir TYPE Como Texto;
	TYPE = linearCollection_GetType(struct_Collection);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = linearCollection_getElement_toType(struct_Collection, index_element, TYPE);
FinFuncion

Funcion element_Result <- linearCollection_getFirst(struct_Collection)
	Definir TYPE, element_String Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Collection);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = linearCollection_getFirst_toType(struct_Collection, TYPE);
FinFuncion

Funcion element_Result <- linearCollection_getLast(struct_Collection)
	Definir TYPE, element_String Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Collection);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = linearCollection_getLast_toType(struct_Collection, TYPE);
FinFuncion
//....[ get_data_type ].................................................................
Funcion element_Result <- linearCollection_getElement_toType(struct_Collection, index_element, TYPE)
	Definir element_String Como Texto;
	element_String = linearCollection_getElement_ToString(struct_Collection, index_element);
	element_String = value_StringCatch_ofType(element_String, TYPE, "linearCollection_getElement_toType", "index_element no is valid ");
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = value_Parser_StringToType(element_String, TYPE);
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
	element_Result = value_Parser_StringToType(element_String, TYPE);
FinFuncion

Funcion element_Result <- linearCollection_getFirst_toType(struct_Collection, TYPE)
	Definir element_String Como Texto;
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_String = linearCollection_getFirst_ToString(struct_Collection);
	element_String = value_StringCatch_ofType(element_String, TYPE, "linearCollection_getFirst_toType(struct, TYPE)", "struct is Empty");
	element_Result = value_Parser_StringToType(element_String, TYPE);
FinFuncion
//....[ get_data_string ]...............................................................
Funcion element_String <- linearCollection_getElement_toString(struct_linearCollection, index_element)
	Definir element_String, data_sumation, string_sumation, data_soup Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData Como Numero;
	Si linearCollection_Index_IsValid(struct_linearCollection, index_element) Entonces
		index_Data 		  = increment(string_indexOf(struct_linearCollection, symbol_DataArea()));
		index_ExtraData   = string_LastindexOf(struct_linearCollection, symbol_ExtraData());
		index_MetaData	  = string_LastindexOf_fromIndex(struct_linearCollection, symbol_MetaData(), index_ExtraData);
		data_soup 		  = string_substring(struct_linearCollection, index_Data, index_MetaData);
		string_sumation   = string_substring(struct_linearCollection, increment(index_MetaData), index_ExtraData);
		element_String 	  = __private_LinearCollection_getDataString(data_soup, string_sumation, index_element);
	SiNo
		error_message_Function("linearCollection_getElement_toString", string_append("index_element no is valid Size:", num_ToString(linearCollection_GetSize(struct_linearCollection))));
		element_String = string_Null();
	FinSi
FinFuncion

Funcion element_String <- linearCollection_getFirst_ToString(struct_Collection)
	Definir element_String Como Texto;
	Definir index_DataArea, property_, Index_EndMetaData, element_Length Como Numero;
	Si linearCollection_isEmpty(struct_Collection) Entonces
		error_message_Function("linearCollection_getFirst_ToString", "struct is Empty");
		element_String = string_Null();
	SiNo
		Index_EndMetaData = linearCollection_getIndex_EndMetaData(struct_Collection);
		index_DataArea = increment(collection_getIndex_DataArea(struct_Collection));// (C B A/, 1, 2, 3)
		property_ = string_lastIndexOf(struct_Collection, symbol_Separator());
		element_Length = string_ToNum(string_substring(struct_Collection, increment(property_), index_EndMetaData));
		element_String = string_substring(struct_Collection, index_DataArea, increment_step(index_DataArea, element_Length));
	FinSi
FinFuncion

Funcion element_String <- linearCollection_getLast_ToString(struct_Collection)
	Definir element_String Como Texto;
	Definir index_DataArea, index_MetaData, property_ Como Numero;
	Definir length_separator, Index_EndMetaData , element_Length Como Numero;
	Si linearCollection_isEmpty(struct_Collection) Entonces
		error_message_Function("linearCollection_getLast_ToString", "struct is Empty");
		element_String = string_Null();
	SiNo
		Index_EndMetaData = linearCollection_getIndex_EndMetaData(struct_Collection);
		length_separator = string_Length(symbol_Separator());
		index_MetaData = increment_step(collection_getIndex_MetaDataArea(struct_Collection), length_separator);
		property_ = string_indexOf_fromIndex(struct_Collection, symbol_Separator(), increment(index_MetaData));
		property_ = if_else(property_ > 0, property_, Index_EndMetaData, TYPE_INT());
		element_Length = string_ToNum(string_substring(struct_Collection, increment(index_MetaData), property_));
		index_MetaData = decrement_step(index_MetaData, length_separator);
		element_String = string_substring(struct_Collection, decrement_step(index_MetaData, element_Length), index_MetaData);
	FinSi
FinFuncion

Funcion value_string <- __private_LinearCollection_getDataString(data_soup, string_sumation, index_getter)
	Definir value_string, num_carry, Char_Current Como Texto;
	Definir length_Sumation, i, index_end, index_start, length_data_value Como Numero;
	Definir IsNumber Como Logico;
	num_carry 	    = "";
	index_end		= 0;	
	length_Sumation = string_Length(string_sumation);
	i				= length_Sumation;
	Mientras i >= 0 & index_getter >= 0 Hacer
		Char_Current = char_At(string_sumation, i);
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(Char_Current, num_carry);
		FinSi
		
		Si (!IsNumber & !string_isEmpty(num_carry)) | Num_isEquals(i, 0) Entonces
			length_data_value = string_ToNum(num_carry);
			index_end         = increment_step(index_end, length_data_value);
			index_getter      = decrement(index_getter);
			num_carry = "";
		FinSi
		i = decrement(i);
	FinMientras
	
	Si index_getter >= 0 Entonces
		error_message_Function("__private_LinearCollection_getDataString", "error index no valid");
		value_string = string_Null();
	SiNo
		index_start  = decrement_step(index_end, length_data_value);
		value_string = string_substring(data_soup, index_start, index_end);
	FinSi
FinFuncion

Funcion separated_String <- __private_LinearCollection_GetDataSeparatedString(data_soup, string_sumation, separator)
	Definir separated_String, num_carry, Char_Current, data_Current Como Texto;
	Definir i, num_range, length_data_value Como Numero;
	Definir length_Sumation, num_range_dec Como Numero;
	Definir IsNumber Como Logico;
	num_carry 	     = "";
	separated_String = "";
	num_range		 = string_Length(data_soup);	
	num_range_dec = 0;
	i				 = 0;
	length_Sumation  = string_Length(string_sumation);
	Mientras i <= length_Sumation Hacer
		Char_Current = char_At(string_sumation, i);
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(num_carry, Char_Current);
		FinSi
		Si !IsNumber & !string_isEmpty(num_carry) | Num_isEquals(i, length_Sumation) Entonces
			length_data_value   = string_ToNum(num_carry);
			num_range_dec = decrement_step(num_range, length_data_value);
			data_Current     = string_substring(data_soup, num_range_dec, num_range);
			separated_String = string_append(separated_String, data_Current);
			separated_String = string_append(separated_String, separator);
			num_carry       = "";// clear
			num_range       = num_range_dec;
		FinSi
		i = increment(i);
	FinMientras
FinFuncion
//....[ get_utilities ].................................................................
Funcion type_result <- linearCollection_GetType(struct_Collection)
	Definir type_result Como Texto;
	type_result = collection_getContent_TypesArea(struct_Collection);
FinFuncion

Funcion Size_int <- linearCollection_GetSize(struct_Collection)
	Definir Size_int Como Numero;
	Size_int = string_ToNum(string_substring_from(struct_Collection, increment(linearCollection_getIndex_EndMetaData(struct_Collection))));
FinFuncion

Funcion innerIndex <- LinearCollection_GetValue_InnerIndex(linearCollection, data_string)
	Definir separated_String, string_sumation, data_soup Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData Como Numero;
	Definir innerIndex, collection_size Como Numero;
	index_Data = increment(string_indexOf(linearCollection, symbol_DataArea()));
	index_ExtraData = string_LastindexOf(linearCollection, symbol_ExtraData());
	index_MetaData = string_LastindexOf_fromIndex(linearCollection, symbol_MetaData(), index_ExtraData);
	data_soup = string_substring(linearCollection, index_Data, index_MetaData);
	string_sumation = string_substring(linearCollection, increment(index_MetaData), index_ExtraData);
	collection_size = linearCollection_GetSize(linearCollection);
	innerIndex = __private_CollectionSetter_GetID_DataString(data_soup, string_sumation, collection_size, data_string);
	si !value_isNull(innerIndex, TYPE_INT()) Entonces
		innerIndex = decrement(collection_size) - innerIndex;
	FinSi
FinFuncion

Funcion separated_String <- LinearCollection_GetValues_ToSeparatedString(linearCollection, separator)
	Definir separated_String, string_sumation, data_soup Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData Como Numero;
	index_Data = increment(string_indexOf(linearCollection, symbol_DataArea()));
	index_ExtraData = string_LastindexOf(linearCollection, symbol_ExtraData());
	index_MetaData = string_LastindexOf_fromIndex(linearCollection, symbol_MetaData(), index_ExtraData);
	data_soup = string_substring(linearCollection, index_Data, index_MetaData);
	string_sumation= string_substring(linearCollection, increment(index_MetaData), index_ExtraData);
	separated_String = __private_LinearCollection_GetDataSeparatedString(data_soup, string_sumation, separator);
FinFuncion
//----[ SETTERS ]---------------------------------------------------------------------<#>
Funcion collection_result <- linearCollection_SetElement(struct_Collection, index_element, new_value)
	Definir collection_result, TYPE Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Collection);
	collection_result = linearCollection_SetElement_ToType(struct_Collection, index_element, new_value, TYPE);
FinFuncion

Funcion collection_result <- linearCollection_SetElement_ToType(struct_Collection, index_element, new_value, TYPE)
	Definir collection_result, value_string Como Texto;
	value_string = value_Parser_TypeToString(new_value, TYPE);
	collection_result = linearCollection_SetElement_ToString(struct_Collection, index_element, value_string);
FinFuncion

Funcion collection_result <- linearCollection_SetElement_ToString(struct_Collection, index_element, value_string)
	Definir collection_result, element_String Como Texto;
	collection_result = __private_LinearCollection_ModifyElement(struct_Collection, index_element, value_string);
FinFuncion
//----[ BOOLEANS ]---------------------------------------------------------------------<#>
Funcion struct_IsEmpty <- linearCollection_isEmpty(struct_Collection)
	Definir struct_IsEmpty Como Logico;
	struct_IsEmpty = (linearCollection_GetSize(struct_Collection) < 1);
FinFuncion

Funcion index_isValid <- linearCollection_Index_IsValid(struct_Collection, index_element)
	Definir index_isValid Como Logico;
	Definir struct_Size Como Numero;
	struct_Size = linearCollection_GetSize(struct_Collection);
	index_isValid = (index_element >= 0 & index_element < struct_Size );
FinFuncion
//----[ PRINTER_lINEAR ]--------------------------------------------------------------<#>
Funcion linearCollection_println(linearCollection)
	__private_linearCollection_println(linearCollection, true());
FinFuncion

Funcion linearCollection_print(linearCollection)
	__private_linearCollection_println(linearCollection, false());
FinFuncion

Funcion __private_linearCollection_println(linearCollection, isNewLine)
	Definir string_sumation, data_soup Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData Como Numero;
	index_Data = increment(string_indexOf(linearCollection, symbol_DataArea()));
	index_ExtraData = string_LastindexOf(linearCollection, symbol_ExtraData());
	index_MetaData = string_LastindexOf_fromIndex(linearCollection, symbol_MetaData(), index_ExtraData);
	data_soup = string_substring(linearCollection, index_Data, index_MetaData);
	string_sumation= string_substring(linearCollection, increment(index_MetaData), index_ExtraData);
	__private_Collection_Printer(data_soup, string_sumation, isNewLine);
FinFuncion
//....[ utilities ].....................................................................
Funcion End_index <- linearCollection_getIndex_EndMetaData(struct_Collection)
	Definir End_index Como Numero;
	End_index = string_lastIndexOf(struct_Collection, symbol_ExtraData());
FinFuncion
//----[ MODIFY_ELEMENT_INDEX ]-------------------------------------------------------<#>
Funcion collection_result <- __private_LinearCollection_ModifyElement(struct_linearCollection, index_modify, value_string)
	Definir collection_result, data_sumation, string_sumation, data_soup Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData Como Numero;
	index_Data 		  = increment(string_indexOf(struct_linearCollection, symbol_DataArea()));
	index_ExtraData   = string_LastindexOf(struct_linearCollection, symbol_ExtraData());
	index_MetaData	  = string_LastindexOf_fromIndex(struct_linearCollection, symbol_MetaData(), index_ExtraData);
	data_soup 		  = string_substring(struct_linearCollection, index_Data, index_MetaData);
	string_sumation   = string_substring(struct_linearCollection, increment(index_MetaData), index_ExtraData);
	data_sumation 	  = __private_LinearCollection_modify_dataSumation(data_soup, string_sumation, index_modify, value_string);
	collection_result = string_Delete(struct_linearCollection, index_Data, index_ExtraData);
	collection_result = string_insert(collection_result, data_sumation, index_Data);
FinFuncion

Funcion data_sumation <- __private_LinearCollection_modify_dataSumation(data_soup, string_sumation, index_modify, value_string)
	Definir data_sumation, num_carry, Char_Current, line_Current Como Texto;
	Definir length_Sumation, i, index_end, index_start, length_data_value Como Numero;
	Definir index_sum_start, index_sum_end, old_value_length, new_value_length Como Numero;
	Definir IsNumber Como Logico;
	num_carry 	     = "";
	index_end		 = 0;	
	length_Sumation  = string_Length(string_sumation);
	i				 = length_Sumation;
	Mientras i >= 0 & index_modify >= 0 Hacer
		Char_Current = char_At(string_sumation, i);
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(Char_Current, num_carry);
		FinSi
		
		Si !IsNumber & !string_isEmpty(num_carry) | Num_isEquals(i, 0) Entonces
			length_data_value = string_ToNum(num_carry);
			index_end         = increment_step(index_end, length_data_value);
			index_modify 	  = decrement(index_modify);
			old_value_length  = string_Length(num_carry);
			num_carry         = "";// clear
		FinSi
		i = decrement(i);
	FinMientras
	
	si index_modify >= 0 Entonces
		error_message_Function("__private_LinearCollection_modify_dataSumation(data, sumation, index, val_string)", "error index no valid");
		data_sumation = string_append(data_soup, string_sumation);
	SiNo
		//data_soup, string_sumation, old_value_length, i, index_end, length_data_value, value_string
		index_sum_start = increment(i);
		index_sum_end = increment_step(index_sum_start, increment(old_value_length));
		index_start = decrement_step(index_end,  length_data_value);
		string_sumation = string_Delete(string_sumation, index_sum_start, index_sum_end);
		data_sumation = string_Delete(data_soup, index_start, index_end);
		si !string_isEquals(value_String, string_Null()) Entonces
			new_value_length = string_Length(value_string);
			string_sumation = string_insert(string_sumation, string_append(symbol_Separator(), Num_toString(new_value_length)), index_sum_start);
			data_sumation = string_insert(data_sumation, value_string, index_start);
		FinSi
		data_sumation = string_append_withSeparator(data_sumation, string_sumation, symbol_MetaData());
	FinSi
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=========================================
Funcion result_string <- symbol_ExtraData
	Definir result_string Como Texto;
	result_string = "";//0003
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
///$$$$$[ DEQUE ]$$$$$$$$$$$$$$$$$$$$[  -+2_2 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion new_Deque <- util_Deque_new(TYPE)
	Definir new_Deque Como Texto;
	new_Deque = linearCollection_newLinearCollection( STRUCT_TYPE_DEQUE(), TYPE);
FinFuncion

Funcion Size_int <- util_Deque_Size(struct_Deque)
	Definir Size_int Como Numero;
	Size_int = linearCollection_GetSize(struct_Deque);
FinFuncion

Funcion deque_Result <- util_Deque_AddFirst(struct_Deque, element)
	Definir deque_Result Como Texto;
	deque_Result = linearCollection_addFirst(struct_Deque, element);
FinFuncion

Funcion deque_Result <- util_Deque_AddLast(struct_Deque, element)
	Definir deque_Result Como Texto;
	deque_Result = linearCollection_addLast(struct_Deque, element);
FinFuncion

Funcion collection_result <- util_Deque_RemoveFirst(struct_Deque)
	Definir collection_result Como Texto;
	collection_result = linearCollection_RemoveFirst(struct_Deque);
FinFuncion

Funcion collection_result <- util_Deque_RemoveLast(struct_Deque)
	Definir collection_result Como Texto;
	collection_result = linearCollection_RemoveLast(struct_Deque);
FinFuncion

Funcion util_Deque_println(struct_Deque)
	linearCollection_println(struct_Deque);
FinFuncion

Funcion element_Result <- util_Deque_getFirst(struct_Deque)
	Definir TYPE Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Deque);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = linearCollection_getFirst_toType(struct_Deque, TYPE);
FinFuncion

Funcion element_Result <- util_Deque_getLast(struct_Deque)
	Definir TYPE Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Deque);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = linearCollection_getLast_toType(struct_Deque, TYPE);
FinFuncion
///$$$$$[ QUEUE ]$$$$$$$$$$$$$$$$$$$$[  -+2_3 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion new_Queue <- util_Queue_new(TYPE)
	Definir new_Queue Como Texto;
	new_Queue = linearCollection_newLinearCollection( STRUCT_TYPE_QUEUE(), TYPE);
FinFuncion

Funcion Size_int <- util_Queue_Size(struct_Queue)
	Definir Size_int Como Numero;
	Size_int = linearCollection_GetSize(struct_Queue);
FinFuncion

Funcion queue_Result <- util_Queue_Offer(struct_Queue, element)
	Definir queue_Result Como Texto;
	queue_Result = linearCollection_addLast(struct_Queue, element);
FinFuncion

Funcion util_Queue_println(struct_Queue)
	linearCollection_println(struct_Queue);
FinFuncion

Funcion element_Result <- util_Queue_Peek(struct_Queue)
	Definir TYPE Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Queue);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = linearCollection_getFirst_toType(struct_Deque, TYPE);
FinFuncion

Funcion collection_result <- util_Queue_RemoveFirst(struct_Queue)
	Definir collection_result Como Texto;
	collection_result = linearCollection_RemoveFirst(struct_Queue);
FinFuncion

Funcion element_Result <- util_Queue_Poll(struct_Queue Por Referencia)
	Definir TYPE, element_String Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Queue);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = util_Queue_Peek(struct_Queue);
	// (In older verSions:) En verSiones antiguas usar por separado util_Queue_Peek() & util_Queue_RemoveFirst() para actualizar
	struct_Queue = util_Queue_RemoveFirst(struct_Queue);
FinFuncion
///$$$$$[ STACK ]$$$$$$$$$$$$$$$$$$$$[  -+2_4 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion new_Stack <- util_Stack_new(TYPE)
	Definir new_Stack Como Texto;
	new_Stack = linearCollection_newLinearCollection(STRUCT_TYPE_STACK(), TYPE);
FinFuncion

Funcion Size_int <- util_Stack_Size(struct_Stack)
	Definir Size_int Como Numero;
	Size_int = linearCollection_GetSize(struct_Stack);
FinFuncion

Funcion stack_Result <- util_Stack_push(struct_Stack, element)
	Definir stack_Result Como Texto;
	stack_Result = linearCollection_addLast(struct_Stack, element);
FinFuncion

Funcion util_Stack_println(struct_Stack)
	linearCollection_println(struct_Stack);
FinFuncion

Funcion element_Result <- util_Stack_Top(struct_Stack)
	Definir TYPE Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Stack);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = linearCollection_getLast_toType(struct_Stack, TYPE);
FinFuncion

Funcion stack_Result <- util_Stack_removeLast(struct_Stack)
	Definir stack_Result Como Texto;
	stack_Result = linearCollection_RemoveLast(struct_Stack);
FinFuncion

Funcion element_Result <- util_Stack_Pop(struct_Stack Por Referencia)
	Definir TYPE, element_String Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Stack);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = util_Stack_Top(struct_Stack);
	// (In older verSions:) En verSiones antiguas usar por separado util_Stack_Top() & util_Stack_removeLast() para actualizar
	struct_Stack = util_Stack_removeLast(struct_Stack);
FinFuncion
///$$$$$[ LIST ]$$$$$$$$$$$$$$$$$$$$$[  -+2_5 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion new_list <- util_List_new(TYPE)
	Definir new_list Como Texto;
	new_list = linearCollection_newLinearCollection(STRUCT_TYPE_LIST(), TYPE);
FinFuncion

Funcion list_result <- util_List_add(struct_list, element)
	Definir list_result Como Texto;
	list_result = linearCollection_addLast(struct_List, element);
FinFuncion

Funcion Size_int <- util_List_Size(struct_List)
	Definir Size_int Como Numero;
	Size_int = linearCollection_GetSize(struct_List);
FinFuncion

Funcion util_List_println(struct_List)
	linearCollection_println(struct_List);
FinFuncion

Funcion element_Result <- util_List_getElement(struct_list, index_element)
	Definir TYPE Como Texto;
	TYPE = collection_getContent_TypesArea(struct_List);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = linearCollection_getElement_toType(struct_List, index_element, TYPE);
FinFuncion

Funcion element_Result <- util_List_RemoveElement(struct_list, index_element)
	Definir element_Result Como Texto;
	element_Result = linearCollection_RemoveElement(struct_List, index_element);
FinFuncion

Funcion list_Result <- util_List_SetElement(struct_list, index_element, new_Value)
	Definir list_Result Como Texto;
	list_Result = linearCollection_SetElement(struct_List, index_element, new_Value);
FinFuncion
///$$$$$[ COLLECTION_SETTER ]$$$$$$$$[  -+2_6 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion new_Setter <- collectionSetter_New(type_Struct, TYPE)
	Definir new_Setter, SetterArea, setterStructure Como Texto;
	SetterArea = "";
	setterArea = string_append(SetterArea, type_Struct);//<T>Type<id>
	setterArea = string_append(SetterArea, symbol_TypeKey());//<T>Type<id>
	setterArea = string_append(SetterArea, TYPE);
	setterArea = string_append(SetterArea, symbol_idArea());//<id>index_length<K>
	setterArea = string_append(SetterArea, symbol_KeyArea());//<K>data<E>
	setterArea = string_append(SetterArea, symbol_EndKeyArea());//<K>data<E>
	setterArea = string_append(SetterArea, symbol_ExtraData());
	new_Setter 		= string_append(SetterArea, "0");
FinFuncion
//----[ ADD ]------------------------------------------------------------------------<#>
Funcion result_Set <- collectionSetter_AddKey_Forced(collection_setter, key)
	Definir result_Set, length_key, lower_key Como Texto;
	Definir index_KeyArea, index_idArea Como Numero;
	result_Set     = collection_setter;
	lower_key      = string_ToLowerCase(key);
	length_key     = string_append(symbol_Separator(), num_ToString(string_Length(key)));
	index_idArea   = increment(string_indexOf(collection_setter, symbol_idArea()));
	index_KeyArea  = string_indexOf_fromIndex(result_Set, symbol_KeyArea(), index_idArea);
	result_Set     = string_insert(result_Set, lower_key, increment(index_KeyArea));
	result_Set     = string_insert(result_Set, length_key, index_idArea);
FinFuncion

Funcion result_Set   <- collectionSetter_AddKey_ByString(collection_setter, key_string)
	Definir key_id, index_idArea, index_KeyArea, index_EndKeyArea, length_key Como Numero;
	Definir keys_collection, data_soup, string_sumation Como Texto;
	Definir result_Set, lower_key_string, data_sumation, lower_key  Como Texto;
	result_Set     = collection_setter;
	lower_key      = string_ToLowerCase(key_string);
	index_idArea   = increment(string_indexOf(collection_setter, symbol_idArea()));
	index_KeyArea  = string_indexOf_fromIndex(result_Set, symbol_KeyArea(), index_idArea);
	index_EndKeyArea 	= string_indexOf_fromIndex(collection_setter, symbol_EndKeyArea(), index_KeyArea);
	string_sumation     = string_substring(collection_setter, index_idArea, index_KeyArea);
	data_soup           = string_substring(collection_setter, increment(index_KeyArea), index_EndKeyArea);
	data_sumation = __private_CollectionSetter_AddKey_inDataSumation(data_soup, string_sumation, lower_key);
	result_Set = string_Delete(result_Set, index_idArea, index_EndKeyArea);
	result_Set = string_insert(result_Set, data_sumation, index_idArea);
FinFuncion

Funcion result_Set <- collectionSetter_AddKey_ByType(collection_setter, key, TYPE)
	Definir result_Set, key_string Como Texto;
	key_string = value_Parser_TypeToString(key, TYPE);
	result_Set = collectionSetter_AddKey_ByString(collection_setter, key_string);
FinFuncion

Funcion result_Set <- collectionSetter_AddKey(collection_setter, key)
	Definir result_Set, TYPE Como Texto;
	TYPE = collectionSetter_GetTypeKeys(collection_setter);
	result_Set = collectionSetter_AddKey_ByType(collection_setter, key, TYPE);
FinFuncion

Funcion KeyAreaUpdated <- __private_CollectionSetter_AddKey_inDataSumation(dataSoup, keySummation, lowerKey)
	Definir KeyAreaUpdated, numberAccumulator, charCurrent, dataCurrent Como Texto;
	Definir i, soupRange, innerDataLength Como Numero;
	Definir summationLength, newKeyLength Como Numero;
	Definir isNumber, keyFound Como Logico;
	numberAccumulator = "";
	soupRange = 0;
	i = 0;
	newKeyLength = string_Length(lowerKey);
	summationLength = string_Length(keySummation);
	keyFound = false;
	Mientras i <= summationLength & !keyFound Hacer
		charCurrent = char_At(keySummation, i);
		isNumber = char_isNumber(charCurrent);
		Si isNumber Entonces
			numberAccumulator = string_append(numberAccumulator, charCurrent);
		FinSi
		Si (!isNumber & !string_isEmpty(numberAccumulator)) | Num_isEquals(i, summationLength) Entonces
			innerDataLength = string_ToNum(numberAccumulator);
			Si Num_isEquals(innerDataLength, newKeyLength) Entonces
				dataCurrent = string_substring(dataSoup, soupRange, increment_step(soupRange, innerDataLength));
				keyFound = string_isEquals(lowerKey, dataCurrent);
			FinSi
			soupRange = increment_step(soupRange, innerDataLength);
			numberAccumulator = "";
		FinSi
		i = increment(i);
	FinMientras
	Si !keyFound Entonces
		dataSoup = string_append(lowerKey, dataSoup);
		keySummation = string_append(string_append(symbol_Separator(), Num_toString(newKeyLength)), keySummation);
	FinSi
	KeyAreaUpdated = string_append_withSeparator(keySummation, dataSoup, symbol_KeyArea());
FinFuncion
//----[ REMOVE ]---------------------------------------------------------------------<#>
Funcion result_Set <- collectionSetter_RemoveKey(collection_setter, key)
	Definir result_Set, TYPE Como Texto;
	TYPE = collectionSetter_GetTypeKeys(collection_setter);
	result_Set = collectionSetter_RemovedKey_ByType(collection_setter, key, TYPE);
FinFuncion

Funcion result_Set <- collectionSetter_RemovedKey_ByType(collection_setter, key, TYPE)
	Definir result_Set, key_string Como Texto;
	key_string = value_Parser_TypeToString(key, TYPE);
	result_Set = collectionSetter_RemoveKey_ByString(collection_setter, key_string);
FinFuncion

Funcion result_Set <- collectionSetter_RemoveKey_ByString(collection_setter, key)
	Definir result_Set Como Texto;
    Definir index_IdArea, index_KeyArea, index_TargetID, count_size Como Numero;
    index_IdArea   = string_indexOf(collection_setter, symbol_idArea());
    count_size     = collectionSetter_getSizeKeys(collection_setter);
	result_Set = collection_setter;
    si count_size > 0 Entonces 
        index_TargetID = __private_CollectionSetter_SearchIdKey(collection_setter, key, count_size);
        si !value_isNull(index_TargetID, TYPE_INT())Entonces
            result_Set = __private_CollectionSetter_RemoveKeyIndexed(collection_setter, key, index_idArea,  index_TargetID, count_size);
			result_Set = linearCollection_decrement_numElement(result_Set);
        FinSi
    FinSi
FinFuncion

Funcion result_Set <- collectionSetter_RemoveKey_Discreet(collection_setter, key)
    Definir result_Set Como Texto;
	result_set = collectionSetter_RemoveKey_ByString(collection_setter, key);
	result_Set = linearCollection_increment_numElement(result_Set);
FinFuncion

Funcion result_Set <- __private_CollectionSetter_RemoveKeyIndexed(collection_setter, key, index_Id,  index_TargetID, count_size)
	Definir result_Set, string_sumation Como Texto;
    Definir pos_InIdArea, offset_InKeyArea, pos_KeyPhysic Como Numero;
    Definir len_Key, len_IdEntry, index_KeyArea Como Numero;
	index_KeyArea    = string_indexOf_fromIndex(collection_setter, symbol_KeyArea(), index_Id);
    pos_InIdArea     = collection_getIndex_FromNumElement_Separator(collection_setter, decrement_step(decrement(count_size), index_TargetID), symbol_Separator());
	string_sumation  = string_substring(collection_setter, index_Id, pos_InIdArea);
    offset_InKeyArea = math_Summation_ToFromSeparatedString(string_sumation, symbol_Separator());
    pos_KeyPhysic    = increment_step(increment(index_KeyArea), offset_InKeyArea);
    len_Key          = string_Length(key);
    len_IdEntry      = increment_step(string_Length(num_ToString(len_Key)), string_Length(symbol_Separator()));
    result_Set       = string_Delete(collection_setter, pos_KeyPhysic, increment_step(pos_KeyPhysic, len_Key));
    result_Set       = string_Delete(result_Set, pos_InIdArea, increment_step(pos_InIdArea, len_IdEntry));
FinFuncion
//----[ GETTERS ]---------------------------------------------------------------------<#>
Funcion innerIndex <- collectionSetter_GetInnerId(collection_setter, key)
	Definir innerIndex Como Numero;
	Definir key_Type Como Texto;
	key_Type = collectionSetter_GetTypeKeys(collection_setter);
	innerIndex = collectionSetter_GetInnerId_ByType(collection_setter, key, key_Type);
FinFuncion

Funcion innerIndex <- collectionSetter_GetInnerId_ByType(collection_setter, key, type)
	Definir innerIndex Como Numero;
	Definir key_string Como Texto;
	key_string = value_Parser_TypeToString(key, type);
	innerIndex = collectionSetter_GetInnerId_ByString(collection_setter, key_string);
FinFuncion

Funcion innerIndex <- collectionSetter_GetInnerId_ByString(collection_setter, key)
    Definir innerIndex Como Numero;
    Definir index_KeyArea, count_size Como Numero;
    innerIndex     = number_Null();
    count_size     = collectionSetter_getSizeKeys(collection_setter);
    Si count_size > 0 Entonces
        innerIndex    = __private_CollectionSetter_SearchIdKey(collection_setter, key, count_size);
    FinSi
FinFuncion

Funcion Type_keys <- collectionSetter_GetTypeKeys(collection_setter)
	Definir Type_keys Como Texto;
	Definir index_TypeKey, index_idArea Como Numero;
	index_TypeKey  = increment(string_indexOf(collection_setter, symbol_TypeKey()));
	index_idArea   = string_indexOf_fromIndex(collection_setter, symbol_idArea(), index_TypeKey);
	Type_keys      = string_substring(collection_setter, index_TypeKey, index_idArea);
FinFuncion

Funcion num_Keys <- collectionSetter_getSizeKeys(collection_setter)
	Definir num_Keys Como Numero;
	num_Keys       = linearCollection_GetSize(collection_setter);
FinFuncion
//----[ EXIST ]---------------------------------------------------------------------<#>
Funcion result_Set <- collectionSetter_Exist(collection_setter, key)
	Definir result_Set Como Logico;
	result_Set = collectionSetter_GetInnerId(collection_setter, key) >= 0;
FinFuncion

Funcion result_Set <- collectionSetter_Exist_ByString(collection_setter, key)
	Definir result_Set Como Logico;
	result_Set = collectionSetter_GetInnerId_ByString(collection_setter, key) >= 0;
FinFuncion
//----[ SEARCH ]---------------------------------------------------------------------<#>
Funcion key_id <- __private_CollectionSetter_SearchIdKey(collection_setter, key_string, collection_size)
	Definir key_id, index_idArea, index_KeyArea, index_EndKeyArea Como Numero;
	Definir keys_collection, data_soup, string_sumation Como Texto;
	si collection_size >= 1 Entonces
		index_idArea        = increment(string_indexOf(collection_setter, symbol_idArea()));
		index_KeyArea       = string_indexOf_fromIndex(collection_setter, symbol_KeyArea(), index_idArea);
		index_EndKeyArea 	= string_indexOf_fromIndex(collection_setter, symbol_EndKeyArea(), index_KeyArea);
		string_sumation     = string_substring(collection_setter, index_idArea, index_KeyArea);
		data_soup           = string_substring(collection_setter, increment(index_KeyArea), index_EndKeyArea);
		key_id				= __private_CollectionSetter_GetID_DataString(data_soup, string_sumation, collection_size, string_ToLowerCase(key_string));
	SiNo
		key_id = number_Null();
	FinSi
FinFuncion

Funcion inner_IdData <- __private_CollectionSetter_GetID_DataString(data_soup, string_sumation, max_NumComparations, data_string)
	Definir separated_String, num_carry, Char_Current, data_Current Como Texto;
	Definir i, num_range, length_innerData, length_data Como Numero;
	Definir inner_IdData, length_Sumation, count_Comparations  Como Numero;
	Definir IsNumber, BreakLoop_Data Como Logico;
	num_carry 	     = "";
	separated_String = "";
	num_range		 = 0;	
	i				 = 0;
	count_Comparations = 0;
	length_Sumation 	 = string_Length(string_sumation);
	length_data = string_Length(data_string);
	BreakLoop_Data = false();
	inner_IdData = number_Null();
	Mientras i <= length_Sumation & !BreakLoop_Data & max_NumComparations >= count_Comparations Hacer
		Char_Current = char_At(string_sumation, i);
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(num_carry, Char_Current);
		FinSi
		Si !IsNumber & !string_isEmpty(num_carry) | Num_isEquals(i, length_Sumation) Entonces
			length_innerData    = string_ToNum(num_carry);
			si Num_isEquals(length_innerData, length_data)  Entonces
				data_Current     = string_substring(data_soup, num_range, increment_step(num_range, length_innerData));
				BreakLoop_Data   =  string_isEquals(data_string, data_Current);
			FinSi
			num_carry       = "";// clear
			count_Comparations = increment(count_Comparations);
			num_range       = increment_step(num_range, length_innerData);
		FinSi
		si BreakLoop_Data Entonces
			inner_IdData = max_NumComparations - count_Comparations;
		FinSi
		i = increment(i);
	FinMientras
FinFuncion
//----[ UNIONS ]---------------------------------------------------------------------<#>
Funcion result_Set <- collectionSetter_AddAll(collection_setter, collection_setter_Match)
	Definir result_Set Como Texto;
	result_Set = __private_collectionSetter_ModifyInnerData(collection_setter, collection_setter_Match, false());
FinFuncion

Funcion result_Set <- collectionSetter_RemoveAll(collection_setter, collection_setter_Match)
	Definir result_Set Como Texto;
	result_Set = __private_collectionSetter_ModifyInnerData(collection_setter, collection_setter_Match, true());
FinFuncion

Funcion keys_collection <- CollectionSetter_GetKeys_ToSeparatedString(collection_setter, separator)
    Definir keys_collection, data_soup, string_sumation Como Texto;
    Definir count_size, index_idArea, index_KeyArea, index_EndKeyArea Como Numero;
    index_idArea        = increment(string_indexOf(collection_setter, symbol_idArea()));
    index_KeyArea       = string_indexOf_fromIndex(collection_setter, symbol_KeyArea(), index_idArea);
    index_EndKeyArea	= string_indexOf_fromIndex(collection_setter, symbol_EndKeyArea(), index_KeyArea);
    string_sumation     = string_substring(collection_setter, index_idArea, index_KeyArea);
	string_sumation   	= string_ReverseSeparatedValues(string_sumation, symbol_Separator());
    data_soup            = string_substring(collection_setter, increment(index_KeyArea), index_EndKeyArea);
    count_size          = collectionSetter_getSizeKeys(collection_setter);
    Si count_size > 0 Entonces
        keys_collection = __private_LinearCollection_GetDataSeparatedString(data_soup, string_sumation, separator);
    FinSi
FinFuncion

Funcion result_Set <- __private_collectionSetter_ModifyInnerData(collection_setter, collection_setter_Match, isRemove)
	Definir size_match, i, index_start, index_end Como Numero;
	Definir result_Set, key_Setter, key_Match, key_current, separator Como Texto;
	result_Set = collection_setter;
	size_match = collectionSetter_getSizeKeys(collection_setter_Match);
	separator = symbol_separator();
	key_Match = CollectionSetter_GetKeys_ToSeparatedString(collection_setter_Match, separator);
	i = 0;
	index_start = 0;
	Mientras i < size_match Hacer
		index_end = string_indexOf_fromIndex(key_Match, separator, index_start);
		key_current = string_substring(key_Match,index_start, index_end);
		si isRemove Entonces
			result_Set = collectionSetter_RemoveKey_ByString(result_Set, key_current);
		SiNo
			result_Set = collectionSetter_AddKey_ByString(result_Set, key_current);
		FinSi
		index_start = increment(index_end);
		i = increment(i);
	FinMientras
FinFuncion

Funcion result_Set <- collectionSetter_RetainAll(collection_setter, collection_setter_Match)
	Definir size, size_match, i, index_start, index_end Como Numero;
	Definir result_Set, key_Setter, key_Match, key_current, separator Como Texto;
	Definir ExistInMatch Como Logico;
	result_Set = collection_setter;
	size_match = collectionSetter_getSizeKeys(collection_setter);
	separator = symbol_separator();
	key_Match = CollectionSetter_GetKeys_ToSeparatedString(collection_setter, separator);
	i = 0;
	index_start = 0;
	Mientras i < size_match Hacer
		index_end = string_indexOf_fromIndex(key_Match, separator, index_start);
		key_current = string_substring(key_Match, index_start, index_end);
		ExistInMatch = collectionSetter_Exist_ByString(collection_setter_Match, key_Current);
		si !ExistInMatch Entonces
			result_Set = collectionSetter_RemoveKey_ByString(result_Set, key_current);
		FinSi
		index_start = increment(index_end);
		i = increment(i);
	FinMientras
FinFuncion

Funcion isDataValid <- __private_collectionSetter_IsEqualsData(collection_setter, key, size, index)
	Definir isDataValid Como Logico;
	Definir data_Inner Como Texto;
	data_Inner  = string_substring(collection_setter, index, size);
	isDataValid = Num_isEquals(string_Length(key), size) & string_isEquals(key, data_Inner);
FinFuncion

Funcion keys_collection <- CollectionSetter_GetKeys_ToString(collection_setter)
	Definir keys_collection Como Texto;
	keys_collection = CollectionSetter_GetKeys_ToSeparatedString(collection_setter, symbol_Separator_Simple());
FinFuncion
//----[ PRINTER_SETTER ]--------------------------------------------------------------<#>
Funcion collectionSetter_println(collection_setter)
	__private_collectionSetter_printer(collection_setter, true());
FinFuncion

Funcion collectionSetter_print(collection_setter)
	__private_collectionSetter_printer(collection_setter, false());
FinFuncion

Funcion __private_collectionSetter_printer(collection_setter, isNewLine)
	Definir key_id, index_idArea, index_KeyArea, index_EndKeyArea Como Numero;
	Definir data_soup, string_sumation Como Texto;
	index_idArea        = increment(string_indexOf(collection_setter, symbol_idArea()));
	index_KeyArea       = string_indexOf_fromIndex(collection_setter, symbol_KeyArea(), index_idArea);
	index_EndKeyArea 	= string_indexOf_fromIndex(collection_setter, symbol_EndKeyArea(), index_KeyArea);
	string_sumation     = string_substring(collection_setter, index_idArea, index_KeyArea);
	string_sumation     = string_ReverseSeparatedValues(string_sumation, symbol_Separator());//adapter
	data_soup            = string_substring(collection_setter, increment(index_KeyArea), index_EndKeyArea);
	__private_Collection_Printer(data_soup, string_sumation, isNewLine);
FinFuncion
//----[ VALUE_Function ( KEY ) ]------------------------------------------------------<#>
Funcion new_Setter <- collectionSetter_addValueFunction(collection_setter, TYPE_VALUE)
	Definir new_Setter, value_TypeArea, value_SaveArea, value_Area Como Texto;
	Definir index_ExtraData Como Numero;
	value_TypeArea  = string_append(symbol_TypeArea(), TYPE_VALUE);
	value_SaveArea = string_Append(symbol_DataArea(), symbol_MetaData());
	value_Area = string_append(value_TypeArea, value_SaveArea);
	index_ExtraData = string_lastIndexOf(collection_setter, symbol_ExtraData());
	new_Setter 		= string_insert(collection_setter, value_Area, index_ExtraData);
FinFuncion
//----[ KEY_ADD ]---------------------------------------------------------------------<#>
Funcion new_Setter <- collectionSetter_AddKeyValue(collection_setter, key, value)
	Definir new_Setter, type_Key Como Texto;
	type_Key = collectionSetter_GetTypeKeys(collection_setter);
	new_Setter = collectionSetter_AddKeyValue_ToTypeKey(collection_setter, key, value, type_Key);
FinFuncion

Funcion new_Setter <- collectionSetter_AddKeyValue_ToTypeKey(collection_setter, key, value, type_Key)
	Definir new_Setter, key_String Como Texto;
	key_String = value_Parser_TypeToString(key, type_Key);
	new_Setter = collectionSetter_AddKeyValue_ByString(collection_setter, key_string, value);
FinFuncion

Funcion new_Setter <- collectionSetter_AddKeyValue_ByString(collection_setter, key, value)
	Definir new_Setter Como Texto;
	new_Setter = collection_setter;
	si !collectionSetter_Exist_ByString(new_Setter, key) Entonces
		new_Setter =  collectionSetter_AddKeyValue_ByStringForced(collection_setter, key, value);
	SiNo
		new_Setter = collectionSetter_Key_SetValue_ByString(collection_setter, key, value);
	FinSi	
FinFuncion

Funcion new_Setter <- collectionSetter_AddKeyValue_ByStringForced(collection_setter, key, value)
	Definir new_Setter Como Texto;
	new_Setter = collection_setter;
	new_Setter = collectionSetter_AddKey_Forced(new_Setter, key);
	new_Setter = linearCollection_addLast(new_Setter, value);
FinFuncion
//----[ KEY_SETTERS ]----------------------------------------------------------------<#>
Funcion setter_newValue <- collectionSetter_Key_SetValue(collection_setter, key, value)
	Definir setter_newValue  Como Texto;
	Definir ID_key Como Numero;
	ID_key = collectionSetter_GetInnerId(collection_setter, key);
	si ID_key >= 0 Entonces
		setter_newValue  = linearCollection_SetElement(collection_setter, ID_key, value);
	sino
		setter_newValue = collection_setter;
	FinSi
FinFuncion

Funcion setter_newValue <- collectionSetter_Key_SetValue_ByString(collection_setter, key, value)
	Definir setter_newValue Como Texto;
	Definir ID_key Como Numero;
	ID_key = collectionSetter_GetInnerId_ByString(collection_setter, key);
	si ID_key >= 0 Entonces
		setter_newValue = linearCollection_SetElement(collection_setter, ID_key, value);
	sino
		setter_newValue = collection_setter;
	FinSi
FinFuncion
//----[ KEY_GETTERS ]----------------------------------------------------------------<#>
Funcion value_key <- collectionSetter_Key_GetValue(collection_setter, key)
	Definir ID_key Como Numero;
	ID_key = collectionSetter_GetInnerId(collection_setter, key);
	si ID_key >= 0 Entonces
		Definir TYPE Como Texto;
		TYPE = linearCollection_GetType(collection_setter);
		Segun TYPE Hacer
			caso TYPE_INT(): Definir value_key Como Numero;
			caso TYPE_FLOAT(): Definir value_key Como Real;
			caso TYPE_BOOLEAN(): Definir value_key Como Logico;
			De Otro Modo: Definir value_key Como Texto;
		FinSegun
		value_key = linearCollection_getElement_toType(collection_setter, ID_key, type);
	FinSi
FinFuncion

Funcion value_key <- collectionSetter_Key_GetValue_ToString(collection_setter, key)
	Definir value_key Como Texto;
	Definir ID_key Como Numero;
	ID_key = collectionSetter_GetInnerId(collection_setter, key);
	si ID_key >= 0 Entonces
		value_key = linearCollection_getElement_toString(collection_setter,ID_key);
	SiNo
		value_key = string_Null();
	FinSi
FinFuncion
//----[ KEY_REMOVE ]-----------------------------------------------------------------<#>
Funcion new_Setter <- collectionSetter_RemoveKeyValue(collection_setter, key)
	Definir new_Setter, type_Key Como Texto;
	type_Key = collectionSetter_GetTypeKeys(collection_setter);
	new_Setter = collectionSetter_RemoveKeyValue_ToTypeKey(collection_setter, key, type_Key);
FinFuncion

Funcion new_Setter <- collectionSetter_RemoveKeyValue_ToTypeKey(collection_setter, key, type_Key)
	Definir new_Setter, key_String Como Texto;
	key_String = value_Parser_TypeToString(key, type_Key);
	new_Setter = collectionSetter_RemoveKeyValue_ByString(collection_setter, key_string);
FinFuncion

Funcion new_Setter <- collectionSetter_RemoveKeyValue_ByString(collection_setter, key)
	Definir new_Setter Como Texto;
	Definir ID_key  Como Numero;
	new_Setter = collection_setter;
	ID_key = collectionSetter_GetInnerId_ByString(collection_setter,key);
	si !value_isNull(ID_key, TYPE_INT()) Entonces
		new_Setter = collectionSetter_RemoveKey_Discreet(new_Setter, key);
		new_Setter = linearCollection_RemoveElement(new_Setter, ID_key);
	FinSi
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=========================================
Funcion symbol_area <- symbol_TypeKey
    Definir symbol_area Como Texto;
    symbol_area = "";
FinFuncion

Funcion symbol_area <- symbol_idArea
    Definir symbol_area Como Texto;
    symbol_area = "";
FinFuncion

Funcion symbol_area <- symbol_KeyArea
    Definir symbol_area Como Texto;
    symbol_area = "";
FinFuncion

Funcion symbol_area <- symbol_EndKeyArea
    Definir symbol_area Como Texto;
    symbol_area = "";
FinFuncion
///$$$$$[ SET ]$$$$$$$$$$$$$$$$$$$$$$[  -+2_7 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion new_Set <- util_Set_new(TYPE)
	Definir new_Set Como Texto;
	new_Set = collectionSetter_New(STRUCT_TYPE_SET(), TYPE);
FinFuncion

Funcion result_Set <- util_Set_Add(struct_Set, key_new)
	Definir result_Set Como Texto;
	result_Set = collectionSetter_AddKey(struct_Set, key_new);
FinFuncion

Funcion result_Set <- util_Set_Remove(struct_Set, key_new)
	Definir result_Set Como Texto;
	result_Set = collectionSetter_RemoveKey_ByString(struct_Set, key_new);
FinFuncion

Funcion util_Set_println(struct_Set)
	collectionSetter_println(struct_Set);
FinFuncion

Funcion keyExist <- util_Set_Containss(struct_Set, key_match)
	Definir keyExist Como Logico;
	keyExist = collectionSetter_Exist(struct_Set, key_match);
FinFuncion

Funcion result_Size <- util_Set_Size(struct_Set)
	Definir result_Size Como Numero;
	result_Size = collectionSetter_getSizeKeys(struct_Set);
FinFuncion

Funcion result_Set <- util_Set_AddAll(struct_Set, struct_SetRetain)
	Definir result_Set Como Texto;
	result_Set = collectionSetter_AddAll(struct_Set, struct_SetRetain);
FinFuncion

Funcion result_Set <- util_Set_RemoveAll(struct_Set, struct_SetRetain)
	Definir result_Set Como Texto;
	result_Set = collectionSetter_RemoveAll(struct_Set, struct_SetRetain);
FinFuncion

Funcion result_Set <- util_Set_RetainAll(struct_Set, struct_SetRetain)
	Definir result_Set Como Texto;
	result_Set = collectionSetter_RetainAll(struct_Set, struct_SetRetain);
FinFuncion
///$$$$$[ MAP ]$$$$$$$$$$$$$$$$$$$$$$[  -+2_8 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion new_Map <- util_Map_new(TYPE, TYPE_VALUE)
	Definir new_Map Como Texto;
	new_Map = collectionSetter_addValueFunction(collectionSetter_New(STRUCT_TYPE_MAP(), TYPE), TYPE_VALUE);
FinFuncion

Funcion result_Map <- util_Map_Put(struct_map, key, value)
	Definir result_Map Como Texto;
	result_Map = collectionSetter_AddKeyValue(struct_map, key, value);
FinFuncion

Funcion result_Map <- util_Map_Remove(struct_map, key)
	Definir result_Map Como Texto;
	result_Map = collectionSetter_RemoveKeyValue(struct_map, key);
FinFuncion

Funcion util_Map_println_Key(struct_Map)
	collectionSetter_println(struct_Map);
FinFuncion

Funcion util_Map_println_Value(struct_Map)
	linearCollection_println(struct_Map);
FinFuncion

Funcion element_Result <- util_Map_Get(struct_map, key)
	Definir TYPE Como Texto;
	TYPE = linearCollection_GetType(struct_map);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = collectionSetter_Key_GetValue(struct_map, key);
FinFuncion

Funcion map_Size <- util_Map_Size(struct_map)
	Definir map_Size Como Numero;
	map_Size = collectionSetter_getSizeKeys(struct_map);
FinFuncion

Funcion keyExist <- util_Map_Contains(struct_map, key_match)
	Definir keyExist Como Logico;
	keyExist = collectionSetter_Exist(struct_map, key_match);
FinFuncion
///%%%%%[ TEMPORAL/CHRONO_UNIT ]%%%%%[   #+0  ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//=====[ CHRONO_UNIT ]==============[ separator ]======================================
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

Funcion isTimeBased <- chronoUnit_isTimeBased(chronoUnit_type)
	Definir isTimeBased Como Logico;
	Segun chronoUnit_type Hacer
        chronoUnit_SECONDS(), chronoUnit_MINUTES, chronoUnit_HOURS():
            isTimeBased = true();
        De Otro Modo:
            isTimeBased = false();
    FinSegun
FinFuncion

Funcion isDateBased <- chronoUnit_isDateBased(chronoUnit_type)
	Definir isDateBased Como Logico;
	Segun chronoUnit_type Hacer
        chronoUnit_DAYS(), chronoUnit_WEEKS(), chronoUnit_MONTHS(), chronoUnit_YEARS(), chronoUnit_DECADES():
            isDateBased = true();
        De Otro Modo:
            isDateBased = false();
    FinSegun
FinFuncion

Funcion isSupported <- chronoUnit_isSupportedTo(struct_temporal, chronoUnit_type)
	Definir isSupported Como Logico;
	Definir temporal_type Como Texto;
	temporal_type = collection_getNameCollection(struct_temporal);
	Segun temporal_type Hacer
		TEMPORAL_LOCALTIME():
			isSupported = chronoUnit_isTimeBased(chronoUnit_type);
		TEMPORAL_LOCALDATE():
			isSupported = chronoUnit_isDateBased(chronoUnit_type);
		TEMPORAL_LOCALDATETIME():
			isSupported = chronoUnit_isTimeBased(chronoUnit_type) | chronoUnit_isDateBased(chronoUnit_type);
		De otro Modo:
			isSupported = false();
			error_message_Function("chronoUnit_isSupportedTo(struct_temporal, chronoUnit_type)","Struct no valid");
	FinSegun
FinFuncion

Funcion isEstimated <- chronoUnit_isDurationEstimated(chronoUnit_type)
    Definir isEstimated Como Logico;
    Segun chronoUnit_type Hacer
        chronoUnit_DAYS(), chronoUnit_WEEKS(), chronoUnit_MONTHS(), chronoUnit_YEARS(), chronoUnit_DECADES():
            isEstimated = true();
        De Otro Modo:
            isEstimated = false();
    FinSegun
FinFuncion
//=====[ TEMPORAL ]=================[ separator ]======================================
Funcion seconds <- temporal_getSeconds(struct_temporal)
    Definir seconds Como Real;
    seconds = linearCollection_getLast(struct_temporal);
FinFuncion
//----[ PLUS ]------------------------------------------------------------------------<#>
Funcion struct_temporal_result <- temporal_Plus(struct_temporal, struct_temporal_minus)
	Definir struct_temporal_result Como Texto;
	struct_temporal_result = temporal_PlusNumber(struct_temporal, temporal_getSeconds(struct_temporal_minus));
FinFuncion

Funcion struct_temporal_result <- temporal_PlusSeconds(struct_temporal, num_increment)
	Definir struct_temporal_result Como Texto;
	struct_temporal_result = temporal_PlusUnitTemporal(struct_temporal, num_increment, chronoUnit_SECONDS());
FinFuncion

Funcion struct_temporal_result <- temporal_PlusUnitTemporal(struct_temporal, num_increment, Temporal_Type)
    Definir struct_temporal_result Como Texto;
    Definir seconds_to_add Como Real;
    seconds_to_add = duration_TemporalUnitToSeconds(num_increment, Temporal_Type);
    struct_temporal_result = temporal_PlusNumber(struct_temporal, seconds_to_add);
FinFuncion

Funcion struct_temporal_result <- temporal_PlusNumber(struct_temporal, number_plus)
    Definir struct_temporal_result Como Texto;
    Definir seconds_total Como Real;
    seconds_total = increment_step(temporal_getSeconds(struct_temporal), number_plus);
    struct_temporal_result = linearCollection_SetElement_ToString(struct_temporal, 0, num_ToString(seconds_total));
FinFuncion
//----[ MINUS ]----------------------------------------------------------------------<#>
Funcion struct_temporal_result <- temporal_MinusUnitTemporal(struct_temporal, num_decrement, Temporal_Type)
    Definir struct_temporal_result Como Texto;
    struct_temporal_result = temporal_PlusUnitTemporal(struct_temporal, math_Negated(num_decrement), Temporal_Type);
FinFuncion

Funcion struct_temporal_result <- temporal_Minus(struct_temporal, struct_temporal_minus)
	Definir struct_temporal_result Como Texto;
	struct_temporal_result = temporal_PlusNumber(struct_temporal, math_Negated(temporal_getSeconds(struct_temporal_minus)));
FinFuncion
//----[ OPERATIONS ]-----------------------------------------------------------------<#>
Funcion struct_time <- temporal_with(struct_temporal, num_define, type_temporal)
    Definir struct_time Como Texto;
    Definir time_now, t_old_part, t_new_part, time_total Como Real;
    Si temporal_isValidUnitTemporal(num_define, type_temporal) Entonces
        time_now    = temporal_getSeconds(struct_temporal);
        t_old_part  = duration_secondsToTemporalUnitPart(time_now, type_temporal);
        t_old_part  = duration_TemporalUnitToSeconds(t_old_part, type_temporal);
        t_new_part  = duration_TemporalUnitToSeconds(num_define, type_temporal);
		time_total = increment_step(decrement_step(time_now, t_old_part), t_new_part);
        struct_time = __private_temporal_setSecondOfDays(struct_temporal, time_total);
    SiNo
        error_message_Function("temporal_with(struct, num, type)", "unit range_error");
        struct_time = struct_temporal;
    FinSi
FinFuncion
//----[ BOOLEANS ]---------------------------------------------------------------------<#>
Funcion isValidUnitTemporal <- temporal_isValidUnitTemporal(unit_temporal, type_temporal)
	Definir isValidUnitTemporal Como Logico;
	segun type_temporal Hacer
		Caso chronoUnit_HOURS():
			isValidUnitTemporal = temporal_isValidHours(unit_temporal);
		Caso chronoUnit_MINUTES():
			isValidUnitTemporal = temporal_isValidMinutes(unit_temporal);
		Caso chronoUnit_SECONDS():
			isValidUnitTemporal = temporal_isValidSeconds(unit_temporal);
		de otro modo:
			error_message_Function("temporal_isValidUnitTemporal(unit, type)","type temporal no exist");
			isValidUnitTemporal = false();
	FinSegun
FinFuncion

Funcion isValid <- temporal_isValidDate(year, month, day)
	Definir isValid Como Logico;
	isValid = temporal_isValidYear(year) & temporal_isValidMonth(month)& temporal_isValidDayInMonthOfTheYear(year, month, day);
FinFuncion

Funcion isValid <- temporal_isValidYear(year)
	Definir isValid Como Logico;
	isValid = number_IsInRange(year, -999999999, 999999999);
FinFuncion

Funcion isValid <- temporal_isValidMonth(month)
	Definir isValid Como Logico;
	isValid = number_IsInRange(month, 1, 12);
FinFuncion

Funcion isValid <- temporal_isValidDayInMonthOfTheYear(year, month, day)
	Definir isValid Como Logico;
	isValid = number_IsInRange(day, 1, localDate_lengthOfMonth(year, month));
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

Funcion isValid <- temporal_isValid(hours, minutes, seconds)
	Definir isValid Como Logico;
	isValid = temporal_isValidHours(hours) &temporal_isValidMinutes(minutes) & temporal_isValidSeconds(seconds);
FinFuncion

Funcion date_object <- __private_temporalDate_add(struct_date, year, month, day)
	Definir date_object Como Texto;
	date_object = struct_date;
	date_object = linearCollection_addFirst(date_object, day);
	date_object = linearCollection_addFirst(date_object, month);
	date_object = linearCollection_addFirst(date_object, year);
FinFuncion

Funcion date_object <- __private_temporalDate_set(struct_date, year, month, day)
	Definir date_object Como Texto;
	date_object = struct_date;
	date_object = linearCollection_SetElement_toType(date_object, 0, year, TYPE_INT());
	date_object = linearCollection_SetElement_toType(date_object, 1, month, TYPE_INT());
	date_object = linearCollection_SetElement_toType(date_object, 2, day, TYPE_INT());
FinFuncion

Funcion time_result <- __private_temporal_addSecondOfDays(struct_time, seconds)
	Definir time_result Como Texto;
	time_result = linearCollection_addLast_ByType(struct_time, seconds, TYPE_FLOAT());
FinFuncion

Funcion time_result <- __private_temporal_setSecondOfDays(struct_time, seconds)
	Definir time_result Como Texto;
	Definir size_struct Como Entero;
	size_struct = linearCollection_GetSize(struct);
	time_result = linearCollection_SetElement_ToType(struct_time, size_struct, seconds, TYPE_FLOAT());
FinFuncion

Funcion date_object <- __private_temporalDate_setDateNull(struct_date)
	Definir date_object Como Texto;
	date_object = __private_temporalDate_set(struct_date, 0, 0, 0);
FinFuncion

Funcion LocalTime_result <- __private_temporalTime_setTimeNull(struct_time)
	Definir LocalTime_result Como Texto;
	LocalTime_result = __private_temporal_addSecondOfDays(struct_time, number_Null());
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=========================================
Funcion Temporal_Type <- TEMPORAL_AMOUNT_DURATION
	Definir Temporal_Type Como Texto;
	Temporal_Type = "Duration";
FinFuncion

Funcion Temporal_Type <- TEMPORAL_AMOUNT_PERIOD
	Definir Temporal_Type Como Texto;
	Temporal_Type = "Period";
FinFuncion

Funcion Temporal_Type <- TEMPORAL_LOCALTIME
	Definir Temporal_Type Como Texto;
	Temporal_Type = "LocalTime";
FinFuncion

Funcion Temporal_Type <- TEMPORAL_LOCALDATE
	Definir Temporal_Type Como Texto;
	Temporal_Type = "LocalDate";
FinFuncion

Funcion Temporal_Type <- TEMPORAL_LOCALDATETIME
	Definir Temporal_Type Como Texto;
	Temporal_Type = "LocalDateTime";
FinFuncion

Funcion Temporal_Type <- chronoUnit_DECADES
	Definir Temporal_Type Como Texto;
	Temporal_Type = "YEAR";
FinFuncion

Funcion Temporal_Type <- chronoUnit_YEARS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "YEAR";
FinFuncion

Funcion Temporal_Type <- chronoUnit_MONTHS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "MONTH";
FinFuncion

Funcion Temporal_Type <- chronoUnit_WEEKS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "WEEKS";
FinFuncion

Funcion Temporal_Type <- chronoUnit_DAYS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "DAY";
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
//...
Funcion day_name <- DayOfWeek_MONDAY
    Definir day_name Como Texto;
    day_name = "MONDAY";
FinFuncion

Funcion day_name <- DayOfWeek_TUESDAY
    Definir day_name Como Texto;
    day_name = "TUESDAY";
FinFuncion

Funcion day_name <- DayOfWeek_WEDNESDAY
    Definir day_name Como Texto;
    day_name = "WEDNESDAY";
FinFuncion

Funcion day_name <- DayOfWeek_THURSDAY
    Definir day_name Como Texto;
    day_name = "THURSDAY";
FinFuncion

Funcion day_name <- DayOfWeek_FRIDAY
    Definir day_name Como Texto;
    day_name = "FRIDAY";
FinFuncion

Funcion day_name <- DayOfWeek_SATURDAY
    Definir day_name Como Texto;
    day_name = "SATURDAY";
FinFuncion

Funcion day_name <- DayOfWeek_SUNDAY
    Definir day_name Como Texto;
    day_name = "SUNDAY";
FinFuncion

Funcion month_name <- Month_JANUARY
    Definir month_name Como Texto;
    month_name = "JANUARY";
FinFuncion

Funcion month_name <- Month_FEBRUARY
    Definir month_name Como Texto;
    month_name = "FEBRUARY";
FinFuncion

Funcion month_name <- Month_MARCH
    Definir month_name Como Texto;
    month_name = "MARCH";
FinFuncion

Funcion month_name <- Month_APRIL
    Definir month_name Como Texto;
    month_name = "APRIL";
FinFuncion

Funcion month_name <- Month_MAY
    Definir month_name Como Texto;
    month_name = "MAY";
FinFuncion

Funcion month_name <- Month_JUNE
    Definir month_name Como Texto;
    month_name = "JUNE";
FinFuncion

Funcion month_name <- Month_JULY
    Definir month_name Como Texto;
    month_name = "JULY";
FinFuncion

Funcion month_name <- Month_AUGUST
    Definir month_name Como Texto;
    month_name = "AUGUST";
FinFuncion

Funcion month_name <- Month_SEPTEMBER
    Definir month_name Como Texto;
    month_name = "SEPTEMBER";
FinFuncion

Funcion month_name <- Month_OCTOBER
    Definir month_name Como Texto;
    month_name = "OCTOBER";
FinFuncion

Funcion month_name <- Month_NOVEMBER
    Definir month_name Como Texto;
    month_name = "NOVEMBER";
FinFuncion

Funcion month_name <- Month_DECEMBER
    Definir month_name Como Texto;
    month_name = "DECEMBER";
FinFuncion

Funcion month_name <- month_of(number_month)
    Definir month_name Como Texto;
    Segun number_month Hacer
        1:
            month_name = Month_JANUARY();
        2:
            month_name = Month_FEBRUARY();
        3:
            month_name = Month_MARCH();
        4:
            month_name = Month_APRIL();
        5:
            month_name = Month_MAY();
        6:
            month_name = Month_JUNE();
        7:
            month_name = Month_JULY();
        8:
            month_name = Month_AUGUST();
        9:
            month_name = Month_SEPTEMBER();
        10:
            month_name = Month_OCTOBER();
        11:
            month_name = Month_NOVEMBER();
        12:
            month_name = Month_DECEMBER();
        De Otro Modo:
            month_name = string_Null();
    FinSegun
FinFuncion

Funcion value <- month_value(name_month)
    Definir value Como Entero;
    Segun name_month Hacer
        Month_JANUARY():
            value = 1;
        Month_FEBRUARY():
            value = 2;
        Month_MARCH():
            value = 3;
        Month_APRIL():
            value = 4;
        Month_MAY():
            value = 5;
        Month_JUNE():
            value = 6;
        Month_JULY():
            value = 7;
        Month_AUGUST():
            value = 8;
        Month_SEPTEMBER():
            value = 9;
        Month_OCTOBER():
            value = 10;
        Month_NOVEMBER():
            value = 11;
        Month_DECEMBER():
            value = 12;
        De Otro Modo:
            value = number_Null();
    FinSegun
FinFuncion

Funcion day_name <- DayOfWeek_of(number_day)
    Definir day_name Como Texto;
    Segun number_day Hacer
        1:
            day_name = DayOfWeek_MONDAY();
        2:
            day_name = DayOfWeek_TUESDAY();
        3:
            day_name = DayOfWeek_WEDNESDAY();
        4:
            day_name = DayOfWeek_THURSDAY();
        5:
            day_name = DayOfWeek_FRIDAY();
        6:
            day_name = DayOfWeek_SATURDAY();
        7:
            day_name = DayOfWeek_SUNDAY();
        De Otro Modo:
            day_name = string_Null();
    FinSegun
FinFuncion
///$$$$$$[ LOCALDATE ]$$$$$$$$$$$$$$$[  -+0_1 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion Date_num <- __private_getDate_Now
	Definir Date_num Como Numero;
	Date_num = FechaActual();//20260407;
FinFuncion

Funcion Date_String <- __private_getDate_Now_toString
	Definir Date_String Como Texto;
	Date_String = string_fit(num_ToString(__private_getDate_Now()), "00000000");
FinFuncion

Funcion current_date <- localDate_now
	Definir current_date, date_now_string, year_string, month_string, day_string Como Texto;
	Definir year, month, day Como Entero;
	date_now_string = __private_getDate_Now_toString();
	year_string = string_substring(date_now_string, 0, 4);
	month_string = string_substring(date_now_string, 4, 6);
	day_string = string_substring(date_now_string, 6, 8);
	year = String_toNum(year_string);
	month = String_toNum(month_string);
	day = String_toNum(day_string);
	current_date = localDate_of(year, month, day);
FinFuncion

Funcion date_object <- localDate_of_monthName(year, MONTH_NAME, day)
	Definir date_object Como Texto;
	date_object = localDate_of(year, month_value(MONTH_NAME), day);
FinFuncion

Funcion date_object <- localDate_of(year, month, day)
	Definir date_object Como Texto;
	Si (temporal_isValidDate(year, month, day)) Entonces
		date_object = __private_localDate_forcedOf(year, month, day);
	SiNo
		date_object = __private_localDate_ofDateNull();
		error_message_Function("localDate_of(year, month, day)", "Date not valid");
	FinSi
FinFuncion

Funcion date_object <- __private_localDate_forcedOf(year, month, day)
	Definir date_object Como Texto;
	date_object = linearCollection_newLinearCollection(TEMPORAL_LOCALDATE(), TYPE_INT());
	date_object = __private_temporalDate_add(date_object, year, month, day);
FinFuncion

Funcion date_string <- localDate_toString(struct_date)
	Definir date_string, date_array Como Texto;
	Dimension date_array[3];
	date_array[0] = string_fit(linearCollection_getElement_ToString(struct_date, 0), "0000");
	date_array[1] = string_fit(linearCollection_getElement_ToString(struct_date, 1), "00");
	date_array[2] = string_fit(linearCollection_getElement_ToString(struct_date, 2), "00");
	date_string = array_ofstring_separator(date_array, 3, "-", TYPE_STRING());
FinFuncion

Funcion date_object <- __private_localDate_ofDateNull
	Definir date_object Como Texto;
	date_object = __private_localDate_forcedOf(number_Null(), number_Null(), number_Null());
FinFuncion

Funcion date_object <- __private_localDate_getDateUnixEpoch
	Definir date_object Como Texto;
	date_object = __private_localDate_forcedOf(1970, 1, 1);
FinFuncion

Funcion year_int <- localDate_getYear(struct_date)
	Definir year_int Como Numero;
	year_int = linearCollection_getElement_toType(struct_date, 0, TYPE_INT());
FinFuncion

Funcion month_int <- localDate_getMonthValue(struct_date)
	Definir month_int Como Numero;
	month_int = linearCollection_getElement_toType(struct_date, 1, TYPE_INT());
FinFuncion

Funcion month_name <- localDate_getMonth(struct_date)
	Definir month_name Como Texto;
	month_name = month_of(localDate_getMonthValue(struct_date));
FinFuncion

Funcion day_int <- localDate_getDayOfMonth(struct_date)
	Definir day_int Como Numero;
	day_int = linearCollection_getElement_toType(struct_date, 2, TYPE_INT());
FinFuncion

Funcion era_result <- localDate_getEra(struct_date)
    Definir era_result Como Texto;
    Si (localDate_getYear(struct_date) >= 1) Entonces
        era_result = "CE";
    SiNo
        era_result = "BCE";
    FinSi
FinFuncion

Funcion date_object <- localDate_plusDays(struct_date, plus_days)
    Definir date_object Como Texto;
    Definir year, month, days Como Entero;
    year = localDate_getYear(struct_date);
    month = localDate_getMonthValue(struct_date);
    days = increment_step(localDate_getDayOfMonth(struct_date), plus_days);
    Si days > localDate_lengthOfMonth(year, month) Entonces
        date_object = __private_localDate_AdvanceDays(struct_date, year, month, days);
    Sino 
		Si days <= 0 Entonces
			date_object = __private_localDate_RewindDays(struct_date, year, month, days);
		Sino
			date_object = __private_temporalDate_set(struct_date, year, month, days);
		FinSi
	FinSi
FinFuncion

Funcion date_object <- localDate_plusWeeks(struct_date, plus_weeks)
	Definir date_object Como Texto;
	date_object = localDate_plusDays(struct_date, (plus_weeks * 7));
FinFuncion

Funcion struct_date_result <- __private_localDate_AdvanceDays(struct_date, year, month, days)
	Definir struct_date_result Como Texto;
    Mientras days > localDate_lengthOfMonth(year, month) Hacer
        days = decrement_step(days, localDate_lengthOfMonth(year, month));
        month = increment(month);
        Si month > 12 Entonces
            month = 1;
            year = increment(year);
        FinSi
    FinMientras
    struct_date_result = __private_temporalDate_set(struct_date, year, month, days);
FinFuncion

Funcion struct_date_result <- __private_localDate_RewindDays(struct_date, year, month, days)
	Definir struct_date_result Como Texto;
    Mientras days <= 0 Hacer
        month = decrement(month);
        Si month < 1 Entonces
            month = 12;
            year = decrement(year);
        FinSi
        days = increment_step(days, localDate_lengthOfMonth(year, month));
    FinMientras
    struct_date_result = __private_temporalDate_set(struct_date, year, month, day);
FinFuncion

Funcion date_object <- localDate_plusMonths(struct_date, plus_months)
	Definir date_object Como Texto;
    Definir month_base, relative_months, years_to_add, final_month Como Entero;
    Definir length_month, days_date Como Entero;
    month_base = decrement(localDate_getMonthValue(struct_date)); 
    relative_months = increment_step(month_base, plus_months);
    years_to_add = math_Round(math_div(relative_months, 12));
    final_month = increment(math_NormalizeCycle(relative_months, 12));
	date_object = localDate_withMonth(struct_date, final_month);
    date_object = localDate_plusYears(date_object, years_to_add);
FinFuncion

Funcion date_object <- localDate_plusYears(struct_date, plus_years)
	Definir date_object Como Texto;
    Definir total_years, current_year, current_month, current_day  Como Entero;
    current_year = localDate_getYear(struct_date);
    total_years = increment_step(current_year, plus_years);
	current_month = localDate_getMonthValue(struct_date);
    current_day = localDate_getDayOfMonth(struct_date);
    date_object = localDate_withYear(struct_date, total_years);
    Si !temporal_isValidDayInMonthOfTheYear(total_years, current_month, current_day) Entonces
        date_object = localDate_withDayOfMonth(date_object, localDate_lengthOfMonth(total_years, current_month));
    FinSi
FinFuncion

Funcion date_object <- localDate_minusDays(struct_date, minus_days)
	Definir date_object Como Texto;
	date_object = localDate_plusDays(struct_date, math_Negated(minus_days));
FinFuncion

Funcion date_object <- localDate_minusWeeks(struct_date, minus_weeks)
	Definir date_object Como Texto;
	date_object = localDate_plusWeeks(struct_date, math_Negated(minus_weeks));
FinFuncion

Funcion date_object <- localDate_minusMonths(struct_date, minus_month)
	Definir date_object Como Texto;
	date_object = localDate_plusMonths(struct_date, math_Negated(minus_month));
FinFuncion

Funcion date_object <- localDate_minusYears(struct_date, minus_years)
	Definir date_object Como Texto;
	date_object = localDate_plusYears(struct_date, math_Negated(minus_years));
FinFuncion

Funcion days <- __private_localDate_getAccumulatedDays(month, isLeap)
    Definir days Como Entero;
    Segun month Hacer
        Caso 0:  days = 0;// Ene
        Caso 1:  days = 31;// Ene
        Caso 2:  days = 59;// Feb
        Caso 3:  days = 90;// Mar
        Caso 4:  days = 120;// Abr
        Caso 5:  days = 151;// May
        Caso 6:  days = 181;// Jun
        Caso 7:  days = 212;// Jul
        Caso 8:  days = 243;// Ago
        Caso 9:  days = 273;// Sep
        Caso 10: days = 304;// Oct
        Caso 11: days = 334;// Nov
        De Otro Modo: days = 365;// Dic
    FinSegun
    Si isLeap & (month > 1) Entonces
        days = increment(days);
    FinSi
FinFuncion

Funcion month_total <- __private_localDate_getMonthFromDays(year, days)
	Definir month_total, month Como Entero;
    month = 1;
    month_total = 0;
    Mientras days > localDate_lengthOfMonth(year, month) Hacer
        days = decrement_step(days, localDate_lengthOfMonth(year, month));
        month = increment(month);
        Si month > 12 Entonces
            month = 1;
            year = increment(year);
        FinSi
        month_total = increment(month_total);
    FinMientras
	
    Mientras days <= 0 Hacer
        month = decrement(month);
        Si month < 1 Entonces
            month = 12;
            year = decrement(year);
        FinSi
        days = increment_step(days, localDate_lengthOfMonth(year, month));
        month_total = decrement(month_total);
    FinMientras
FinFuncion

Funcion Date <- localDate_ofDayOfYear(year, dayOfYear)
    Definir Date Como Texto;
    Definir month, day Como Entero;
    Definir isLeap Como Logico;
    isLeap = localDate_isLeapYear(year);
	si dayOfYear <= localDate_lengthOfYear(year) Entonces
		month = __private_localDate_getMonthFromDays(year, dayOfYear);
		day = decrement_step(dayOfYear, __private_localDate_getAccumulatedDays(decrement(month), isLeap));
		Date = localDate_of(year, month, day);
	SiNo
		Date = __private_localDate_ofDateNull();
		error_message_Function("localDate_ofDayOfYear(year, dayOfYear)", "(dayOfYear > lengthOfYear) no valid ");
	FinSi
FinFuncion

Funcion date_with <- localDate_withMonth(struct_date, month_int)
	Definir date_with Como Texto;
	si temporal_isValidMonth(month_int) Entonces
		date_with = linearCollection_SetElement(struct_date, 1, month_int);
	SiNo
		date_with = __private_temporalDate_setDateNull(struct_date);
		error_message_Function("localDate_withMonth(struct_date, month_int)"," month no is valid");
	FinSi
FinFuncion

Funcion date_with <- localDate_withDayOfYear(struct_date, dayOfYear)
	Definir date_with Como Texto;
	Definir year, month, day Como Entero;
	year = localDate_getYear(struct_date);
	month = __private_localDate_getMonthFromDays(year, dayOfYear);
	day = decrement_step(dayOfYear, __private_localDate_getAccumulatedDays(decrement(month), localDate_isLeapYear(year)));
	si temporal_isValidDayInMonthOfTheYear(year, month, day) Entonces
		date_with = localDate_withDayOfMonth(struct_date, day);
		date_with = localDate_withMonth(struct_date, month);
	SiNo
		date_with = __private_temporalDate_setDateNull(struct_date);
		error_message_Function("localDate_withDayOfYear(struct_date, day_int)"," day no is valid");
	FinSi
FinFuncion

Funcion date_with <- localDate_withDayOfMonth(struct_date, day_int)
	Definir date_with Como Texto;
	Definir year, month Como Entero;
	year = localDate_getYear(struct_date);
	month = localDate_getMonthValue(struct_date);
	si temporal_isValidDayInMonthOfTheYear(year, month, day_int) Entonces
		date_with = linearCollection_SetElement(struct_date, 2, day_int);
	SiNo
		date_with = __private_temporalDate_setDateNull(struct_date);
		error_message_Function("localDate_withDayOfYear(struct_date, day_int)"," day no is valid");
	FinSi
FinFuncion

Funcion date_with <- localDate_withYear(struct_date, year_int)
	Definir date_with Como Texto;
	si temporal_isValidYear(year_int) Entonces
		date_with = linearCollection_SetElement(struct_date, 0, year_int);
	SiNo
		date_with = __private_temporalDate_setDateNull(struct_date);
		error_message_Function("localDate_withYear(struct_date, year_int)","year no is valid");
	FinSi
FinFuncion

Funcion date_object <- localDate_with(struct_date, new_value, temporal_unit)
	Definir date_object Como Texto;
	Segun temporal_unit Hacer
		chronoUnit_YEARS():
			date_object = localDate_withYear(struct_date, new_value);
		chronoUnit_MONTHS():
			date_object = localDate_withMonth(struct_date, new_value);
		chronoUnit_DAYS():
			date_object = localDate_withDayOfMonth(struct_date, new_value);
		De Otro Modo:
			date_with = __private_temporalDate_setDateNull(struct_date);
			error_message_function("localDate_with(struct_date, new_value, temporal_unit)", "Unsupported or invalid temporal unit for field replacement");
	FinSegun
FinFuncion

Funcion date_object <- localDate_plus(struct_date, num_plus, temporal_unit)
	Definir date_object Como Texto;
	Segun temporal_unit Hacer
		chronoUnit_YEARS():
			date_object = localDate_plusYears(struct_date, num_plus);
		chronoUnit_MONTHS():
			date_object = localDate_plusMonths(struct_date, num_plus);
		chronoUnit_WEEKS():
			date_object = localDate_plusWeeks(struct_date, num_plus);
		chronoUnit_DAYS():
			date_object = localDate_plusDays(struct_date, num_plus);
		De Otro Modo:
			date_with = __private_temporalDate_setDateNull(struct_date);
			error_message_function("localDate_plus(struct_date, num_plus, temporal_unit)", "invalid temporal unit");
	FinSegun
FinFuncion

Funcion date_object <- localDate_minus(struct_date, num_minus, temporal_unit)
	Definir date_object Como Texto;
	Segun temporal_unit Hacer
		chronoUnit_YEARS():
			date_object = localDate_minusYears(struct_date, num_minus);
		chronoUnit_MONTHS():
			date_object = localDate_minusMonths(struct_date, num_minus);
		chronoUnit_WEEKS():
			date_object = localDate_minusWeeks(struct_date, num_minus);
		chronoUnit_DAYS():
			date_object = localDate_minusDays(struct_date, num_minus);
		De Otro Modo:
			date_with = __private_temporalDate_setDateNull(struct_date);
			error_message_function("localDate_minus(struct_date, num_minus, temporal_unit)", "invalid temporal unit");
	FinSegun
FinFuncion

// Derivado de la fórmula de Zeller para cálculo de días acumulados.
// Fórmula: floor(30.6 * month - 29.4 - leap_factor) + day;
// leap_factor: 2 si es bisiesto, 3 si no lo es.
// Ajuste de inicio:
// - Si 1 de Enero = 0: leap_factor = 0 para Enero/Febrero.
// - Si 1 de Enero = 1: leap_factor = 0 para Febrero, 1 para Enero.
Funcion numDay <- localDate_getDayOfYear(year, month, day)
	Definir numDay, leap_factor Como Entero;
	si temporal_isValidDate(year, month, day) Entonces
		leap_factor = if_else(localDate_isLeapYear(year), 2, 3, TYPE_INT());
		leap_factor = if_else(month == 1, 1, leap_factor, TYPE_INT());
		leap_factor = if_else(month == 2, 0, leap_factor, TYPE_INT());
		numDay = math_floor(30.6 * month - 29.4 - leap_factor) + day;
	sino
		numDay = number_Null();
		error_message_Function("localDate_getDayOfYear(year, month, day)","date no is valid");
	FinSi
FinFuncion
//falta semana del year
Funcion day_name <- localDate_getDayOfTheWeek(struct_date)
	Definir day_name Como Texto;
	day_name = DayOfWeek_of(localDate_getDayOfTheWeek_Value(struct_date));
FinFuncion

Funcion day_value <- localDate_getDayOfTheWeek_Value(struct_date)
	Definir day_value, year, month, day Como Entero;
	year = localDate_getYear(struct_date);
	month = localDate_getMonthValue(struct_date);
	day = localDate_getDayOfMonth(struct_date);
	day_value = __private_localDate_getDayOfTheWeek_Value(year, month, day);
FinFuncion

Funcion numDay <- __private_localDate_getDayOfTheWeek_Value(year, month, day)
    Definir numDay, yearAdjusted, monthTable, y_total Como Numero;
    Dimension monthTable[12];
    monthTable[0]=0;monthTable[1]=3;monthTable[2]=2;monthTable[3]=5;monthTable[4]=0;monthTable[5]=3;
    monthTable[6]=5;monthTable[7]=1;monthTable[8]=4;monthTable[9]=6;monthTable[10]=2;monthTable[11]=4;
    yearAdjusted = if_else(month < 3, year - 1, year, TYPE_INT);
	y_total = yearAdjusted + math_floor(yearAdjusted / 4) - math_floor(yearAdjusted / 100) + math_floor(yearAdjusted / 400);
    numDay = math_module(y_total + monthTable[month - 1] + day, 7);
	si numDay < 1 Entonces
		numDay = 7;
	FinSi
FinFuncion
//verificar si cuando aumento anio es bisiesto y es ajustar mes en ese caso

Funcion struct_dateTime <- localDate_atStartOfDay(struct_date)
	Definir struct_dateTime Como Texto;
	struct_dateTime = __private_localDate_atTime_fromSeconds(struct_date, 0);
FinFuncion

Funcion struct_dateTime <- localDate_atTime_fromLocalTime(struct_date, struct_time)
	Definir struct_dateTime Como Texto;
	Definir total_time Como Entero;
	total_time = localTime_getSecondsOfDay(struct_time);
	struct_dateTime = __private_localDate_atTime_fromSeconds(struct_date, total_time);
FinFuncion

Funcion struct_dateTime <- localDate_atTime_HourMinute(struct_date, hour, minute)
	Definir struct_dateTime Como Texto;
	struct_dateTime = localDate_atTime(struct_date, hour, minute, 0);
FinFuncion

Funcion struct_dateTime <- localDate_atTime(struct_date, hour, minute, second)
	Definir struct_dateTime Como Texto;
	Definir hour_second, minute_second, total_second Como Entero;
	hour_second = duration_hoursToSeconds(hour);
	minute_second = duration_minutesToSeconds(minute);
	total_second = increment_step(hour_second, minute_second);
	total_second = increment_step(total_second, second);
	struct_dateTime = __private_localDate_atTime_fromSeconds(struct_date, total_second);
FinFuncion

Funcion struct_dateTime <- __private_localDate_atTime_fromSeconds(struct_date, seconds)
	Definir struct_dateTime Como Texto;
	struct_dateTime = linearCollection_addLast(struct_date, seconds);
	struct_dateTime = string_insert(struct_dateTime, "Time",string_indexOf(struct_dateTime,symbol_TypeArea()));
FinFuncion

Funcion boolean <- localDate_isLeapYear(year)
	Definir boolean Como Logico;
	boolean = (Num_isEquals(math_module(year, 4), 0) & !Num_isEquals(math_module(year, 100), 0)) | Num_isEquals(math_module(year, 400), 0);
FinFuncion

Funcion lengthOfYear <- localDate_lengthOfYear(struct_date)
	Definir lengthOfYear, year_date Como Entero;
	year_date = localDate_getYear(struct_date);
	lengthOfYear = if_else(localDate_isLeapYear(year_date), 366, 365, TYPE_INT());
FinFuncion

Funcion days <- localDate_lengthOfMonth(year, month)
	Definir days, type_month Como Entero;
	type_month = -1;
	
	si (month == 2) Entonces
		type_month = 0;
	FinSi
	
	si (month == 4 | month == 6 | month == 9 | month == 11) Entonces
		type_month = 1;
	FinSi
	
	segun type_month Hacer
		caso 0: 
			days = 28;
			Si localDate_isLeapYear(year) Entonces
				days = increment(days);
			FinSi
		caso 1: 
			days = 30;
		De Otro Modo:
			days = 31;
	FinSegun
FinFuncion
//----[ BOOLEANS ]---------------------------------------------------------------------<#>
Funcion isBefore <- localDate_isBefore(struct_LocalDate, struct_LocalDate_match)
	Definir isBefore Como Logico;
	isBefore = __private_localDate_CompareTo(struct_LocalDate, struct_LocalDate_match) < 0;
FinFuncion

Funcion isAfter <- localDate_isAfter(struct_LocalDate, struct_LocalDate_match)
	Definir isAfter Como Logico;
	isAfter = __private_localDate_CompareTo(struct_LocalDate, struct_LocalDate_match) > 0;
FinFuncion

Funcion isEqual <- localDate_isEqual(struct_LocalDate, struct_LocalDate_match)
	Definir isEqual Como Logico;
	isEqual = __private_localDate_CompareTo(struct_LocalDate, struct_LocalDate_match) == 0;
FinFuncion

Funcion int_result <- __private_localDate_CompareTo(struct_LocalDate, struct_LocalDate_match)
	Definir int_result Como Entero;
	Definir Date_Org, Date_Match Como Real;
	Date_Org = localDate_toEpochDay(struct_LocalDate);
	Date_Match = localDate_toEpochDay(struct_LocalDate_match);
	int_result = int_CompareTo(Date_Org, Date_Match);
FinFuncion
//----[ UNTIL ]------------------------------------------------------------------------<#>
Funcion total <- localDate_until_Years(struct_date_start, struct_date_end)
    Definir total, year_start, year_end Como Entero;
	Definir temp_date Como Texto;
    year_start = localDate_getYear(struct_date_start);
    year_end = localDate_getYear(struct_date_end);
    total = year_end - year_start;
    temp_date = localDate_withYear(struct_date_start, year_end);
    Si localDate_isBefore(struct_date_end, temp_date) Entonces
        total = decrement(total);
    FinSi
FinFuncion

Funcion total <- localDate_until_Months(struct_date_start, struct_date_end)
    Definir total, months_diff, years_diff Como Entero;
    years_diff = decrement_step(localDate_getYear(struct_date_end), localDate_getYear(struct_date_start));
    months_diff = decrement_step(localDate_getMonthValue(struct_date_end), localDate_getMonthValue(struct_date_start));
    total = increment_step((years_diff * 12) , months_diff);
    Si localDate_getDayOfMonth(struct_date_end) < localDate_getDayOfMonth(struct_date_start) Entonces
        total = decrement(total);
    FinSi
FinFuncion

Funcion total <- localDate_until_Days(struct_date_start, struct_date_end)
    Definir total, epoch_start, epoch_end Como Entero;
    epoch_start = localDate_toEpochDay(struct_date_start);
    epoch_end = localDate_toEpochDay(struct_date_end);
    total = decrement_step(epoch_end, epoch_start);
FinFuncion
//----[ BOOLEANS ]---------------------------------------------------------------------<#>
Funcion epoch_days_result <- localDate_toEpochDay(struct_date)
    Definir epoch_days_result Como Entero;
    Definir year, month, day Como Entero;
    Definir accumulated_days, total_since_zero Como Real;
    Definir isLeap Como Logico;
    year = localDate_getYear(struct_date);
    month = localDate_getMonthValue(struct_date);
    day = localDate_getDayOfMonth(struct_date);
    isLeap = localDate_isLeapYear(year);
    total_since_zero = __private_localDate_getDaysFromYears(year);
    accumulated_days = __private_localDate_getAccumulatedDays(decrement(month), isLeap);
    total_since_zero = increment_step(total_since_zero, accumulated_days);
    total_since_zero = increment_step(total_since_zero, day);
    epoch_days_result = decrement_step(total_since_zero, __private_localDate_getEpochOffset());
FinFuncion

Funcion constant_value <- __private_localDate_getEpochOffset
	Definir constant_value Como Entero;
	constant_value = 719528;
FinFuncion

Funcion total_days_years <- __private_localDate_getDaysFromYears(year_int)
    Definir total_days_years Como Real;
    Definir previous_year, leap_days Como Entero;
    previous_year = decrement(year_int);
    total_days_years = previous_year * 365;
    leap_days = math_floor(previous_year / 4);
    leap_days = decrement_step(leap_days, math_floor(previous_year / 100));
    leap_days = increment_step(leap_days, math_floor(previous_year / 400));
    total_days_years = increment_step(total_days_years, leap_days);
FinFuncion

// =========================================================================
// GUÍA DE PATRONES PARA DateTimeFormatter (Java 8+)
// =========================================================================

// --- FECHAS (Dates) ---
// yyyy  : Año completo (Ej: 2026)
// yy    : Año corto (Ej: 26)
// MMMM  : month nombre completo (Ej: Marzo)
// MMM   : month abreviado (Ej: Mar)
// MM    : month número (01-12) -> ¡M mayúscula siempre para month!
// d     : Día del month (1-31)
// D     : Día del año (1-366)
// EEEE  : Nombre del día completo (Ej: Lunes)
// E     : Nombre del día abreviado (Ej: Lun)
// e     : Número de día de la semana (1=Lunes, 7=Domingo)
// w     : Semana del año (1-53)
// W     : Semana del month (1-5)

// --- TIEMPO (Time) ---
// a     : Marcador AM / PM (Cambio de formato)
// H     : Hora militar / formato 24h (00-23)
// h     : Hora estándar / formato 12h (01-12) -> Usar con 'a'
// m     : Minutos (00-59) -> ¡m minúscula siempre para minutos!
// s     : Segundos (00-59)
// S     : Milisegundos / Fracciones de segundo (Ej: SSS)

// --- LITERALES / Texto ---
// ' '   : Comillas simples para escapar Texto (Ej: 'de las')
// 

// =========================================================================
// NOTAS DE SEGURIDAD:
// 1. Mayúsculas importan: M (month) != m (minuto) | H (24h) != h (12h).
// 2. Coherencia: No mezcles 'H' (24h) con 'a' (AM/PM), Java lanzará error.
// 3. Parsing: Si el Texto no coincide EXACTO con el patrón, lanza DateTimeParseException.
// =========================================================================
Funcion Date <- localDate_format(text)
	Definir Date, dateParts, DateTemp Como Texto;
	Definir index Como Numero;
	DimenSion dateParts(3);
	
	dateParts[0] = string_substring_from_start(localDate_now, 4);
	dateParts[1] = string_substring(localDate_now, 4, 6);
	dateParts[2] = string_substring_from_end(localDate_now, 2);
	
	Si string_Contains(text, "Y") Entonces
		index = string_indexOf(text, "Y");
		Date = string_insert(string_Delete(text, index, index+1), dateParts[0], index);
	FinSi
	
	Si string_Contains(text, "M") Entonces
		index = string_indexOf(Date, "M");
		Date = string_insert(string_Delete(Date, index, index+1), dateParts[1], index);
	FinSi
FinFuncion
///$$$$$$[ LOCALTIME ]$$$$$$$$$$$$$$$[  -+0_2 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
//----[ PRIVATE_TIME ]----------------------------------------------------------------<#>
Funcion Time_num <- __private_localTime_Now
	Definir Time_num Como Numero;
	Time_num = HoraActual();
FinFuncion
//in pseint == 1223 (4) \ 06:12:23  pseint == 61223 (5)\ 12:12:23 pseint == 121223 (6)
Funcion time_value_String <- __private_localTime_Now_toString
	Definir time_value_String Como Texto;
	time_value_String = string_fit(num_ToString(__private_localTime_Now()), "000000");
FinFuncion
//----[ INIT ]------------------------------------------------------------------------<#>
Funcion LocalTime_result <- localTime_now
	Definir LocalTime_result, TimeNow_String Como Texto;
	Definir hours, minutes, seconds Como Real;
	TimeNow_String = __private_localTime_Now_toString();
	hours = string_ToNum(string_substring(TimeNow_String, 0, 2));
	minutes = string_ToNum(string_substring(TimeNow_String, 2, 4));
	seconds = string_ToNum(string_substring(TimeNow_String, 4, 6));
	LocalTime_result = localTime_of(hours, minutes, seconds);
FinFuncion

Funcion LocalTime_result <- localTime_of_HourMinute(hours, minutes)
	Definir LocalTime_result Como Texto;
	LocalTime_result = localTime_of(hours, minutes, 0);
FinFuncion

Funcion LocalTime_result <- localTime_of(hours, minutes, seconds)
	Definir LocalTime_result Como Texto;
	Definir seconds_hours, seconds_minutes, seconds_total Como Real;
	si temporal_isValid(hours, minutes, seconds) Entonces
		seconds_hours = duration_TemporalUnitToSeconds(hours, chronoUnit_HOURS());
		seconds_minutes = duration_TemporalUnitToSeconds(minutes, chronoUnit_MINUTES());
		seconds_total = increment_step(seconds_hours, increment_step(seconds_minutes, seconds));
		LocalTime_result =  localTime_ofSecondOfDays(seconds_total);
	SiNo
		error_message_Function("localTime_of(hh,mm,ss)","The given time is not valid [valid:: 00:00:00 - 23:59:59]");
		LocalTime_result =  __private_localTime_ofNull();
	FinSi
FinFuncion

Funcion LocalTime_result <- localTime_ofSecondOfDays(seconds)
	Definir LocalTime_result Como Texto;
	LocalTime_result = linearCollection_newLinearCollection(TEMPORAL_LOCALTIME(), TYPE_FLOAT());
	LocalTime_result = __private_temporal_addSecondOfDays(LocalTime_result, seconds);
FinFuncion

Funcion LocalTime_result <- __private_localTime_ofNull
	Definir LocalTime_result Como Texto;
	LocalTime_result = localTime_ofSecondOfDays(number_Null());
FinFuncion
//----[ BOOLEANS ]---------------------------------------------------------------------<#>
Funcion isBefore <- localTime_isBefore(struct_LocalTime, struct_LocalTime_match)
	Definir isBefore Como Logico;
	isBefore = __private_localTime_CompareTo(struct_LocalTime, struct_LocalTime_match) < 0;
FinFuncion

Funcion isAfter <- localTime_isAfter(struct_LocalTime, struct_LocalTime_match)
	Definir isAfter Como Logico;
	isAfter = __private_localTime_CompareTo(struct_LocalTime, struct_LocalTime_match) > 0;
FinFuncion

Funcion isEqual <- localTime_isEquals(struct_LocalTime, struct_LocalTime_match)
	Definir isEqual Como Logico;
	isEqual = __private_localTime_CompareTo(struct_LocalTime, struct_LocalTime_match) == 0;
FinFuncion

Funcion int_result <- __private_localTime_CompareTo(struct_LocalTime, struct_LocalTime_match)
	Definir int_result Como Entero;
	Definir Time_Org, Time_Match Como Real;
	Time_Org = localTime_getSeconds(struct_LocalTime);
	Time_Match = localTime_getSeconds(struct_LocalTime_match);
	int_result = int_CompareTo(Time_Org, Time_Match);
FinFuncion
//----[ GETTERS ]---------------------------------------------------------------------<#>
Funcion duration_ofUnit <- localTime_getSecondsOfDay(struct_LocalTime)
	Definir duration_ofUnit Como Real;
	duration_ofUnit = linearCollection_getLast(struct_LocalTime);
FinFuncion

Funcion second_ofUnit <- localTime_getHours(struct_LocalTime)
	Definir second_ofUnit Como Real;
	second_ofUnit = duration_secondsToTemporalUnitPart(localTime_getSecondsofDay(struct_LocalTime), chronoUnit_HOURS());
FinFuncion

Funcion second_ofUnit <- localTime_getMinutes(struct_LocalTime)
	Definir second_ofUnit Como Real;
	second_ofUnit = duration_secondsToTemporalUnitPart(localTime_getSecondsofDay(struct_LocalTime), chronoUnit_MINUTES());
FinFuncion

Funcion second_ofUnit <- localTime_getSeconds(struct_LocalTime)
	Definir second_ofUnit Como Real;
	second_ofUnit = duration_secondsToTemporalUnitPart(localTime_getSecondsofDay(struct_LocalTime), chronoUnit_SECONDS());
FinFuncion
//-----[ UTILITIES ]-----------------------------------------------------------------<#>
Funcion seconds_adjusted <- localTime_NormalizeSeconds(seconds_total)
    Definir seconds_adjusted Como Real;
	seconds_adjusted = math_NormalizeCycle(seconds_total, 86400);
FinFuncion

Funcion localTime_Correction <- localTime_cicleCorrector(struct_localTime)
    Definir localTime_Correction Como Texto;
    Definir LocalTime_seconds Como Real;
	LocalTime_seconds = localTime_NormalizeSeconds(temporal_getSeconds(struct_localTime));
	localTime_Correction = __private_temporal_setSecondOfDays(struct_localTime, LocalTime_seconds);
FinFuncion

Funcion Time_ToString <- localTime_ToString(struct_localTime)
	Definir Time_ToString, hours, minutes, seconds Como Texto;
	Definir TimeLocal Como Real;
	TimeLocal = temporal_getSeconds(struct_localTime);
	hours 	  = Num_toString(duration_secondsToTemporalUnitPart(TimeLocal, chronoUnit_HOURS()));
	minutes   = Num_toString(duration_secondsToTemporalUnitPart(TimeLocal, chronoUnit_MINUTES()));
	seconds   = Num_toString(duration_secondsToTemporalUnitPart(TimeLocal, chronoUnit_SECONDS()));
	hours 	  = string_fit(hours, "00");
	minutes   = string_fit(minutes, "00");
	seconds   = string_fit(seconds, "00");
	Time_ToString = string_append_withSeparator(hours, minutes, ":");
	Time_ToString = string_append_withSeparator(Time_ToString, seconds, ":");
FinFuncion
//-----[ PLUS ]----------------------------------------------------------------------<#>
Funcion struct_time <- localTime_PlusHours(struct_localTime, num_increment)
    Definir struct_time Como Texto;
    struct_time = localTime_PlusUnitTemporal(struct_localTime, num_increment, chronoUnit_HOURS());
FinFuncion

Funcion struct_time <- localTime_PlusMinutes(struct_localTime, num_increment)
    Definir struct_time Como Texto;
    struct_time = localTime_PlusUnitTemporal(struct_localTime, num_increment, chronoUnit_MINUTES());
FinFuncion

Funcion struct_time <- localTime_PlusSeconds(struct_localTime, num_increment)
    Definir struct_time Como Texto;
    struct_time = localTime_PlusUnitTemporal(struct_localTime, num_increment, chronoUnit_SECONDS());
FinFuncion

Funcion struct_time <- localTime_PlusUnitTemporal(struct_localTime, num_increment, type_temporal)
    Definir struct_time Como Texto;
    struct_time = temporal_PlusUnitTemporal(struct_localTime, num_increment, type_temporal);
	struct_time = localTime_cicleCorrector(struct_time);
FinFuncion
//-----[ MINUS ]---------------------------------------------------------------------<#>
Funcion struct_time <- localTime_MinusHours(struct_localTime, num_decrement)
    Definir struct_time Como Texto;
    struct_time = localTime_PlusHours(struct_localTime, math_Negated(num_decrement));
FinFuncion

Funcion struct_time <- localTime_MinusMinutes(struct_localTime, num_decrement)
    Definir struct_time Como Texto;
    struct_time = localTime_PlusMinutes(struct_localTime, math_Negated(num_decrement));
FinFuncion

Funcion struct_time <- localTime_MinusSeconds(struct_localTime, num_decrement)
    Definir struct_time Como Texto;
    struct_time = localTime_PlusSeconds(struct_localTime, math_Negated(num_decrement));
FinFuncion
//-----[ WITH ]----------------------------------------------------------------------<#>
Funcion struct_time <- localTime_withHour(struct_localTime, num_define)
	Definir struct_time Como Texto;
	struct_time = localTime_with(struct_localTime, num_define, chronoUnit_HOURS());
FinFuncion

Funcion struct_time <- localTime_withMinute(struct_localTime, num_define)
	Definir struct_time Como Texto;
	struct_time = localTime_with(struct_localTime, num_define, chronoUnit_MINUTES());
FinFuncion

Funcion struct_time <- localTime_withSecond(struct_localTime, num_define)
	Definir struct_time Como Texto;
	struct_time = localTime_with(struct_localTime, num_define, chronoUnit_SECONDS());
FinFuncion

Funcion struct_time <- localTime_with(struct_localTime, num_define, type_temporal)
	Definir struct_time Como Texto;
	struct_time = temporal_with(struct_temporal, num_define, type_temporal);
FinFuncion
//-----[ TRUNCATE ]-----------------------------------------------------------------<#>
Funcion struct_time <- localTime_truncatedToHours(struct_localTime)
    Definir struct_time Como Texto;
    struct_time = localTime_truncatedTo(struct_localTime, chronoUnit_HOURS());
FinFuncion

Funcion struct_time <- localTime_truncatedToMinutes(struct_localTime)
    Definir struct_time Como Texto;
    struct_time = localTime_truncatedTo(struct_localTime, chronoUnit_MINUTES());
FinFuncion

Funcion struct_time <- localTime_truncatedTo(struct_localTime, type_temporal)
	Definir struct_time Como Texto;
    Definir time_now, time_part, time_truncate Como Real;
    time_now = temporal_getSeconds(struct_localTime);
    Segun type_temporal Hacer
        Caso chronoUnit_HOURS():
			time_part = math_module(time_now, chronoUnit_getDuration(chronoUnit_HOURS()));
        Caso chronoUnit_MINUTES():
			time_part = math_module(time_now, chronoUnit_getDuration(chronoUnit_MINUTES()));
    FinSegun
	time_truncate = decrement_step(time_now, time_part);
    struct_time = __private_temporal_setSecondOfDays(struct_localTime, time_truncate );
FinFuncion
///$$$$$$[ LOCALDATETIME ]$$$$$$$$$$$[  -+0_3 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion string_dateTime <- localDateTime_toString(localDateTime)
	Definir string_dateTime, string_date, string_time Como Texto;
	string_date = localDate_ToString(localDateTime);
	string_time = localTime_ToString(localDateTime);
	string_dateTime = string_append_withSeparator(string_date, string_time," ");
FinFuncion
//----[ OF_TEMPORAL ]-----------------------------------------------------------------<#>
Funcion struct_dateTime <- localDateTime_of_monthName_hourMinute(year, MONTH_NAME, dayOfMonth, hour, minute)
	Definir struct_dateTime Como Texto;
	struct_dateTime = localDateTime_of_monthName(year, MONTH_NAME, dayOfMonth, hour, minute, 0);
FinFuncion

Funcion struct_dateTime <- localDateTime_of_monthName(year, MONTH_NAME, dayOfMonth, hour, minute, second)
	Definir struct_dateTime Como Texto;
	struct_dateTime = localDateTime_of(year, month_value(MONTH_NAME), dayOfMonth, hour, minute, second);
FinFuncion
Funcion struct_dateTime <- localDateTime_of_hourMinute(year, month, dayOfMonth, hour, minute)
	Definir struct_dateTime Como Texto;
	struct_dateTime = localDateTime_of(year, month, dayOfMonth, hour, minute, 0);
FinFuncion

Funcion struct_dateTime <- localDateTime_of(year, month, dayOfMonth, hour, minute, second)
	Definir struct_dateTime, struct_date Como Texto;
	struct_date = localDate_of(year, month, dayOfMonth);
	struct_dateTime = localDate_atTime(struct_date, hour, minute, second);
FinFuncion

Funcion struct_dateTime <- localDateTime_of_struct_DateAndTime(localDate, localTime)
	Definir struct_dateTime Como Texto;
	struct_dateTime = localDate_atTime_fromLocalTime(localDate, localTime);
FinFuncion
//-----[ PLUS ]----------------------------------------------------------------------<#>
Funcion result_dateTime <- localDateTime_plusYears(struct_dateTime, unit_plus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_plusYears(struct_dateTime, unit_plus);
FinFuncion

Funcion result_dateTime <- localDateTime_plusMonths(struct_dateTime, unit_plus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_plusMonths(struct_dateTime, unit_plus);
FinFuncion

Funcion result_dateTime <- localDateTime_plusWeeks(struct_dateTime, unit_plus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_plusWeeks(struct_dateTime, unit_plus);
FinFuncion

Funcion result_dateTime <- localDateTime_plusDays(struct_dateTime, unit_plus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_plusDays(struct_dateTime, unit_plus);
FinFuncion

Funcion result_dateTime <- localDateTime_plusHours(struct_dateTime, unit_plus)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_plusHours(struct_dateTime, unit_plus);
FinFuncion

Funcion result_dateTime <- localDateTime_plusMinutes(struct_dateTime, unit_plus)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_plusMinutes(struct_dateTime, unit_plus);
FinFuncion

Funcion result_dateTime <- localDateTime_plusSeconds(struct_dateTime, unit_plus)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_plusSeconds(struct_dateTime, unit_plus);
FinFuncion
//-----[ MINUS ]---------------------------------------------------------------------<#>
Funcion result_dateTime <- localDateTime_minusYears(struct_dateTime, unit_minus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_minusYears(struct_dateTime, unit_minus);
FinFuncion

Funcion result_dateTime <- localDateTime_minusMonths(struct_dateTime, unit_minus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_minusMonths(struct_dateTime, unit_minus);
FinFuncion

Funcion result_dateTime <- localDateTime_minusWeeks(struct_dateTime, unit_minus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_minusWeeks(struct_dateTime, unit_minus);
FinFuncion

Funcion result_dateTime <- localDateTime_minusDays(struct_dateTime, unit_minus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_minusDays(struct_dateTime, unit_minus);
FinFuncion

Funcion result_dateTime <- localDateTime_minusHours(struct_dateTime, unit_minus)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_minusHours(struct_dateTime, unit_minus);
FinFuncion

Funcion result_dateTime <- localDateTime_minusMinutes(struct_dateTime, unit_minus)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_minusMinutes(struct_dateTime, unit_minus);
FinFuncion

Funcion result_dateTime <- localDateTime_minusSeconds(struct_dateTime, unit_minus)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_minusSeconds(struct_dateTime, unit_minus);
FinFuncion
//-----[ WITH ]----------------------------------------------------------------------<#>
Funcion result_dateTime <- localDateTime_withYear(struct_dateTime, year)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_withYear(struct_dateTime, year);
FinFuncion

Funcion result_dateTime <- localDateTime_withMonth(struct_dateTime, month)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_withMonth(struct_dateTime, month);
FinFuncion

Funcion result_dateTime <- localDateTime_withDayOfMonth(struct_dateTime, dayOfMonth)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_withDayOfMonth(struct_dateTime, dayOfMonth);
FinFuncion

Funcion result_dateTime <- localDateTime_withDayOfYear(struct_dateTime, dayOfYear)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_withDayOfYear(struct_dateTime, dayOfYear);
FinFuncion

Funcion result_dateTime <- localDateTime_withHour(struct_dateTime, hour)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_withHour(struct_dateTime, hour);
FinFuncion

Funcion result_dateTime <- localDateTime_withMinute(struct_dateTime, minute)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_withMinute(struct_dateTime, minute);
FinFuncion

Funcion result_dateTime <- localDateTime_withSecond(struct_dateTime, second)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_withSecond(struct_dateTime, second);
FinFuncion
//----[ BOOLEANS ]---------------------------------------------------------------------<#>
Funcion isBefore <- localDateTime_isBefore(struct_dt1, struct_dt2)
    Definir isBefore Como Logico;
    isBefore = __private_localDateTime_CompareTo(struct_dt1, struct_dt2) < 0;
FinFuncion

Funcion isAfter <- localDateTime_isAfter(struct_dt1, struct_dt2)
    Definir isAfter Como Logico;
    isAfter = __private_localDateTime_CompareTo(struct_dt1, struct_dt2) > 0;
FinFuncion

Funcion isEqual <- localDateTime_isEqual(struct_dt1, struct_dt2)
    Definir isEqual Como Logico;
    isEqual = __private_localDateTime_CompareTo(struct_dt1, struct_dt2) == 0;
FinFuncion

Funcion int_result <- __private_localDateTime_CompareTo(struct_dt1, struct_dt2)
    Definir int_result Como Entero;
    int_result = __private_localDate_CompareTo(struct_dt1, struct_dt2);
    Si int_result == 0 Entonces
        int_result = __private_localTime_CompareTo(struct_dt1, struct_dt2);
    FinSi
FinFuncion
///$$$$$[ DURATION ]$$$$$$$$$$$$$$$$$[  -+0_4 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
//parsed ISO:8601 "PT1H15M30.5S" y TruncateTo segun el tipo
//----[ GETTERS ]---------------------------------------------------------------------<#>
Funcion duration_ofUnit <- duration_ofDays(number_Units)
	Definir duration_ofUnit Como Texto;
	duration_ofUnit = duration_of(number_Units, chronoUnit_DAYS());
FinFuncion

Funcion duration_ofUnit <- duration_ofHours(number_Units)
	Definir duration_ofUnit Como Texto;
	duration_ofUnit = duration_of(number_Units, chronoUnit_HOURS());
FinFuncion

Funcion duration_ofUnit <- duration_ofMinutes(number_Units)
	Definir duration_ofUnit Como Texto;
	duration_ofUnit = duration_of(number_Units, chronoUnit_MINUTES());
FinFuncion

Funcion duration_ofUnit <- duration_ofSeconds(number_Units)
	Definir duration_ofUnit Como Texto;
	duration_ofUnit = duration_of(number_Units, chronoUnit_SECONDS());
FinFuncion

Funcion duration_ofUnit <- duration_of(number_Units, Temporal_Type)
	Definir duration_ofUnit Como Texto;
	Definir second_duration Como Real;
	duration_ofUnit = linearCollection_newLinearCollection(TEMPORAL_AMOUNT_DURATION(), TYPE_FLOAT());
	second_duration = duration_TemporalUnitToSeconds(number_Units, Temporal_Type);
	duration_ofUnit = linearCollection_addLast_ByType(duration_ofUnit, second_duration, TYPE_FLOAT());
FinFuncion

Funcion duration_ofUnit <- duration_getSeconds(struct_Duration)
	Definir duration_ofUnit Como Real;
	duration_ofUnit = temporal_getSeconds(struct_Duration);
FinFuncion
//----[ PARSER ]---------------------------------------------------------------------<#>
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

Funcion second_ofUnit <- duration_minutesToSeconds(unit_second)
	Definir second_ofUnit Como Real;
	second_ofUnit = unit_second * chronoUnit_getDuration(chronoUnit_MINUTES);
FinFuncion

Funcion second_ofUnit <- duration_hoursToSeconds(unit_second)
	Definir second_ofUnit Como Real;
	second_ofUnit = unit_second * chronoUnit_getDuration(chronoUnit_HOURS);
FinFuncion

Funcion second_ofUnit <- temporal_daysToSecond(unit_second)
	Definir second_ofUnit Como Real;
	second_ofUnit = unit_second * chronoUnit_getDuration(chronoUnit_DAYS);
FinFuncion

Funcion unit_Res <- duration_secondsToMinutes(unit_second)
    Definir unit_Res Como Real;
    unit_Res = unit_second / chronoUnit_getDuration(chronoUnit_MINUTES());
FinFuncion

Funcion unit_Res <- duration_secondsToHours(unit_second)
    Definir unit_Res Como Real;
    unit_Res = unit_second / chronoUnit_getDuration(chronoUnit_HOURS());
FinFuncion

Funcion unit_Res <- duration_secondsToDay(unit_second)
    Definir unit_Res Como Real;
    unit_Res = unit_second / chronoUnit_getDuration(chronoUnit_DAYS());
FinFuncion
//----[ GETTERS ]---------------------------------------------------------------------<#>
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

Funcion second_ofUnit <- duration_ToDays(struct_temporal)
	Definir second_ofUnit Como Real;
	second_ofUnit = duration_secondsToTemporalUnit(temporal_getSeconds(struct_temporal), chronoUnit_DAYS());
FinFuncion

Funcion second_ofUnit <- duration_ToHours(struct_temporal)
	Definir second_ofUnit Como Real;
	second_ofUnit = duration_secondsToTemporalUnit(temporal_getSeconds(struct_temporal), chronoUnit_HOURS());
FinFuncion

Funcion second_ofUnit <- duration_ToMinutes(struct_temporal)
	Definir second_ofUnit Como Real;
	second_ofUnit = duration_secondsToTemporalUnit(temporal_getSeconds(struct_temporal), chronoUnit_MINUTES());
FinFuncion

Funcion second_ofUnit <- duration_ToSeconds(struct_temporal)
	Definir second_ofUnit Como Real;
	second_ofUnit = duration_secondsToTemporalUnit(temporal_getSeconds(struct_temporal), chronoUnit_SECONDS());
FinFuncion
//----[ TO_PARS ]---------------------------------------------------------------------<#>
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

Funcion value_part <- duration_ToDaysPart(struct_temporal)
    Definir value_part Como Real;
    value_part = duration_secondsToTemporalUnitPart(temporal_getSeconds(struct_temporal), chronoUnit_DAYS());
FinFuncion

Funcion value_part <- duration_ToHoursPart(struct_temporal)
    Definir value_part Como Real;
    value_part = duration_secondsToTemporalUnitPart(temporal_getSeconds(struct_temporal), chronoUnit_HOURS());
FinFuncion

Funcion second_ofUnit <- duration_ToMinutesPart(struct_temporal)
    Definir second_ofUnit Como Real;
    second_ofUnit = duration_secondsToTemporalUnitPart(temporal_getSeconds(struct_temporal), chronoUnit_MINUTES());
FinFuncion

Funcion second_ofUnit <- duration_ToSecondsPart(struct_temporal)
    Definir second_ofUnit Como Real;
    second_ofUnit = duration_secondsToTemporalUnitPart(temporal_getSeconds(struct_temporal), chronoUnit_SECONDS());
FinFuncion
//----[ BOOLEANS ]---------------------------------------------------------------------<#>
Funcion isBetween <- duration_isNegative(struct_duration)
	Definir isBetween Como Logico;
	isBetween = duration_getSeconds(struct_duration) < 0;
FinFuncion

Funcion isBetween <- duration_isZero(struct_duration)
	Definir isBetween Como Logico;
	isBetween = duration_getSeconds(struct_duration) == 0;
FinFuncion
//----[ UTITLITIES ]-----------------------------------------------------------------<#>
Funcion struct_difference <- duration_between(duration_Start, duration_End)
    Definir struct_difference Como Texto;
    Definir difference Como Real;
    difference = decrement_step(duration_getSeconds(duration_End), duration_getSeconds(duration_Start));
    struct_difference = duration_ofSeconds(difference);
FinFuncion

Funcion struct_duration_result <- duration_Negated(struct_duration)
	Definir struct_duration_result Como Texto;
    Definir unit_inner Como Real;
	unit_inner = math_Negated(duration_getSeconds(struct_duration));
	struct_duration_result = linearCollection_SetElement_ToString(struct_duration, 0, num_ToString(unit_inner));	
FinFuncion

Funcion struct_duration_result <- duration_abs(struct_duration)
	Definir struct_duration_result Como Texto;
    Definir unit_inner Como Real;
	unit_inner = math_abs(duration_getSeconds(struct_duration));
	struct_duration_result = linearCollection_SetElement_ToString(struct_duration, 0, num_ToString(unit_inner));	
FinFuncion
//----[ OPERATIONS ]-----------------------------------------------------------------<#>
Funcion struct_duration_result <- duration_MultipliedBy(struct_duration, num_Mult)
	Definir struct_duration_result Como Texto;
    Definir unit_inner Como Real;
	unit_inner = duration_getSeconds(struct_duration) * num_Mult;
	struct_duration_result = linearCollection_SetElement_ToString(struct_duration, 0, num_ToString(unit_inner));	
FinFuncion

Funcion struct_duration_result <- duration_DividedBy(struct_duration, num_Div)
	Definir struct_duration_result Como Texto;
    Definir unit_inner Como Real;
	unit_inner = math_div(duration_getSeconds(struct_duration), num_Div);
	struct_duration_result = linearCollection_SetElement_ToString(struct_duration, 0, num_ToString(unit_inner));	
FinFuncion
//----[ PLUS ]------------------------------------------------------------------------<#>
Funcion struct_duration_result <- duration_PlusDays(struct_duration, num_increment)
	Definir struct_duration_result Como Texto;
	struct_duration_result = temporal_PlusUnitTemporal(struct_duration, num_increment, chronoUnit_DAYS());
FinFuncion

Funcion struct_duration_result <- duration_PlusHours(struct_duration, num_increment)
    Definir struct_duration_result Como Texto;
    struct_duration_result = temporal_PlusUnitTemporal(struct_duration, num_increment, chronoUnit_HOURS());
FinFuncion

Funcion struct_duration_result <- duration_PlusMinutes(struct_duration, num_increment)
    Definir struct_duration_result Como Texto;
    struct_duration_result = temporal_PlusUnitTemporal(struct_duration, num_increment, chronoUnit_MINUTES());
FinFuncion

Funcion struct_duration_result <- duration_Plus(struct_duration, struct_duration_minus)
    Definir struct_duration_result Como Texto;
    struct_duration_result = temporal_PlusNumber(struct_duration, duration_getSeconds(struct_duration_minus));
FinFuncion

Funcion struct_duration_result <- duration_PlusSeconds(struct_duration, num_increment)
    Definir struct_duration_result Como Texto;
    struct_duration_result = temporal_PlusUnitTemporal(struct_duration, num_increment, chronoUnit_SECONDS());
FinFuncion
//----[ MINUS ]----------------------------------------------------------------------<#>
Funcion struct_duration_result <- duration_MinusDays(struct_duration, num_decrement)
	Definir struct_duration_result Como Texto;
	struct_duration_result = temporal_MinusUnitTemporal(struct_duration, num_decrement, chronoUnit_DAYS());
FinFuncion

Funcion struct_duration_result <- duration_MinusHours(struct_duration, num_decrement)
    Definir struct_duration_result Como Texto;
    struct_duration_result = temporal_PlusUnitTemporal(struct_duration, math_Negated(num_decrement), chronoUnit_HOURS());
FinFuncion

Funcion struct_duration_result <- duration_MinusMinutes(struct_duration, num_decrement)
    Definir struct_duration_result Como Texto;
    struct_duration_result = temporal_PlusUnitTemporal(struct_duration, math_Negated(num_decrement), chronoUnit_MINUTES());
FinFuncion

Funcion struct_duration_result <- duration_MinusSeconds(struct_duration, num_decrement)
    Definir struct_duration_result Como Texto;
    struct_duration_result = temporal_PlusUnitTemporal(struct_duration, math_Negated(num_decrement), chronoUnit_SECONDS());
FinFuncion

Funcion struct_duration_result <- duration_Minus(struct_duration, struct_duration_minus)
    Definir struct_duration_result Como Texto;
    struct_duration_result = temporal_PlusNumber(struct_duration, math_Negated(duration_getSeconds(struct_duration_minus)));
FinFuncion
//----[ COMPARE_TO ]-----------------------------------------------------------------<#>
Funcion int_result <- duration_CompareTo(struct_duration, struct_duration_match)
	Definir int_result Como Entero;
	Definir duration_Org, duration_Match Como Real;
	duration_Org = duration_getSeconds(struct_duration);
	duration_Match = duration_getSeconds(struct_duration_match);
	int_result = int_CompareTo(duration_Org, duration_Match);
FinFuncion
///$$$$$[ PERIOD  ]$$$$$$$$$$$$$$$$$$[  -+0_5 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion struct_period <- period_of(year, month, day)
    Definir struct_period Como Texto;
    struct_period = linearCollection_newLinearCollection(TEMPORAL_LOCALDATE(), TYPE_INT());
	struct_period = __private_temporalDate_add(struct_period, year, month, day);
FinFuncion

Funcion struct_period <- period_ofYears(years)
	Definir struct_period Como Texto;
    struct_period = period_of(years, 0, 0);
FinFuncion

Funcion struct_period <- period_ofMonths(months)
	Definir struct_period Como Texto;
    struct_period = period_of(0, months, 0);
FinFuncion

Funcion struct_period <- period_ofWeeks(weeks)
    Definir struct_period Como Texto;
    struct_period = period_of(0, 0, weeks * 7);
FinFuncion

Funcion struct_period <- period_ofDays(days)
	Definir struct_period Como Texto;
    struct_period = period_of(0, 0, days);
FinFuncion

Funcion struct_period <- __private_period_ofNull
	Definir struct_period Como Texto;
	struct_period = period_of(number_Null(), number_Null(), number_Null());
FinFuncion

Funcion years <- period_getYear(struct_period)
	Definir years Como Entero;
    years = linearCollection_GetElement(struct_period, 0);
FinFuncion

Funcion months <- period_getMonth(struct_period)
	Definir months Como Entero;
    months = linearCollection_GetElement(struct_period, 1);
FinFuncion

Funcion days <- period_getDay(struct_period)
	Definir days Como Entero;
    days = linearCollection_GetElement(struct_period, 2);
FinFuncion

Funcion struct_period_res <- period_withYears(struct_period, years)
    Definir struct_period_res Como Texto;
    struct_period_res = linearCollection_SetElement_ToString(struct_period, 0, num_ToString(years));
FinFuncion

Funcion struct_period_res <- period_withMonths(struct_period, months)
    Definir struct_period_res Como Texto;
    struct_period_res = linearCollection_SetElement_ToString(struct_period, 1, num_ToString(months));
FinFuncion

Funcion struct_period_res <- period_withDays(struct_period, days)
    Definir struct_period_res Como Texto;
    struct_period_res = linearCollection_SetElement_ToString(struct_period, 2, num_ToString(days));
FinFuncion

Funcion result_period <- period_plusYear(struct_period, unit_plus)
	Definir result_period Como Texto;
	Definir year_date Como Entero;
	year_date = increment_step(period_getYear(struct_period), unit_plus);
	result_period = period_withYears(struct_period, year_date);
FinFuncion

Funcion result_period <- period_plusMonths(struct_period, unit_plus)
    Definir result_period Como Texto;
    Definir month_date Como Entero;
    month_date = increment_step(period_getMonth(struct_period), unit_plus);
    result_period = period_withMonths(struct_period, month_date);
FinFuncion

Funcion result_period <- period_plusDays(struct_period, unit_plus)
    Definir result_period Como Texto;
    Definir day_date Como Entero;
    day_date = increment_step(period_getDay(struct_period), unit_plus);
	result_period = period_withDays(struct_period, day_date);
FinFuncion

Funcion result_period <- period_minusYear(struct_period, unit_minus)
	Definir result_period Como Texto;
	result_period = period_plusYear(struct_period, math_Negated(unit_minus));
FinFuncion

Funcion result_period <- period_minusMonths(struct_period, unit_minus)
	Definir result_period Como Texto;
	result_period = period_plusMonths(struct_period, math_Negated(unit_minus));
FinFuncion

Funcion result_period <- period_minusDays(struct_period, unit_minus)
	Definir result_period Como Texto;
	result_period = period_plusDays(struct_period, math_Negated(unit_minus));
FinFuncion

Funcion struct_period_result <- period_multipliedBy(struct_period, scalar)
    Definir year, month, day Como Entero;
    year = period_getYear(struct_period) * scalar;
    month = period_getMonth(struct_period) * scalar;
    day = period_getDay(struct_period) * scalar;
    struct_period_result = period_of(year, month, day);
FinFuncion

Funcion struct_period_res <- period_negated(struct_period)
    Definir year, month, day Como Entero;
    year = math_Negated(period_getYear(struct_period));
    month = math_Negated(period_getMonth(struct_period));
    day = math_Negated(period_getDay(struct_period));
    struct_period_res = period_of(year, month, day);
FinFuncion

Funcion period_string <- period_toString(struct_period)
    Definir period_string, period_array Como Texto;
    Dimension period_array[3];
    period_array[0] = string_append("Y:", num_ToString(period_getYear(struct_period)));
    period_array[1] = string_append("M:", num_ToString(period_getMonth(struct_period)));
    period_array[2] = string_append("D:", num_ToString(period_getDay(struct_period)));
    period_string = array_ofstring_separator(period_array, 3, " ", TYPE_STRING());
FinFuncion

Funcion sandbox_development
	Definir struct_date, struct_date2 Como Texto;
	Definir num, i Como Numero;
	num = 0;
	struct_date  = period_of(100,213,349);
	Escribir period_toString((period_normalized(struct_date)));
FinFuncion

Funcion result_period <- period_normalized(struct_period)
    Definir result_period Como Texto;
    Definir total_months, years_part, months_part, final_years Como Entero;
    total_months = period_getMonth(struct_period);
    years_part = math_truncate(total_months / 12);
    months_part = math_module(total_months, 12);
    final_years = increment_step(period_getYear(struct_period), years_part);
    result_period = period_withYears(struct_period, final_years);
    result_period = period_withMonths(result_period, months_part);
FinFuncion

Funcion struct_period <- period_between(struct_date_start, struct_date_end)
    Definir year, total_months, month, day, d_start, d_end Como Entero;
    Definir struct_period, previous_month_date Como Texto;
    total_months = localDate_until_Months(struct_date_start, struct_date_end);
    year = math_truncate(total_months / 12);
    month = math_module(total_months, 12);
    d_start = localDate_getDayOfMonth(struct_date_start);
    d_end = localDate_getDayOfMonth(struct_date_end);
    Si d_end >= d_start Entonces
        day = decrement_step(d_end, d_start);
    Sino
        previous_month_date = localDate_minusMonths(struct_date_end, 1);
        day = decrement_step(localDate_lengthOfMonth(localDate_getYear(struct_date_end), previous_month_date), d_start) + d_end;
    FinSi    
    struct_period = period_of(year, month, day);
FinFuncion
///%%%%%[ OBJECT ]%%%%%%%%%%%%%%%%%%%[   #+3  ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//....Object
Funcion symbol_char <- symbol_ObjectSeparator
	Definir symbol_char Como Texto;
	symbol_char = ".";
FinFuncion

Funcion object_result <- object_New(name_object)
	Definir object_result Como Texto;
	object_result = linearCollection_newLinearCollection(TYPE_OBJECT(), string_append(name_object, symbol_ExtraData()));
FinFuncion

Funcion object_result <- object_Property_Add(struct_Object, property_name, TYPE)
	Definir object_result Como Texto;
	object_result = object_Property_Add_GiveValue(struct_Object, property_name, value_getNullType(TYPE), TYPE);
FinFuncion

Funcion object_result <- object_Property_Add_GiveValue(struct_Object, property_name, value, TYPE)
	Definir object_result, new_Data, property_lowerCase Como Texto;
	Si object_Property_Exist(struct_Object, property_name) Entonces
		object_result = struct_Object;
		error_message_Function("object_Property_Add_GiveValue", string_append("property exist :", property_name));
	SiNo
		property_lowerCase = string_ToLowerCase(property_name);
		new_Data = string_append_withSeparator(property_lowerCase, TYPE, symbol_Key_Value());
		new_Data = string_append(new_Data, symbol_Separator());
		object_result = string_insert(struct_Object, new_Data, increment(string_indexOf(struct_Object, symbol_ExtraData())));
		object_result = linearCollection_addLast_ByType(object_result, value, TYPE);
	FinSi
FinFuncion

//....get
Funcion element_Result <- object_Property_GetValue(struct_Object, property_name)
	Definir TYPE, data_Inner Como Texto;
	Definir index_innerObject, center_info Como Numero;
	index_innerObject = string_indexOf(property_name, symbol_ObjectSeparator());
	si index_innerObject > 0 Entonces
		data_Inner = __private_object_Property_GetData(struct_Object, property_name, index_innerObject);
		center_info = string_indexOf(data_Inner, symbol_ExtraData());
		property_name = string_substring(data_Inner, 0, center_info);
		struct_Object = string_substring_from(data_Inner, increment(center_info));
	FinSi
	
	TYPE = object_Property_GetType(struct_Object, property_name);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = value_Parser_StringToType(object_Property_GetValue_toString(struct_Object, property_name), TYPE);
FinFuncion

Funcion property_Value  <- object_Property_GetValue_toString(struct_Object, property_name)
	Definir property_Value, data_Inner Como Texto;
	Definir index_innerObject, center_info Como Numero;
	index_innerObject = string_indexOf(property_name, symbol_ObjectSeparator());
	si index_innerObject > 0 Entonces
		data_Inner = __private_object_Property_GetData(struct_Object, property_name, index_innerObject);
		center_info = string_indexOf(data_Inner, symbol_ExtraData());
		property_name = string_substring(data_Inner, 0, center_info);
		struct_Object = string_substring_from(data_Inner, increment(center_info));
	FinSi
	
	si object_Property_Exist(struct_Object, property_name) Entonces
		property_Value = linearCollection_getElement_toString(struct_Object, object_Property_GetInnerIndex(struct_Object, property_name));
	FinSi
FinFuncion

Funcion object_Data <- __private_object_Property_GetData(struct_Object, property_name, index_innerObject)
	Definir object_Data, Innerobject_info, property_search Como Texto;
	Mientras index_innerObject >= 0 Hacer
		property_search = string_Delete(property_name, index_innerObject, string_Length(property_name));
		property_name = string_substring_from(property_name, increment(index_innerObject));
		struct_Object = linearCollection_getElement_toString(struct_Object, object_Property_GetInnerIndex(struct_Object, property_search));
		index_innerObject = string_indexOf(property_name, symbol_ObjectSeparator());
	FinMientras
	
	si object_Property_Exist(struct_Object, property_name) Entonces
		object_Data = string_append_withSeparator(property_name, struct_Object, symbol_ExtraData());
	SiNo
		Innerobject_info = string_Null();
		error_message_Function("__private_object_Property_GetData", string_append_withSeparator("property no exist :: ", " :: ", property_name));
	FinSi
FinFuncion
//......set
Funcion object_Result <- object_Property_SetValue(struct_Object, property_name, property_Value)
	Definir object_Result Como Texto;
	object_Result = object_Property_SetValue_ToSeparator(struct_Object, property_name, property_value, symbol_ObjectSeparator);
FinFuncion

Funcion object_Result <- object_Property_SetValue_ToSeparator(struct_Object, property_name, property_value, separator)
	Definir object_Result Como Texto;
	object_Result = object_Property_ModifyOrRemove_ToSeparator(struct_Object, property_name, property_value, separator, false());
FinFuncion

Funcion object_Result <- object_Property_ModifyOrRemove_ToSeparator(struct_Object, property_name, property_value, separator, isRemove)
    Definir object_Result, current_Key , stack_Objects, stack_Keys Como Texto;
    Definir dot_Index, property_Index, property_InnerIndex Como Numero;
    Definir property_Type, object_Modify_string Como Texto;
    Definir i, stack_Pointer, size_arrays, index_property, index_property_end Como Numero;
	size_arrays = string_countMatches(property_name, separator);
	si size_arrays > 0 Entonces
		stack_Pointer = 0;
		Dimension stack_Objects[size_arrays];
		Dimension stack_Keys[size_arrays];
		
		Mientras string_indexOf(property_name, separator) >= 0 Hacer
			dot_Index = string_indexOf(property_name, separator);
			current_Key = string_substring(property_name, 0, dot_Index);
			stack_Objects[stack_Pointer] = struct_Object;
			stack_Keys[stack_Pointer] = current_Key;
			stack_Pointer = increment(stack_Pointer);
			
			struct_Object = linearCollection_getElement_toString(struct_Object, object_Property_GetInnerIndex(struct_Object, current_Key));
			property_name = string_substring_from(property_name, increment(dot_Index));
		FinMientras
	FinSi
    property_Index = object_Property_GetIndex(struct_Object, property_name);
	Si property_Index  < 0 Entonces
		object_Result = struct_Object;
		error_message_Function("object_Property_SetValue", string_append("property no exist: ", property_name));
	SiNo
		property_InnerIndex = __private_object_Property_GetInnerIndex_IndexProperty(struct_Object, property_name, property_Index);
		property_Type = __private_object_Property_GetType_IndexProperty(struct_Object, property_name, property_Index);
		si isRemove Entonces
			object_Modify_string = linearCollection_RemoveElement(struct_Object, property_InnerIndex);
			index_property = object_Property_GetIndex(struct_Object, property_name);
			index_property_end = increment(string_indexOf_fromIndex(struct_Object, symbol_Separator(), index_property));
			object_Modify_string = string_Delete(object_Modify_string, index_property, index_property_end);
		SiNo
			object_Modify_string = linearCollection_SetElement_ToType(struct_Object, property_InnerIndex, property_value, property_Type);
		FinSi
		
		Para i = decrement(stack_Pointer) Hasta 0 con Paso -1 Hacer
			struct_Object = stack_Objects[i];
			current_Key = stack_Keys[i];
			property_Index = object_Property_GetIndex(struct_Object, current_Key);
			property_InnerIndex = __private_object_Property_GetInnerIndex_IndexProperty(struct_Object, current_Key, property_Index);
			property_Type = __private_object_Property_GetType_IndexProperty(struct_Object, current_Key, property_Index);
			object_Modify_string = linearCollection_SetElement_ToType(struct_Object, property_InnerIndex, object_Modify_string, property_Type);
		FinPara
		object_Result = object_Modify_string;
	FinSi
FinFuncion

Funcion object_Result <- object_Property_Remove(struct_Object, property_name)
	Definir object_Result Como Texto;
	object_Result = object_Property_ModifyOrRemove_ToSeparator(struct_Object, property_name, string_Null(), symbol_ObjectSeparator(), true());
FinFuncion

Funcion object_result <- object_InheritsFrom(object_Original, object_Hereditary)
	Definir object_result Como Texto;
	object_result = __private_object_process_AddOrRemove_general(object_Original, object_Hereditary, false());
FinFuncion

Funcion object_depure <- object_Remove_CommonPropertiesFrom(object_Original, object_Compartor)
	Definir object_depure Como Texto;
	object_depure = __private_object_process_AddOrRemove_general(object_Original, object_Compartor, true());
FinFuncion
//.....................................................................................Helpers
Funcion isObject <- string_isObject(str_struct)
	Definir isObject Como Logico;
	isObject = string_Length(str_struct) >= string_Length(object_Empty("")) & !string_isEmpty(object_getName(str_struct));
FinFuncion

Funcion object_IsEquals <- object_isType(object_Select, name)
	Definir object_IsEquals Como Logico;
	object_IsEquals = string_isObject(object_Select);
	si object_IsEquals Entonces
		object_IsEquals = string_isEquals(object_getName(object_Select), name);
	FinSi
FinFuncion

Funcion object_Name <- object_getName(struct_Object)
	Definir object_Name Como Texto;
	object_Name = collection_getContent_Between_Symbols(struct_Object, symbol_TypeArea(), symbol_ExtraData());
FinFuncion

Funcion property_exists <- object_Property_Exist(struct_Object, property_name)
	Definir property_exists Como Logico;	
	property_exists = (object_Property_GetIndex(struct_Object, property_name) >= 0);
FinFuncion

Funcion index_property <- object_Property_GetIndex(struct_Object, property_name)
	Definir index_property, index_innerObject, center_info Como Numero;
	Definir Area_Property, data_Inner Como Texto;
	Area_Property = object_getAreaProperty(struct_Object);
	index_property = __private_object_Property_GetIndex_AreaProperty(struct_Object, property_name, Area_Property);
	Si index_property >= 0 Entonces
		index_property = increment_step(increment(string_indexOf(struct_Object, symbol_ExtraData())), index_property);
	FinSi
FinFuncion

Funcion index_property <- __private_object_Property_GetIndex_AreaProperty(struct_Object, property_name, Area_Property)
	Definir index_property, property_length Como Numero;
	Definir property_lowerCase Como Texto;
	Definir index_isValid Como Logico;
	property_lowerCase = string_ToLowerCase(property_name);
	property_length = string_Length(property_lowerCase);
	index_property = string_indexOf(Area_Property, property_lowerCase);
	Si index_property >= 0 Entonces
		index_isValid = string_isEquals(char_At(Area_Property, increment_step(property_length, index_property)), symbol_Key_Value());
		Mientras !index_isValid & (index_property >= 0) Hacer
			index_property = string_indexOf_fromIndex(Area_Property, property_lowerCase, increment(index_property));
			index_isValid = string_isEquals(char_At(Area_Property, increment_step(property_length, index_property)), symbol_Key_Value());
		FinMientras
	FinSi
FinFuncion

Funcion property_TYPE <- object_Property_GetType(struct_Object, property_name)
	Definir property_TYPE, data_Inner Como Texto;
	Definir index_innerObject, center_info Como Numero;
	
	index_innerObject = string_indexOf(property_name, symbol_ObjectSeparator());
	si index_innerObject > 0 Entonces
		data_Inner = __private_object_Property_GetData(struct_Object, property_name, index_innerObject);
		center_info = string_indexOf(data_Inner, symbol_ExtraData());
		property_name = string_substring(data_Inner, 0, center_info);
		struct_Object = string_substring_from(data_Inner, increment(center_info));
	FinSi
	
	si object_Property_Exist(struct_Object, property_name) Entonces
		property_TYPE = __private_object_Property_GetType_IndexProperty(struct_Object, property_name, object_Property_GetIndex(struct_Object, property_name));
	SiNo
		property_TYPE = string_Null();
		error_message_Function("object_Property_GetType", string_append_withSeparator("property no exist :: ", " :: ", property_name));
	FinSi
FinFuncion

Funcion property_TYPE <- __private_object_Property_GetType_IndexProperty(struct_Object, property_name, index_property)
	Definir property_TYPE Como Texto;
	Definir start_index, End_index Como Numero;
	start_index = index_property;
	Si start_index >= 0 Entonces
		start_index = increment(string_indexOf_fromIndex(struct_Object, symbol_Key_Value(), start_index));
		End_index = string_indexOf_fromIndex(struct_Object, symbol_Separator(), start_index);
		property_TYPE = string_substring(struct_Object, start_index, End_index);
	SiNo
		property_TYPE = string_Null();
		error_message_Function("__private_object_Property_GetType_IndexProperty", string_append("property no exist :", property_name));
	FinSi
FinFuncion

Funcion property_InnerIndex <- __private_object_Property_GetInnerIndex_IndexProperty(struct_Object, property_name, IndexProperty)
	Definir property_InnerIndex Como Numero;
	property_InnerIndex = -1;
	Mientras (IndexProperty >= 0) & !string_isEquals(char_At(struct_Object, increment(IndexProperty)), symbol_DataArea()) Hacer
		IndexProperty = string_indexOf_fromIndex(struct_Object, symbol_Separator(), increment(IndexProperty));
		property_InnerIndex = increment(property_InnerIndex);
	FinMientras
FinFuncion

Funcion property_InnerIndex <- object_Property_GetInnerIndex(struct_Object, property_name)
	Definir property_InnerIndex Como Numero;
	property_InnerIndex = __private_object_Property_GetInnerIndex_IndexProperty(struct_Object, property_name, object_Property_GetIndex(struct_Object, property_name));
FinFuncion

Funcion area_Property <- object_getAreaProperty(struct_Object)
	Definir Area_Property Como Texto;
	Area_Property = collection_getContent_Between_Symbols(struct_Object, symbol_ExtraData(), symbol_DataArea());
FinFuncion

Funcion object_result <- __private_object_process_AddOrRemove_general(object_select, object_compartor, isRemove)
	Definir object_result, object_Instructions, property_name, property_type Como Texto;
	Definir length_instructions, End_index Como Numero;
	object_Instructions = __private_object_GetInstructions_AccordingToProcess(object_select, object_compartor, isRemove);
	object_result = object_select;
	length_instructions = string_Length(object_Instructions);
	si !string_isEquals(object_Instructions, string_Null()) Entonces
		Mientras (length_instructions > 1) Hacer		
			End_index = string_indexOf_fromIndex(object_Instructions, symbol_Key_Value(), 0);
			property_name = string_substring(object_Instructions, 0, End_index);
			object_Instructions = string_Delete(object_Instructions, 0, increment(End_index));
			End_index = string_indexOf_fromIndex(object_Instructions, symbol_Separator(), 0);
			property_type = string_substring(object_Instructions, 0, End_index);
			object_Instructions = string_Delete(object_Instructions, 0, increment(End_index));
			length_instructions = string_Length(object_Instructions);
			Si isRemove Entonces
				object_result = object_Property_Remove(object_result, property_name);
			SiNo
				object_result = object_Property_Add(object_result, property_name, property_type);	
			FinSi
		FinMientras
	FinSi
FinFuncion

Funcion object_Instructions <- __private_object_GetInstructions_AccordingToProcess(object_select, object_compartor, isRemove)
	Definir object_Instructions, Area_Property_Comparator, Area_Property_Select, array_Select, array_Comparator Como Texto;
	Definir i, Size_Select, Size_Comparator, start_index, End_index Como Numero;
	
	Size_Select = linearCollection_GetSize(object_select);
	Size_Comparator = linearCollection_GetSize(object_compartor);
	Area_Property_Comparator = object_getAreaProperty(object_compartor);
	object_Instructions = string_Null();
	
	si (Size_Comparator > 0) & (Size_Select > 0) Entonces
		DimenSion array_Select[Size_Select];
		DimenSion array_Comparator[Size_Comparator];
		Area_Property_Select = object_getAreaProperty(object_Select);
		start_index = 0;
		para i = 0 Hasta decrement(Size_Select) Con Paso 1 Hacer
			End_index = string_indexOf_fromIndex(Area_Property_Select, symbol_Separator(), start_index);
			array_Select[i] = string_substring(Area_Property_Select, start_index, End_index);
			start_index = increment(End_index);
		FinPara
		start_index = 0;		
		para i = 0 Hasta decrement(Size_Comparator) Con Paso 1 Hacer
			End_index = string_indexOf_fromIndex(Area_Property_Comparator, symbol_Separator(), start_index);
			array_Comparator[i] = string_substring(Area_Property_Comparator, start_index, End_index);
			start_index = increment(End_index);
		FinPara
		//. . . . . . . . . . start On2 vvvvv
		object_Instructions = array_ToDeltastring_ByComparation(array_Select, size_Select, array_Comparator, size_Comparator, isRemove);
	FinSi
	
	si (Size_Select < 1) & (Size_Comparator > 0) Entonces
		object_Instructions = if_else(isRemove, string_Null(), Area_Property_Comparator, TYPE_STRING());
	FinSi
FinFuncion
///%%%%%[ CANVAS ]%%%%%%%%%%%%%%%%%%%[   #+4  ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Funcion canvas <- canvas_New(CWx, CWy)
	Definir canvas Como Texto;
	canvas = canvas_New_WithPixel(CWx, CWy, pixel_clear());
FinFuncion
//recomendado:630*130
Funcion canvas <- canvas_New_WithPixel(CWx, CWy, pixel_BackGround)
	Definir i Como Numero;
	Definir canvas, canvas_x Como Texto;
	canvas_x = canvas_Row_WithText(pixel_BackGround, CWx);
	Para i=1 Hasta CWy Con Paso 1 Hacer
		canvas = string_append(canvas, canvas_x);
	FinPara
FinFuncion
//----[ DISPLAY ]---------------------------------------------------------------------<#>
Funcion canvas_Display(canvas, CWx, CWy)
	canvas_Display_MonoColor(canvas, CWx, CWy, "");
FinFuncion

Funcion canvas_Display_MonoColor(canvas, CWx, CWy, color)
	Definir index_endVec, i Como Numero;
	Definir canvas_array, DrawX Como Texto;
	DimenSion canvas_array[CWy];
	para i=0 Hasta decrement(CWy) con paso 1 Hacer
		DrawX = string_substring(canvas, canvas_getIndex(0, i, CWx), (canvas_getIndex(0, increment(i), CWx)));
		canvas_array[i] = DrawX;
	FinPara	//Escribir "<"+string_substring(canvas, canvas_getIndex(0, CWy, CWx), string_Length(canvas));// metadata
	println_array_color(canvas_array, CWy, color);
FinFuncion
//----[ UTILITIES ]-----------------------------------------------------------------<#>
Funcion row_x <- canvas_Row_WithText(text, repeats)
    Definir i Como Numero;
	Definir row_x  Como Texto;
    row_x = string_RepeatText(text, repeats);
FinFuncion

Funcion index_canvas <- canvas_getIndex(x0, y0, CWx)
	Definir index_canvas Como Numero;
	index_canvas= x0+(y0*CWx);
FinFuncion

Funcion text_norm <- __private_canvas_GetText_FitViewPort(text, x0, CWx)
    Definir text_norm Como Texto;
    Definir text_length, abs_x0, chars_to_keep Como Numero;
    text_norm = text;
    text_length = string_Length(text);
    Si x0 < 0 Entonces
        abs_x0 = math_abs(x0);
        Si text_length > abs_x0 Entonces
            text_norm = string_substring(text_norm, abs_x0, text_length);
        SiNo
            text_norm = "";
        FinSi
    Sino
        chars_to_keep = CWx - x0;
        Si text_length > chars_to_keep Entonces
            text_norm = string_substring(text_norm, 0, chars_to_keep);
        FinSi
    FinSi
FinFuncion
//----[ MOVE_CONTENT ]----------------------------------------------------------------<#>
Funcion canvas_move <- canvas_MoveContent_x_y(canvas, CWx, CWy, isleft, is_top, speed_move)
	Definir canvas_move Como Texto;
	canvas_move = canvas_MoveContent_x(canvas, CWx, CWy, isLeft, speed_move);
	canvas_move = canvas_MoveContent_y(canvas_move, CWx, CWy, is_top, speed_move);
FinFuncion

Funcion canvas_move <- canvas_MoveContent_y(canvas, CWx, CWy, is_top, speed_moven)
    Definir canvas_move, text_clean Como Texto;
	Definir i, index_row, y_insert_poSition, y_remove_poSition, y_insert_length Como Numero;
	y_insert_length = CWx*speed_moven;//10*3=30
	y_insert_poSition = if_else(is_top, 0, CWx*CWy, TYPE_INT());//0 | 15*4 = 60
	y_remove_poSition= if_else(is_top, decrement_step(CWx*CWy, y_insert_length), 0, TYPE_INT());//15*4=60 - 30 = 30 | 0
	text_clean = canvas_Row_WithText(pixel_clear(), y_insert_length);//row = 30 char
	canvas_move = canvas;
	canvas_move = string_Delete(canvas_move, y_remove_poSition, increment_step(y_remove_poSition, y_insert_length));//30, 60 | 0, 30
	canvas_move = string_insert(canvas_move, text_clean, y_insert_poSition);
FinFuncion

Funcion canvas_move <- canvas_MoveContent_x(canvas, CWx, CWy, isLeft, speed_moven)
    Definir canvas_move, text_clean Como Texto;
	Definir i, index_row, x_remove, x_insert Como Numero;
	canvas_move = canvas;
	text_clean = canvas_Row_WithText(pixel_clear(), speed_moven);
	x_insert = if_else(isLeft, CWx, 0, TYPE_INT());
	x_remove = if_else(isLeft, 0, CWx, TYPE_INT());
	para i=0 Hasta decrement(CWy) Con Paso 1 Hacer
		canvas_move = string_insert(canvas_move, text_clean, canvas_getIndex(x_insert, i, CWx));
		index_row = canvas_getIndex(x_remove, i, CWx);
		canvas_move = string_Delete(canvas_move, index_row, increment_step(index_row, speed_moven));
	FinPara
FinFuncion
//----[ DRAW ]------------------------------------------------------------------------<#>
Funcion canvas_ellipse <- canvas_DrawEllipse(canvas, CWx, CWy, x0, y0, rx, ry)
    Definir canvas_ellipse Como Texto;
    Definir x_, y_ Como Entero;
    Definir Cx, Cy Como Entero;
    Definir valor Como Real;
	
    Para y_ = 0 Hasta CWy-1
        Para x_ = 0 Hasta CWx-1
            Cx = x_ - x0;
            Cy = y_ - y0;
            valor = (Cx*Cx)/(rx*rx) + (Cy*Cy)/(ry*ry);
            Si (valor >= 0.9) y (valor <= 1.1) Entonces
                canvas = canvas_Drawpoint(canvas, CWx, CWy, x_, y_);
            FinSi
        FinPara
    FinPara
    canvas_ellipse = canvas;
FinFuncion

Funcion canvas_rectangle <- canvas_DrawRectangle(canvas, Cx, Cy, x0, y0, width, height)
	Definir canvas_rectangle Como Texto;
	canvas_rectangle = canvas_DrawRectangle_Pixel(canvas, Cx, Cy, pixel_plain(), x0, y0, width, height);
FinFuncion

Funcion canvas_rectangle <- canvas_DrawRectangle_Pixel(canvas, Cx, Cy, pixelVH, x0, y0, width, height)
	Definir canvas_rectangle Como Texto;
	canvas_rectangle = canvas_DrawRectangle_Pixels(canvas, Cx, Cy, pixelVH, pixelVH, x0, y0, width, height);
FinFuncion

Funcion canvas_rectangle <- canvas_DrawRectangle_Pixels(canvas, Cx, Cy, pixel_H, pixel_V, x0, y0, width, height)
    Definir canvas_rectangle Como Texto;
	canvas_rectangle = canvas_DrawRectangle_Pixels_Full(canvas, Cx, Cy, pixel_H, pixel_H, pixel_V, pixel_V, x0, y0, width, height);
FinFuncion

Funcion canvas_rectangle <- canvas_DrawRectangle_Pixels_Full(canvas, Cx, Cy, pixel_H, pixel_H1, pixel_V, pixel_V1, x0, y0, x1, y1)
    Definir canvas_rectangle Como Texto;
	canvas_rectangle = canvas;
	canvas_rectangle = canvas_DrawLine_pixel(canvas_rectangle, Cx, Cy, pixel_V,  x0, y0, x0, y1);//left
	canvas_rectangle = canvas_DrawLine_pixel(canvas_rectangle, Cx, Cy, pixel_V1, decrement(x1), y0, decrement(x1), y1);//Right
	canvas_rectangle = canvas_DrawLine_pixel(canvas_rectangle, Cx, Cy, pixel_H,  x0, y0, x1, y0);//top
    canvas_rectangle = canvas_DrawLine_pixel(canvas_rectangle, Cx, Cy, pixel_H1, x0, y1, x1, y1);//botton
FinFuncion

Funcion canvas_triangle <- canvas_DrawTriangle_Normalized(canvas, CWx, CWy, x0, y0, x1, y1, x2, y2)
    Definir canvas_triangle Como Texto;
 	x0 = canvas_Noramalized_ToPixelX(CWx, x0);
	y0 = canvas_Noramalized_ToPixelY(CWy, y0);
	x1 = canvas_Noramalized_ToPixelX(CWx, x1);
	y1 = canvas_Noramalized_ToPixelY(CWy, y1);	
	x2 = canvas_Noramalized_ToPixelX(CWx, x2);
	y2 = canvas_Noramalized_ToPixelY(CWy, y2);
    canvas_triangle = canvas_DrawTriangle(canvas, CWx, CWy, x0, y0, x1, y1, x2, y2);
FinFuncion

Funcion canvas_triangle <- canvas_DrawTriangle(canvas, CWx, CWy, x0, y0, x1, y1, x2, y2)
    Definir canvas_triangle Como Texto;
    canvas = canvas_DrawLine(canvas, CWx, CWy, x0, y0, x1, y1);
    canvas = canvas_DrawLine(canvas, CWx, CWy, x1, y1, x2, y2);
    canvas = canvas_DrawLine(canvas, CWx, CWy, x2, y2, x0, y0);
    canvas_triangle = canvas;
FinFuncion

Funcion canvas_point <- canvas_DrawPoint(canvas, CWx, CWy, x0, y0)
	Definir canvas_point Como Texto;
	canvas_point = canvas_DrawPoint_pixel(canvas, CWx, CWy, pixel_plain(), x0, y0);
FinFuncion

Funcion canvas_point <- canvas_DrawPoint_pixel(canvas, CWx, CWy, pixel_symb, x0, y0)
	Definir canvas_point Como Texto;
	Definir post_pixel Como Numero;
	canvas_point = canvas;
	si x0 < CWx & y0 < CWy & x0 >= 0 & y0 >= 0 Entonces
		post_pixel = canvas_getIndex(x0, y0, CWx);//x+(y*Cx)=12+(1*40) = 52
		canvas_point = string_insert_withReplace(canvas_point, pixel_symb, post_pixel);
	FinSi
FinFuncion

Funcion canvas_text <- canvas_DrawText(canvas, CWx, CWy, text, x0, y0)
	Definir canvas_text Como Texto;
	Definir post_text Como Numero;
	canvas_text = canvas;
	si x0 < CWx & y0 < CWy & y0 >= 0 Entonces 
		text = __private_canvas_GetText_FitViewPort(text, x0, CWx);
		post_text = canvas_getIndex(x0, y0, CWx);
		canvas_text = string_insert_withReplace(canvas_text, text, post_text);
	FinSi
FinFuncion

Funcion canvas_line <- canvas_DrawLine(canvas, CWx, CWy, x0, y0, x1, y1)
    Definir canvas_line Como Texto;
	canvas_line = canvas_DrawLine_pixel(canvas, CWx, CWy, pixel_plain(), x0, y0, x1, y1);
FinFuncion
//Bresenham algorithm
Funcion canvas_line <- canvas_DrawLine_pixel(canvas, CWx, CWy, pixel_symb,  x0, y0, x1, y1)
    Definir canvas_line Como Texto;
    Definir Cx, Cy, xi, yi, xi_rec, yi_rec, x_, y_, error Como Entero;
	
    Cx = x1 - x0;//2-10=-8
    Cy = y1 - y0;//3-10=-7
	
    xi = if_else(Cx >= 0, 1, -1, TYPE_INT());// -1
    yi = if_else(Cy >= 0, 1, -1, TYPE_INT());// -1
	
    Cx = math_abs(Cx);// -8 -> 8
    Cy = math_abs(Cy);// -7 -> 7
	
    Si Cx >= Cy Entonces
        xi_rec = xi;//-1
        yi_rec = 0;// 0 
        error = 2*Cy - Cx;//2*8 = 16-7= 9
    Sino
        xi_rec = 0;
        yi_rec = yi;
        error = 2*Cx - Cy;
        Cx = Cx + Cy;//(10, 20) 30
        Cy = Cx - Cy;//30-20=10
        Cx = Cx - Cy;//30-10=20
    FinSi
	
    x_ = x0;
    y_ = y0;
	canvas_line = canvas;
    Mientras !Num_isEquals(x_, x1) | !Num_isEquals(y_, y1) Hacer
        canvas_line = canvas_DrawPoint_pixel(canvas_line, CWx, CWy, pixel_symb, x_, y_);
		
        Si error >= 0 Entonces
            x_ = increment_step(x_, xi);//10+ -1
            y_ = increment_step(y_, yi);//10+ -1
            error = error + 2*(Cy - Cx);// 9 + (2*(7-8)) = 9+ -2 = 7
        SiNo
            x_ = increment_step(x_, xi_rec);
            y_ = increment_step(y_, yi_rec);
            error = error + 2*Cy;
        FinSi
    FinMientras
FinFuncion
//----[ NORMALIZED (-1 ... 1) ]-------------------------------------------------------<#>
Funcion canvas_line <- canvas_DrawLine_Normalized(canvas, CWx, CWy, x0, y0, x1, y1)
    Definir canvas_line Como Texto;
	x0 = canvas_Noramalized_ToPixelX(CWx, x0);
	y0 = canvas_Noramalized_ToPixelY(CWy, y0);
	x1 = canvas_Noramalized_ToPixelX(CWx, x1);
	y1 = canvas_Noramalized_ToPixelY(CWy, y1);
	canvas_line = canvas_DrawLine_pixel(canvas, CWx, CWy, pixel_plain(), x0, y0, x1, y1);
FinFuncion

Funcion canvas_point <- canvas_DrawPoint_Normalized(canvas, CWx, CWy, x0, y0)
	Definir canvas_point Como Texto;
	canvas_point = canvas_DrawPoint_Pixel_Normalized(canvas, CWx, CWy, x0, y0, pixel_plain());
FinFuncion

Funcion canvas_point <- canvas_DrawPoint_Pixel_Normalized(canvas, CWx, CWy, x0, y0, pixel_symb)
	Definir canvas_point Como Texto;
	x0 = canvas_Noramalized_ToPixelX(CWx, x0);
	y0 = canvas_Noramalized_ToPixelY(CWy, y0);
	canvas_point = canvas_DrawPoint_pixel(canvas, CWx, CWy, pixel_symb, x0, y0);
FinFuncion

Funcion canvas_rectangle <- canvas_DrawRectangle_Normalized(canvas, CWx, CWy, x0, y0, x1, y1)
    Definir canvas_rectangle Como Texto;
 	x0 = canvas_Noramalized_ToPixelX(CWx, x0);
	y0 = canvas_Noramalized_ToPixelY(CWy, y0);
	x1 = canvas_Noramalized_ToPixelX(CWx, x1);
	y1 = canvas_Noramalized_ToPixelY(CWy, y1);	
    canvas_rectangle = canvas_DrawRectangle(canvas, CWx, CWy, x0, y0, x1, y1);
FinFuncion
//----[ NORMALIZED_TO (-1 ... 1 ) ]---------------------------------------------------<#>
//(w*0.5)(1+a)  :: (h*0.5)(1-a)
Funcion pixel_index <- canvas_Noramalized_ToPixelX(Cx, x)
	Definir pixel_index Como Numero;
	pixel_index = __private_Noramalized_toPixel(Cx, x, "x");
FinFuncion

Funcion pixel_index <- canvas_Noramalized_ToPixelY(Cy, y_)
	Definir pixel_index Como Numero;
	pixel_index = __private_Noramalized_toPixel(Cy, y_, "y");
FinFuncion

Funcion pixel_index <- canvas_PixelX_ToNoramalized(Cx, x)
	Definir pixel_index Como Numero;
	pixel_index = __private_Pixel_ToNormalized(Cx, x, "x");
FinFuncion

Funcion pixel_index <- canvas_PixelY_ToNoramalized(Cy, y_)
	Definir pixel_index Como Numero;
	pixel_index = __private_Pixel_ToNormalized(Cy, y_, "y");
FinFuncion

Funcion c <- __private_Pixel_ToNormalized(Dc, pixel_index, letter)
    Definir c Como Real;
    Definir s Como Entero;
    s = if_else(string_isEquals(letter, "x"), 1, -1, TYPE_INT);
    c = ((2 * pixel_index) / Dc - 1) * s;
FinFuncion

Funcion pixel_index <- __private_Noramalized_toPixel(Dc, norm_index, letter)
	Definir pixel_index Como Numero;
	norm_index = norm_index * if_else(string_isEquals(letter, "x"), 1, -1, TYPE_INT);
	pixel_index = math_min_Int(math_truncate((Dc * 0.5) * (1 + norm_index)), decrement(Dc));
FinFuncion
//----[ COMPLEX_DRAW ]---------------------------------------------------------------<#>
Funcion canvas_Result <- canvas_DrawButton(canvas, Cx, Cy, text, x0, y0)
	Definir canvas_Result Como Texto;
	Definir x1, y1, length_Text, xt, yt Como Numero;
	canvas_Result = canvas;
	length_Text = string_Length(text);
	xt = increment(x0);
	yt = increment(y0);
	x1 = increment_step(xt, increment(length_Text));
	y1 = increment(yt);
	canvas_Result = canvas_DrawRectangle_Pixels_Full(canvas_Result, Cx, Cy, "_","¯", "|", "|", x0, y0, x1, y1);
	canvas_Result = canvas_DrawText(canvas_Result, Cx, Cy, text, xt, yt);
	canvas_Result = canvas_DrawRectanglePoint(canvas_Result, Cx, Cy, " ", x0, y0, decrement(x1), y1);
FinFuncion

Funcion canvas_Result <- canvas_DrawRectanglePoint(canvas, Cx, Cy, pixel, x0, y0, x1, y1)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas;
	canvas_Result = canvas_DrawPoint_pixel(canvas_Result, Cx, Cy, pixel, x0, y0);
	canvas_Result = canvas_DrawPoint_pixel(canvas_Result, Cx, Cy, pixel, x0, y1);
	canvas_Result = canvas_DrawPoint_pixel(canvas_Result, Cx, Cy, pixel, x1, y0);
	canvas_Result = canvas_DrawPoint_pixel(canvas_Result, Cx, Cy, pixel, x1, y1);
FinFuncion

Funcion canvas_Result <- canvas_DrawPanel(canvas, Cx, Cy, x0, y0, width, height)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas;
	canvas_Result  = canvas_DrawVerticalLine(canvas_Result, Cx, Cy, x0, y0, height);
	canvas_Result = canvas_DrawVerticalLine(canvas_Result, Cx, Cy, decrement(width), y0, height);
	canvas_Result = canvas_DrawHorizontalLine(canvas_Result, Cx, Cy, x0, y0, width);
	height = decrement(height);
	canvas_Result = canvas_DrawHorizontalLine(canvas_Result, Cx, Cy, x0, height, width);
	canvas_Result = canvas_DrawPoint_pixel(canvas_Result, Cx, Cy, "×", x0, y0);
	canvas_Result = canvas_DrawPoint_pixel(canvas_Result, Cx, Cy, "×", x0, height);
	width = decrement(width);
	canvas_Result = canvas_DrawPoint_pixel(canvas_Result, Cx, Cy, "×", width, height);
	canvas_Result = canvas_DrawPoint_pixel(canvas_Result, Cx, Cy, "×", width, y0);
FinFuncion

Funcion canvas_Result <- canvas_DrawHorizontalLine(canvas, Cx, Cy, x0, y0, width)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas_DrawHorizontalLine_Pixel(canvas, Cx, Cy, "-", x0, y0, width);
FinFuncion

Funcion canvas_Result <- canvas_DrawHorizontalLine_Pixel(canvas, Cx, Cy, pixel, x0, y0, width)
	Definir canvas_Result, horizontalLine_String Como Texto;
	canvas_Result = canvas;
	si width > 0 Entonces
		horizontalLine_String  = string_RepeatText(Pixel, width);
		canvas_Result = canvas_DrawText(canvas_Result, Cx, Cy, horizontalLine_String, x0, y0);
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawVerticalLine(canvas, Cx, Cy, x0, y0, height)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas_DrawVerticalLine_Pixel(canvas, Cx, Cy, "¦", x0, y0, height);
FinFuncion

Funcion canvas_Result <- canvas_DrawVerticalLine_Pixel(canvas, Cx, Cy, pixel, x0, y0, height)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas;
	si height > 0 Entonces
		canvas_Result = canvas_DrawLine_pixel(canvas_Result, Cx, Cy, pixel, x0, y0, x0, increment_step(y0, height));
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawHorizontalLine_Full(canvas, Cx, Cy, y0)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas_DrawHorizontalLine(canvas, Cx, Cy, 0, y0, Cx);
FinFuncion

Funcion canvas_Result <- canvas_DrawVerticalLine_Full(canvas, Cx, Cy, x0)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas_DrawVerticalLine(canvas, Cx, Cy, x0, 0, Cy);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=========================================
Funcion pixel <- pixel_clear
	Definir pixel Como Texto;
	pixel =  get_pixel_withIndex(0);
FinFuncion

Funcion pixel <- pixel_plain
	Definir pixel Como Texto;
	pixel = get_pixel_withIndex(1);
FinFuncion

Funcion pixel <- pixel_medium
	Definir pixel Como Texto;
	pixel = get_pixel_withIndex(2);
FinFuncion

Funcion pixel <- pixel_bold
	Definir pixel Como Texto;
	pixel = get_pixel_withIndex(3);
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
///$$$$$[ SPRITE ]$$$$$$$$$$$$$$$$$$$[  -+4_1 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
//----[ SPRITESTRING ]---------------------------------------------------------------<#>
Funcion SpriteString_Structure <- SpriteString_New
	Definir SpriteString_Structure Como Texto;
	SpriteString_Structure = linearCollection_newLinearCollection(Tcomponent_TYPE_SPRITE_STRING(), TYPE_STRING());
	SpriteString_Structure = linearCollection_addLast(SpriteString_Structure, "0");
FinFuncion
//----[ GETTERS ]---------------------------------------------------------------------<#>
Funcion length_MaxLine <- SpriteString_GetWidth(SpriteString_Structure)
	Definir length_MaxLine Como Numero;
	length_MaxLine = string_ToNum(linearCollection_getFirst_ToString(SpriteString_Structure));
FinFuncion

Funcion length_MaxLine <- SpriteString_Getheight(SpriteString_Structure)
	Definir length_MaxLine Como Numero;
	length_MaxLine = linearCollection_GetSize(SpriteString_Structure);
FinFuncion

Funcion SpriteString_NewChange <- SpriteString_UpdateMaxWidth(SpriteString_Structure, line_String)
	Definir SpriteString_NewChange Como Texto;
	Definir line_length Como Numero;
	line_length = string_Length(line_String);
	SpriteString_NewChange = SpriteString_Structure;
	si SpriteString_GetWidth(SpriteString_NewChange) < line_length Entonces
		SpriteString_NewChange = linearCollection_SetElement(SpriteString_NewChange, 0, num_ToString(line_length));
	FinSi
FinFuncion
//----[ UTILITIES ]-----------------------------------------------------------------<#>
Funcion isSpriteValid <- SpriteString_isSpriteValid(SpriteString_Structure)
	Definir isSpriteValid Como Logico;
	isSpriteValid = string_isEquals(collection_getNameCollection(SpriteString_Structure), Tcomponent_TYPE_SPRITE_STRING());
FinFuncion

Funcion SpriteString_NewChange <- SpriteString_AddLine(SpriteString_Structure, line_String)
	Definir SpriteString_NewChange Como Texto;
	SpriteString_NewChange = linearCollection_addLast(SpriteString_Structure, line_String);
	SpriteString_NewChange = SpriteString_UpdateMaxWidth(SpriteString_NewChange, line_String);
FinFuncion
//----[ DRAW_SPRITESTRING ]----------------------------------------------------------<#>
Funcion canvas_Sprite <- canvas_DrawSpriteString(canvas, Cx, Cy, SpriteString_Structure, x0, y0)
    Definir canvas_Sprite Como Texto;
    canvas_Sprite = __private_canvas_DrawSpriteString_sprite_effect(canvas, Cx, Cy, SpriteString_Structure, x0, y0, "null", sprite_EFFECT_NONE());
FinFuncion

Funcion canvas_Sprite <- canvas_DrawSpriteString_Cutout(canvas, Cx, Cy, SpriteString_Structure, x0, y0)
    Definir canvas_Sprite Como Texto;
    canvas_Sprite = __private_canvas_DrawSpriteString_sprite_effect(canvas, Cx, Cy, SpriteString_Structure, x0, y0, "null", sprite_EFFECT_CUTOUT());
FinFuncion

Funcion canvas_Sprite <- canvas_DrawSpriteString_Trimmed(canvas, Cx, Cy, SpriteString_Structure, symbol_Trimmed, x0, y0)
    Definir canvas_Sprite Como Texto;
    canvas_Sprite = __private_canvas_DrawSpriteString_sprite_effect(canvas, Cx, Cy, SpriteString_Structure, x0, y0, symbol_Trimmed, sprite_EFFECT_TRIMMED());
FinFuncion

Funcion canvas_Sprite <- canvas_DrawSpriteString_Cutout_FlipHorizontal(canvas, Cx, Cy, SpriteString_Structure, x0, y0)
    Definir canvas_Sprite Como Texto;
    canvas_Sprite = __private_canvas_DrawSpriteString_sprite_effect(canvas, Cx, Cy, SpriteString_Structure, x0, y0, "null", sprite_EFFECT_FLIP_H());
FinFuncion

Funcion canvas_Sprite <- canvas_DrawSpriteString_Cutout_FlipVertical(canvas, Cx, Cy, SpriteString_Structure, x0, y0)
    Definir canvas_Sprite Como Texto;
    canvas_Sprite = __private_canvas_DrawSpriteString_sprite_effect(canvas, Cx, Cy, SpriteString_Structure, x0, y0, "null", sprite_EFFECT_FLIP_V());
FinFuncion
//----[ RENDER ]---------------------------------------------------------------------<#>
Funcion canvas_Sprite <- __private_Canvas_RenderSpriteString(canvas, Cx, Cy, data_soup, string_sumation, size_Sprite, symbol_Trimmed, x0, y0, sprite_effect)
	Definir canvas_Sprite, num_carry, Char_Current, line_Current, array_sprite Como Texto;
	Definir i, num_range, num_range_Inc, length_data_value, length_Sumation, count_line Como Numero;
	Definir IsNumber Como Logico;
	Dimension array_sprite[size_Sprite];
	num_carry 	    = "";
	num_range		= 0;	
	i				= 0;
	count_line   	= 0;
	length_Sumation = string_Length(string_sumation);
	canvas_Sprite = canvas;
	Mientras i <= length_Sumation & size_Sprite < Cy Hacer
		Char_Current = char_At(string_sumation, i);
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(num_carry, Char_Current);
		FinSi
		Si !IsNumber & !string_isEmpty(num_carry) | Num_isEquals(i, length_Sumation) Entonces
			length_data_value = string_ToNum(num_carry);
			num_range_Inc = increment_step(num_range, length_data_value);
			line_Current  = string_substring(data_soup, num_range, num_range_Inc);
			array_sprite[count_line] = line_Current;
			count_line = increment(count_line);
			num_carry       = "";// clear
			num_range       = num_range_Inc;
		FinSi
		i = increment(i);
	FinMientras
	canvas_Sprite = Canvas_ApplyRenderEffect(canvas, Cx, Cy, x0, y0, array_sprite, size_Sprite, symbol_Trimmed, sprite_effect);
FinFuncion
//----[ EFFECT ]---------------------------------------------------------------------<#>
Funcion canvas_Sprite <- __private_canvas_DrawSpriteString_sprite_effect(canvas, Cx, Cy, SpriteString_Structure, x0, y0, symbol_Trimmed, sprite_effect)
	Definir canvas_Sprite, string_sumation, data_soup Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData, size_Sprite Como Numero;
	size_Sprite 	 = SpriteString_Getheight(SpriteString_Structure);
	SpriteString_Structure = linearCollection_RemoveFirst(SpriteString_Structure);
	index_Data 		 = increment(string_indexOf(SpriteString_Structure, symbol_DataArea()));
	index_ExtraData  = string_LastindexOf(SpriteString_Structure, symbol_ExtraData());
	index_MetaData   = string_LastindexOf_fromIndex(SpriteString_Structure, symbol_MetaData(), index_ExtraData);
	data_soup		 = string_substring(SpriteString_Structure, index_Data, index_MetaData);
	string_sumation  = string_substring(SpriteString_Structure, increment(index_MetaData), index_ExtraData);
	canvas_Sprite 	 = __private_Canvas_RenderSpriteString(canvas, Cx, Cy, data_soup, string_sumation,  size_Sprite, symbol_Trimmed, x0, y0, sprite_effect);
FinFuncion

Funcion canvas_Sprite <- Canvas_ApplyRenderEffect(canvas, Cx, Cy, x0, y0, array_sprite, size_Sprite, symbol_Trimmed, sprite_effect)
    Definir canvas_Sprite Como Texto;
    Segun sprite_effect Hacer
        sprite_EFFECT_NONE():
            canvas_Sprite = canvas_DrawSprite_Array(canvas, Cx, Cy, x0, y0, array_sprite, size_Sprite);
        sprite_EFFECT_CUTOUT():
            canvas_Sprite = canvas_Drawsprite_Cutout(canvas, Cx, Cy, x0, y0, array_sprite, size_Sprite);
        sprite_EFFECT_TRIMMED():
            canvas_Sprite = canvas_Drawsprite_Trimmed(canvas, Cx, Cy, x0, y0, array_sprite, size_Sprite, symbol_Trimmed);
        sprite_EFFECT_FLIP_H():
            canvas_Sprite = canvas_Drawsprite_Cutout_FlipHorizontal(canvas, Cx, Cy, x0, y0, array_sprite, size_Sprite);
        sprite_EFFECT_FLIP_V():
            canvas_Sprite = canvas_Drawsprite_Cutout_FlipVertical(canvas, Cx, Cy, x0, y0, array_sprite, size_Sprite);
        De Otro Modo: 
            canvas_Sprite = canvas;
    FinSegun
FinFuncion
//----[ DRAW_SPRITE ]----------------------------------------------------------------<#>
Funcion canvas_Sprite <- canvas_DrawSprite_Array(canvas, Cx, Cy, x0, y0, array_sprite, size)	
	Definir canvas_Sprite Como Texto;
	Definir i Como Numero;
	canvas_Sprite = canvas;
	size = size;
	i = 0;
	Mientras i < size & increment_step(i, y0) < Cy Hacer
		canvas_Sprite = canvas_DrawText(canvas_Sprite,Cx, Cy, array_sprite[i], x0, y0+i);
		i = increment(i);
	FinMientras
FinFuncion

Funcion canvas_Sprite <- canvas_Drawsprite_Cutout(canvas, Cx, Cy, x0, y0, array_sprite, size)	
	Definir canvas_Sprite Como Texto;
	canvas_Sprite = canvas_Drawsprite_Trimmed(canvas, Cx, Cy, x0, y0, array_sprite, size, " ");
FinFuncion

Funcion canvas_Sprite <- canvas_Drawsprite_Trimmed(canvas, Cx, Cy, x0, y0, array_sprite, size, symbol_Trimmed)	
	Definir canvas_Sprite, canvas_background Como Texto;
	Definir i, index_interruption, index_Crop Como Numero;
	Mientras i < size & increment_step(i, y0) < Cy Hacer
		array_sprite[i] = string_Strip_Right(array_sprite[i], symbol_Trimmed);
		index_interruption = string_FindInterruption_Left(array_sprite[i], symbol_Trimmed);
		index_Crop = canvas_getIndex(x0, increment_step(y0, i), Cx);
		canvas_background  = string_substring(canvas, index_Crop, increment_step(index_Crop, index_interruption));
		array_sprite[i]  = string_insert_withReplace(array_sprite[i], canvas_Background, 0);
		i = increment(i);
	FinMientras
	canvas_Sprite = canvas_DrawSprite_Array(canvas, Cx, Cy, x0, y0, array_sprite, size);
FinFuncion

Funcion canvas_Sprite <- canvas_Drawsprite_Cutout_FlipHorizontal(canvas, Cx, Cy, x0, y0, array_sprite, size)	
	Definir canvas_Sprite, array_symbol Como Texto;
	Definir i, size_symb Como Numero;
	size_symb = 10;
	Dimension array_symbol[size_symb];
    array_symbol[0] = "(";array_symbol[1] = ")";
    array_symbol[2] = "<";array_symbol[3] = ">";
    array_symbol[4] = "[";array_symbol[5] = "]";
    array_symbol[6] = "{";array_symbol[7] = "}";
    array_symbol[8] = "\";array_symbol[9] = "/";
	i = 0;
	Mientras i < size & increment_step(i, y0) < Cy Hacer
		array_sprite[i] = string_TextReverse_Caracters(array_sprite[i], array_symbol, size_symb);
		i = increment(i);
	FinMientras
	canvas_Sprite = canvas_Drawsprite_Cutout(canvas, Cx, Cy, x0, y0, array_sprite, size);
FinFuncion

Funcion canvas_Sprite <- canvas_Drawsprite_Cutout_FlipVertical(canvas, Cx, Cy, x0, y0, array_sprite, size)	
	Definir canvas_Sprite, array_column_invert, array_symbol Como Texto;
	Definir i, length_array, size_symb Como Numero;
	size_symb = 10;
	Dimension array_symbol[size_symb];
    array_symbol[0] = "(";array_symbol[1] = ")";
    array_symbol[2] = "<";array_symbol[3] = ">";
    array_symbol[4] = "[";array_symbol[5] = "]";
    array_symbol[6] = "{";array_symbol[7] = "}";
    array_symbol[8] = "_";array_symbol[9] = "¯";
	Dimension array_column_invert[size];
	Mientras i < size & increment_step(i, y0) < Cy Hacer
		array_column_invert[i] = string_TextReverse_Caracters(array_sprite[decrement_step(size, increment(i))], array_symbol, size_symb);
		i = increment(i);
	FinMientras
	canvas_Sprite = canvas_Drawsprite_Cutout(canvas, Cx, Cy, x0, y0, array_column_invert, size);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=========================================
Funcion sprite_effect <- sprite_EFFECT_NONE
    Definir sprite_effect Como Texto;
    sprite_effect = "DIRECT";
FinFuncion

Funcion sprite_effect <- sprite_EFFECT_CUTOUT
    Definir sprite_effect Como Texto;
    sprite_effect = "CUTOUT";
FinFuncion

Funcion sprite_effect <- sprite_EFFECT_TRIMMED
    Definir sprite_effect Como Texto;
    sprite_effect = "TRIMMED";
FinFuncion

Funcion sprite_effect <- sprite_EFFECT_FLIP_H
    Definir sprite_effect Como Texto;
    sprite_effect = "FLIP_H";
FinFuncion

Funcion sprite_effect <- sprite_EFFECT_FLIP_V
    Definir sprite_effect Como Texto;
    sprite_effect = "FLIP_V";
FinFuncion
///%%%%%[ TUI ]%%%%%%%%%%%%%%%%%%%%%%[   #+5  ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Funcion tui_TFrame <- TUI_New(Wx,Wy)
	Definir tui_TFrame, stores_Tcomponents, size_TFrame Como Texto;
	tui_TFrame  = linearCollection_newLinearCollection(TUI_TYPE_TFRAME(), TYPE_STRING());
	stores_Tcomponents = collectionSetter_addValueFunction(collectionSetter_New(TUI_TYPE_TSTORE(), TYPE_STRING()), TYPE_STRING());
	size_TFrame = TUI_ParsePointXY_ToString(Wx, Wy);
	tui_TFrame  = linearCollection_addFirst(tui_TFrame, stores_Tcomponents);//index:2
	tui_TFrame  = linearCollection_addFirst(tui_TFrame, collectionSetter_New(TUI_TYPE_TINPUT(),TYPE_STRING()));//index:1
	tui_TFrame  = linearCollection_addFirst(tui_TFrame, size_TFrame);//index:0
FinFuncion
//----[ DISPLAY ]---------------------------------------------------------------------<#>
Funcion TUI_Display(tui_window)
	Definir Wx, Wy, index_separator Como Numero;
	Definir Wsize, window_view Como Texto;
	Si TUI_IsInterface_Valid(tui_window) Entonces 
		Wsize = TUI_GetTproperty_Position(tui_window);
		index_separator = string_indexOf(Wsize, symbol_Separator_Simple());
		Wx = string_ToNum(string_substring(Wsize, 0, index_separator));
		Wy = string_ToNum(string_substring_from(Wsize, increment(index_separator)));
		canvas_Display(TUI_ToCanvas(tui_window), Wx,Wy);
	SiNo
		error_message_Function("TUI_Display(tui_window)","Its not a TUI interface");
	FinSi
FinFuncion
//----[ GETTERS ]---------------------------------------------------------------------<#>
Funcion size_String <- TUI_GetTproperty_Position(tui_TFrame) 
	Definir size_String Como Texto;
	size_String = linearCollection_getFirst_ToString(tui_TFrame);
FinFuncion

Funcion input_Inner <- TUI_GetTProperty_Input(tui_window)
	Definir input_Inner Como Texto;
	input_Inner = linearCollection_getElement_toString(tui_window,  1);
FinFuncion

Funcion input_Inner <- TUI_GetTProperty_Store(tui_window)
	Definir input_Inner Como Texto;
	input_inner = linearCollection_getLast_ToString(tui_window);
FinFuncion

Funcion inputs_TUI <- TUI_GetInputOptions(tui_window)
	Definir inputs_TUI, input_inner Como Texto;
	input_inner = TUI_GetTProperty_Input(tui_window);
	inputs_TUI = CollectionSetter_GetKeys_ToSeparatedString(input_inner, symbol_Separator());
FinFuncion

Funcion user_input <- TUI_GetUser_Input_message(tui_window, message, TYPE)
	Si TUI_IsInterface_Valid(tui_window) Entonces 
		Segun TYPE Hacer
			caso TYPE_BOOLEAN(): Definir user_input Como Logico;
			caso TYPE_INT(): Definir user_input Como Numero;
			caso TYPE_FLOAT(): Definir user_input Como Real;
			De Otro Modo: Definir user_input Como Texto;
		FinSegun
		user_input = user_input_options_separator_message(TUI_GetInputOptions(tui_window), symbol_Separator(), message, TYPE);
	SiNo
		error_message_Function("TUI_GetUser_Input_message(tui_window, message, TYPE)","Its not a TUI interface");
		user_input = value_getNullType(TYPE);
	FinSi
FinFuncion

Funcion user_input <- TUI_GetUser_Input(tui_window, TYPE)
	Si TUI_IsInterface_Valid(tui_window) Entonces 
		Segun TYPE Hacer
			caso TYPE_BOOLEAN(): Definir user_input Como Logico;
			caso TYPE_INT(): Definir user_input Como Numero;
			caso TYPE_FLOAT(): Definir user_input Como Real;
			De Otro Modo: Definir user_input Como Texto;
		FinSegun
		user_input = user_input_options_separator(TUI_GetInputOptions(tui_window), symbol_Separator(), TYPE);
	SiNo
		error_message_Function("TUI_GetUser_Input(tui_window, TYPE)","Its not a TUI interface");
		user_input = value_getNullType(TYPE);
	FinSi
FinFuncion
//----[ SETTERS ]---------------------------------------------------------------------<#>
Funcion tui_resize <- TUI_SetSize(tui_window, Wx, Wy) 
	Definir tui_resize, size_string Como Texto;
	size_string = TUI_ParsePointXY_ToString(Wx, Wy);
	tui_resize  = linearCollection_SetElement_ToString(tui_window,  TindexFrame_Size(), size_string);
FinFuncion

Funcion TUI_result <- TUI_Tcomponent_SetTproperty_Text(tui_window, reference_Name, value_string) 
	Definir TUI_result Como Texto;
	TUI_result =  TUI_Tcomponent_SetTproperty(tui_window, reference_Name, TProperty_Text(), value_string);
FinFuncion

Funcion TUI_result <- TUI_Tcomponent_SetTproperty_Input(tui_window, reference_Name, value_string) 
	Definir TUI_result Como Texto;
	TUI_result =  TUI_Tcomponent_SetTproperty(tui_window, reference_Name, TProperty_Input(), value_string);
FinFuncion

Funcion TUI_result <- TUI_Tcomponent_SetTproperty_Value(tui_window, reference_Name, value, TYPE) 
	Definir TUI_result Como Texto;
	TUI_result =  TUI_Tcomponent_SetTproperty_Value_ByString(tui_window, reference_Name, value_Parser_TypeToString(value, TYPE));
FinFuncion

Funcion TUI_result <- TUI_Tcomponent_SetTproperty_Value_ByString(tui_window, reference_Name, value_string) 
	Definir TUI_result Como Texto;
	TUI_result =  TUI_Tcomponent_SetTproperty(tui_window, reference_Name, TProperty_Value(), value_string);
FinFuncion

Funcion TUI_result <- TUI_Tcomponent_SetTproperty_Position_ByString(tui_window, reference_Name, value_string) 
	Definir TUI_result Como Texto;
	TUI_result =  TUI_Tcomponent_SetTproperty(tui_window, reference_Name, TProperty_Position(), value_string);
FinFuncion

Funcion TUI_result <- TUI_Tcomponent_SetTproperty_Position(tui_window, reference_Name, x0, y0) 
	Definir TUI_result, point_String Como Texto;
	point_String = TUI_ParsePointXY_ToString(x0, y0);
	TUI_result =  TUI_Tcomponent_SetTproperty(tui_window, reference_Name, TProperty_Position(), point_String);
FinFuncion

Funcion TUI_result <- TUI_Tcomponent_SetTproperty_Position_TwoPoints(tui_window, reference_Name, x0, y0, x1, y1) 
	Definir TUI_result, points_String Como Texto;
	points_String = TUI_ParseTwoPointsXY_ToString(x0, y0, x1, y1);
	TUI_result =  TUI_Tcomponent_SetTproperty(tui_window, reference_Name, TProperty_Position(), points_String);
FinFuncion

Funcion TUI_result <- TUI_Tcomponent_SetTproperty(tui_window, reference_Name, Tproperty_Component, value_string) 
	Definir TUI_result, Store_Setter, New_TComponent Como Texto;
	Store_Setter = TUI_GetTProperty_Store(tui_window);
	New_TComponent = collectionSetter_Key_GetValue_ToString(Store_Setter, reference_Name);
	Segun Tproperty_Component Hacer
		Caso TProperty_Input():
			New_TComponent = Tcomponent_SetTproperty_Input(New_TComponent, value_string);
		Caso TProperty_Position():
			New_TComponent = Tcomponent_SetTproperty_Position_ByString(New_TComponent, value_string);
		Caso TProperty_Text():
			New_TComponent = Tcomponent_SetTproperty_Text(New_TComponent, value_string);
		Caso TProperty_Value():
			New_TComponent = Tcomponent_SetTproperty_value_ByString(New_TComponent, value_string);
		De Otro Modo:
			New_TComponent = Tcomponent_SetTproperty(New_TComponent, Tproperty_Component, value_string);
	FinSegun
	Store_Setter = collectionSetter_Key_SetValue_ByString(Store_Setter, reference_Name, New_TComponent);
	TUI_result   = linearCollection_SetElement_ToString(tui_window, TindexFrame_Store(), Store_Setter);
FinFuncion
//----[ ADD ]------------------------------------------------------------------------<#>
Funcion tui_input <- TUI_AddInput(tui_window, input_string)
	Definir tui_input, input_inner Como Texto;
	input_inner = TUI_GetTProperty_Input(tui_window);
	input_inner = collectionSetter_AddKey(input_inner, input_string);
	tui_input   = linearCollection_SetElement_ToString(tui_window, TindexFrame_Input(), input_inner);
FinFuncion
//----( tcomponent ) . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . <#>
Funcion TUI_result <- TUI_AddTcomponent(tui_window, reference_Name, tcomponent_Element)
	Definir TUI_result Como Texto;
	si Tcomponent_IsTcomponent(tcomponent_Element) Entonces
		si Tcomponent_HasInput(tcomponent_Element) Entonces
			TUI_result = TUI_AddTcomponent_TypeInput_Forced(tui_window, reference_Name, tcomponent_Element);
		SiNo
			TUI_result = TUI_AddTcomponent_Forced(tui_window, reference_Name, tcomponent_Element);
		FinSi
	SiNo
		TUI_result = tui_window;
		error_message_Function("TUI_AddTcomponent","Its not a TUI interface");
	FinSi
FinFuncion

Funcion TUI_result <- TUI_AddTcomponent_TypeInput_Forced(tui_window, reference_Name, tcomponent_Element)
	Definir TUI_result, input_TUI, input_Tcomponent Como Texto;
	input_TUI		 = TUI_GetTProperty_Input(tui_window);
	input_Tcomponent = Tcomponent_GetTproperty_Input(tcomponent_Element);
	si collectionSetter_Exist_ByString(input_TUI, input_Tcomponent) Entonces
		TUI_result = tui_window;
		error_message_Function("TUI_AddTcomponent_TypeInput_Forced(tui, name, tcomponent)","exist input");
	SiNo
		TUI_result = TUI_AddTcomponent_Forced(tui_window, reference_Name, tcomponent_Element);
		TUI_result = TUI_AddInput(TUI_result, input_Tcomponent);
	FinSi
FinFuncion

Funcion TUI_result <- TUI_AddTcomponent_Forced(tui_window, reference_Name, tcomponent_Element)
	Definir TUI_result, Store_Setter Como Texto;
	Store_Setter = TUI_GetTProperty_Store(tui_window);
	Store_Setter = collectionSetter_AddKeyValue_ByString(Store_Setter, reference_Name, tcomponent_Element);
	TUI_result   = linearCollection_SetElement_ToString(tui_window, TindexFrame_Store(), Store_Setter);
FinFuncion

Funcion tui_NewTcomponent <- TUI_AddTComponent_NewButton(tui_window, reference_Name, text, input_string, x0, y0)
	Definir tui_NewTcomponent, Tbutton Como Texto;
	tui_NewTcomponent = tui_window;
	Si TUI_IsInterface_Valid(tui_window) Entonces
		Tbutton = TComponent_NewButton(text, input_string, x0, y0);
		tui_NewTcomponent = TUI_AddTcomponent_TypeInput_Forced(tui_NewTcomponent, reference_Name, Tbutton);
	SiNo
		error_message_Function("TUI_AddTComponent_NewButton()", "Its not a TUI interface");
	FinSi
FinFuncion

Funcion tui_NewTcomponent <- TUI_AddTComponent_NewLabel(tui_window, reference_Name, text, x0, y0)
	Definir tui_NewTcomponent, Tlabel Como Texto;
	tui_NewTcomponent = tui_window;
	Si TUI_IsInterface_Valid(tui_window) Entonces
		Tlabel = TComponent_NewLabel(text, x0, y0);
		tui_NewTcomponent = TUI_AddTcomponent_Forced(tui_NewTcomponent, reference_Name, Tlabel);
	SiNo
		error_message_Function("TUI_AddTComponent_NewLabel()", "Its not a TUI interface");
	FinSi
FinFuncion

Funcion tui_NewTcomponent <- TUI_AddTComponent_NewHorizontalRuler(tui_window, reference_Name, x0, y0, value)
	Definir tui_NewTcomponent, THorizontal Como Texto;
	tui_NewTcomponent = tui_window;
	Si TUI_IsInterface_Valid(tui_window) Entonces
		THorizontal= TComponent_NewHorizontalRuler(x0, y0, value);
		tui_NewTcomponent = TUI_AddTcomponent_Forced(tui_NewTcomponent, reference_Name, THorizontal);
	SiNo
		error_message_Function("TUI_AddTComponent_NewHorizontalRuler()", "Its not a TUI interface");
	FinSi
FinFuncion

Funcion tui_NewTcomponent <- TUI_AddTComponent_NewVerticalRuler(tui_window, reference_Name, x0, y0, value)
	Definir tui_NewTcomponent, TVertical Como Texto;
	tui_NewTcomponent = tui_window;
	Si TUI_IsInterface_Valid(tui_window) Entonces
		TVertical = TComponent_NewVerticalRuler(x0, y0, value);
		tui_NewTcomponent = TUI_AddTcomponent_Forced(tui_NewTcomponent, reference_Name, TVertical);
	SiNo
		error_message_Function("TUI_AddTComponent_NewVerticalRuler()", "Its not a TUI interface");
	FinSi
FinFuncion

Funcion tui_NewTcomponent <- TUI_AddTComponent_NewPanel(tui_window, reference_Name, x0, y0, x1, y1)
	Definir tui_NewTcomponent, TPanel Como Texto;
	tui_NewTcomponent = tui_window;
	Si TUI_IsInterface_Valid(tui_window) Entonces
		TPanel = TComponent_NewPanel(x0, y0, x1, y1);
		tui_NewTcomponent = TUI_AddTcomponent_Forced(tui_NewTcomponent, reference_Name, TPanel);
	SiNo
		error_message_Function("TUI_AddTComponent_NewPanel()", "Its not a TUI interface");
	FinSi
FinFuncion

Funcion tui_NewTcomponent <- TUI_AddTComponent_NewSpriteString(tui_window, reference_Name, SpriteString_Structure, sprite_Effect, x0, y0)
	Definir tui_NewTcomponent, TSprite Como Texto;
	tui_NewTcomponent = tui_window;
	Si TUI_IsInterface_Valid(tui_window) Entonces
		TSprite = __private_TComponent_ForcerdNewSpriteString(SpriteString_Structure, sprite_effect, x0, y0);
		tui_NewTcomponent = TUI_AddTcomponent_Forced(tui_NewTcomponent, reference_Name, TSprite);
	SiNo
		error_message_Function("TUI_AddTComponent_NewPanel()", "Its not a TUI interface");
	FinSi
FinFuncion
//----[ TUI_TOCANVAS ]---------------------------------------------------------------------<#>
Funcion new_canvas <- TUI_ToCanvas(tui_window)
	Definir new_canvas, Wsize, Store_Setter Como Texto;
	Definir Wx, Wy, index_separator Como Numero;
	Si TUI_IsInterface_Valid(tui_window) Entonces 
		Wsize = TUI_GetTproperty_Position(tui_window);
		index_separator = string_indexOf(Wsize, symbol_Separator_Simple());
		Wx = string_ToNum(string_substring(Wsize, 0, index_separator));
		Wy = string_ToNum(string_substring_from(Wsize, increment(index_separator)));
		Store_Setter = TUI_GetTProperty_Store(tui_window);
		new_canvas = __private_canvas_DrawLinearCollection_Tcomponent(canvas_New(Wx,Wy), Wx, Wy, Store_Setter);
	SiNo
		error_message_Function("TUI_Tocanvas(tui_window)","Its not a TUI interface");
	FinSi
FinFuncion

Funcion new_canvas <- __private_canvas_DrawLinearCollection_Tcomponent(canvas, Cx, Cy, TlinearCollection)
	Definir new_canvas, data_soup, string_sumation Como Texto;
	Definir index_DataArea, index_MetaData, index_ExtraData, size_Linear Como Numero;
	index_DataArea = increment(string_indexOf(TlinearCollection, symbol_DataArea()));
	index_ExtraData = string_LastindexOf(TlinearCollection, symbol_ExtraData());
	index_MetaData = string_LastindexOf_fromIndex(TlinearCollection, symbol_MetaData(), index_ExtraData);
	data_soup = string_substring(TlinearCollection, index_DataArea, index_MetaData);
	string_sumation= string_substring(TlinearCollection, increment(index_MetaData), index_ExtraData);
	new_canvas = __private_Tocanvas_Bydata_soup(canvas, Cx, Cy, data_soup, string_sumation);
FinFuncion

Funcion new_canvas <- __private_Tocanvas_Bydata_soup(canvas, Cx, Cy, data_soup, string_sumation)
	Definir new_canvas, num_carry, Char_Current, data_Current Como Texto;
	Definir i, index_Tcomponent, index_Tcomponent_Dec, length_data_value Como Numero;
	Definir length_StringSumation Como Numero;
	Definir IsNumber Como Logico;
	num_carry 	     = "";
	i				 = 0;
	length_StringSumation  = string_Length(string_sumation);
	index_Tcomponent	    = string_Length(data_soup);
	new_canvas = canvas;
	si string_Length(data_soup) < 1 Entonces
		i = increment(length_StringSumation);
	FinSi
	Mientras i <= length_StringSumation Hacer
		Char_Current = char_At(string_sumation, i);
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(num_carry, Char_Current);
		FinSi
		Si !IsNumber & !string_isEmpty(num_carry) | Num_isEquals(i, length_StringSumation) Entonces
			length_data_value   	 = string_ToNum(num_carry);
			si length_data_value > 0 Entonces
				index_Tcomponent_Dec = decrement_step(index_Tcomponent, length_data_value);
				data_Current 	     = string_substring(data_soup, index_Tcomponent_Dec, index_Tcomponent);
				new_canvas  		 = canvas_DrawTComponent(new_canvas, Cx, Cy, data_Current);
				index_Tcomponent     = index_Tcomponent_Dec;
			SiNo
				error_message_Function("__private_Tocanvas_Bydata_soup()","size tcomponent length < 1");
			FinSi
			num_carry      		 = "";// clear
		FinSi
		i = increment(i);
	FinMientras
FinFuncion
//----[ REMOVE ]---------------------------------------------------------------------<#>
Funcion TUI_result <- TUI_RemoveTcomponent(tui_window, reference_Name) 
	Definir TUI_result, Store_Setter, tcomponent_Element Como Texto;
	Store_Setter = TUI_GetTProperty_Store(tui_window);
	tcomponent_Element = collectionSetter_Key_GetValue_ToString(Store_Setter, reference_Name);
	si Tcomponent_IsTcomponent(tcomponent_Element) Entonces
		si Tcomponent_HasInput(tcomponent_Element) Entonces
			TUI_result = __private_TUI_RemoveTcomponent_InStore(tui_window, reference_Name, Store_Setter);
		SiNo
			TUI_result = __private_TUI_TcomponentInput_Remove_inStore(tui_window, reference_Name, Store_Setter);
		FinSi
	SiNo
		TUI_result = tui_window;
		error_message_Function("TUI_AddTcomponent","Its not a Tcomponent valid");
	FinSi	
FinFuncion

Funcion TUI_result <- TUI_RemoveTcomponent_Forced(tui_window, reference_Name) 
	Definir TUI_result, Store_Setter Como Texto;
	Store_Setter = TUI_GetTProperty_Store(tui_window);
	TUI_result   = __private_TUI_RemoveTcomponent_InStore(tui_window, reference_Name, Store_Setter);
FinFuncion

Funcion TUI_result <- TUI_TcomponentInput_Remove_Forced(tui_window, reference_Name) 
	Definir TUI_result, Store_Setter Como Texto;
	Store_Setter = TUI_GetTProperty_Store(tui_window);
	TUI_result = __private_TUI_TcomponentInput_Remove_inStore(tui_window, reference_Name, Store_Setter);
FinFuncion

Funcion TUI_result <- __private_TUI_RemoveTcomponent_InStore(tui_window, reference_Name, Store_Setter) 
	Definir TUI_result Como Texto;
	Store_Setter = collectionSetter_RemoveKeyValue_ByString(Store_Setter, reference_Name);
	TUI_result   = linearCollection_SetElement_ToString(tui_window, TindexFrame_Store(), Store_Setter);
FinFuncion

Funcion TUI_result <- __private_TUI_TcomponentInput_Remove_inStore(tui_window, reference_Name, Store_Setter) 
	Definir TUI_result, input_TUI, tcomponent_Element, input_Tcomponent Como Texto;
	input_TUI	 = TUI_GetTProperty_Input(tui_window);
	tcomponent_Element = collectionSetter_Key_GetValue_ToString(Store_Setter, reference_Name);
	input_Tcomponent = Tcomponent_GetTproperty_Input(tcomponent_Element);
	input_TUI	 = collectionSetter_RemoveKeyValue_ByString(Store_Setter, input_Tcomponent);
	Store_Setter = collectionSetter_RemoveKeyValue_ByString(Store_Setter, reference_Name);
	TUI_result   = linearCollection_SetElement_ToString(tui_window, TindexFrame_Store(), Store_Setter);
	TUI_result   = linearCollection_SetElement_ToString(TUI_result, TindexFrame_Input(), input_TUI);
FinFuncion
//----[ BOOLEANS ]-----------------------------------------------------------------<#>
Funcion Exist_input <- TUI_TFrameInput_Exist(tui_window, input_string)
	Definir Exist_input, input_inner Como Logico;
	input_inner = TUI_GetTProperty_Input(tui_window);
	Exist_input = collectionSetter_Exist_ByString(input_inner, input_string);
FinFuncion

Funcion isTUI <- TUI_IsInterface_Valid(interface_string)
	Definir isTUI Como Logico;
	isTUI = string_isEquals(collection_getNameCollection(interface_string), TUI_TYPE_TFRAME());
FinFuncion
//----[ PARSE_POINT ]----------------------------------------------------------------<#>
Funcion tcomponent_Point <- TUI_ParsePointXY_ToString(x0, y0)
	Definir tcomponent_Point Como Texto;	
	tcomponent_Point = string_append_withSeparator(num_ToString(x0), num_ToString(y0), symbol_Separator_Simple());
FinFuncion

Funcion tcomponent_Point_Full <- TUI_ParseTwoPointsXY_ToString(x0, y0, x1, y1)
	Definir tcomponent_Point, tcomponent_Point2, tcomponent_Point_Full Como Texto;
	tcomponent_Point = TUI_ParsePointXY_ToString(x0, y0);
	tcomponent_Point2 = TUI_ParsePointXY_ToString(x1, y1);
	tcomponent_Point_Full = string_append_withSeparator(tcomponent_Point, tcomponent_Point2, symbol_Separator());
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=========================================
Funcion TYPE <- TUI_TYPE_TFRAME
	Definir TYPE Como Texto;
	TYPE = "TUI";
FinFuncion

Funcion TYPE <- TUI_TYPE_TSTORE
	Definir TYPE Como Texto;
	TYPE = "TStore";
FinFuncion

Funcion TYPE <- TUI_TYPE_TINPUT
	Definir TYPE Como Texto;
	TYPE = "Tinput";
FinFuncion

Funcion TYPE <- TUI_TYPE_TCOMPONENT
	Definir TYPE Como Texto;
	TYPE = "Tcomponent";
FinFuncion

Funcion tIndex <- TindexFrame_Store
	Definir tIndex Como Numero;
	tIndex = 2;
FinFuncion

Funcion tIndex <- TindexFrame_Input
	Definir tIndex Como Numero;
	tIndex = 1;
FinFuncion

Funcion tIndex <- TindexFrame_Size
	Definir tIndex Como Numero;
	tIndex = 0;
FinFuncion
///$$$$$[ TCOMPONETN ]$$$$$$$$$$$$$$$$[  -+5_1 ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Funcion tcomponent_Build <- Tcomponent_New(type, x0, y0)
	Definir tcomponent_Build, tcomponent_Size Como Texto;
	tcomponent_Size = TUI_ParsePointXY_ToString(x0, y0);
	tcomponent_Build = collectionSetter_New(TUI_TYPE_TCOMPONENT(), TYPE_STRING());
	tcomponent_Build = collectionSetter_addValueFunction(tcomponent_Build, TYPE_STRING());
	tcomponent_Build = collectionSetter_AddKeyValue_ByStringForced(tcomponent_Build ,  TProperty_Position(), tcomponent_Size);
	tcomponent_Build = collectionSetter_AddKeyValue_ByStringForced(tcomponent_Build ,  TProperty_Type(), type);
FinFuncion
//----[ ADD_PROPERTY ]---------------------------------------------------------------<#>
Funcion tcomponent_Build <- Tcomponent_AddTPropertyInput(tcomponent, input)
	Definir tcomponent_Build Como Texto;
	tcomponent_Build = collectionSetter_AddKeyValue_ByStringForced(tcomponent,  TProperty_Input(), input);
FinFuncion

Funcion tcomponent_Build <- Tcomponent_AddTPropertyText(tcomponent, text)
	Definir tcomponent_Build Como Texto;
    tcomponent_Build = collectionSetter_AddKeyValue_ByStringForced(tcomponent, TProperty_Text(), text);
FinFuncion

Funcion tcomponent_Build <- Tcomponent_AddTPropertyValue(tcomponent, value)
	Definir tcomponent_Build Como Texto;
    tcomponent_Build = collectionSetter_AddKeyValue_ByStringForced(tcomponent, TProperty_Value(), value);
FinFuncion
//----[ BOOLEANS ]-----------------------------------------------------------------<#>
Funcion isTUI <- Tcomponent_IsTcomponent(interface_string)
	Definir isTUI Como Logico;
	isTUI = string_isEquals(collection_getNameCollection(interface_string), TUI_TYPE_TCOMPONENT());
FinFuncion

Funcion isTUI <- Tcomponent_IsTcomponentType(interface_string, type_Tcomponent)
	Definir isTUI Como Logico;
	isTUI = string_isEquals(collectionSetter_Key_GetValue_ToString(interface_string, TProperty_Type()), type_Tcomponent);	
FinFuncion

Funcion THasInput <- Tcomponent_HasInput(tcomponent)
	Definir THasInput Como Logico;
	THasInput = collectionSetter_Exist_ByString(tcomponent, TProperty_Input());
FinFuncion
//----[ GETTERS ]---------------------------------------------------------------------<#>
Funcion Tproperty <- Tcomponent_GetTproperty_Position(tcomponent_Element)
	Definir Tproperty Como Texto;
	Tproperty = linearCollection_getFirst_ToString(tcomponent_Element);
FinFuncion

Funcion Tproperty <- Tcomponent_GetTproperty_Type(tcomponent_Element)
	Definir Tproperty Como Texto;
	Tproperty = linearCollection_getElement_ToString(tcomponent_Element, 1);
FinFuncion

Funcion Tproperty <- Tcomponent_GetTproperty_Value(tcomponent_Element)
	Definir Tproperty Como Texto;
	Tproperty = collectionSetter_Key_GetValue_ToString(tcomponent_Element, TProperty_Value());
FinFuncion

Funcion Tproperty <- Tcomponent_GetTproperty_Input(tcomponent_Element)
	Definir Tproperty Como Texto;
	Tproperty = collectionSetter_Key_GetValue_ToString(tcomponent_Element, TProperty_Input());
FinFuncion

Funcion Tproperty <- Tcomponent_GetTproperty_Text(tcomponent_Element)
	Definir Tproperty Como Texto;
	Tproperty = collectionSetter_Key_GetValue_ToString(tcomponent_Element, TProperty_Text());
FinFuncion
//----[ SETTERS ]---------------------------------------------------------------------<#>
Funcion New_TComponent <- Tcomponent_SetTproperty(Tcomponent, Tproperty_Component, value_string) 
	Definir New_TComponent Como Texto;
	New_TComponent = collectionSetter_Key_SetValue_ByString(Tcomponent, Tproperty_Component, value_string);
FinFuncion

Funcion New_TComponent <- Tcomponent_SetTproperty_Text(Tcomponent, value_string) 
	Definir New_TComponent Como Texto;
	New_TComponent = Tcomponent_SetTproperty(Tcomponent, Tproperty_Text(), value_string);
FinFuncion

Funcion New_TComponent <- Tcomponent_SetTproperty_Input(Tcomponent, value_string) 
	Definir New_TComponent Como Texto;
	New_TComponent = Tcomponent_SetTproperty(Tcomponent, TProperty_Input(), value_string);
FinFuncion

Funcion New_TComponent <- Tcomponent_SetTproperty_value_ByString(Tcomponent, value_string) 
	Definir New_TComponent Como Texto;
	New_TComponent = Tcomponent_SetTproperty(Tcomponent, TProperty_Value(), value_string);
FinFuncion

Funcion New_TComponent <- Tcomponent_SetTproperty_value(Tcomponent, value_type, TYPE) 
	Definir New_TComponent Como Texto;
	New_TComponent = Tcomponent_SetTproperty(Tcomponent, TProperty_Value(), value_Parser_TypeToString(value_type, TYPE));
FinFuncion

Funcion New_TComponent <- Tcomponent_SetTproperty_Position_TwoPoints(Tcomponent, x0, y0, x1, y1) 
	Definir New_TComponent Como Texto;
	tcomponent_Points = TUI_ParseTwoPointsXY_ToString(x0, y0, x1, y1);
	New_TComponent = Tcomponent_SetTproperty_Position_ByString(Tcomponent, tcomponent_Points);
FinFuncion

Funcion New_TComponent <- Tcomponent_SetTproperty_Position(Tcomponent, x0, y0) 
	Definir New_TComponent Como Texto;
	New_TComponent = Tcomponent_SetTproperty_Position_ByString(Tcomponent, TUI_ParsePointXY_ToString(x0, y0));
FinFuncion

Funcion New_TComponent <- Tcomponent_SetTproperty_Position_ByString(Tcomponent, value_string) 
	Definir New_TComponent Como Texto;
	New_TComponent = Tcomponent_SetTproperty(Tcomponent, TProperty_Position(), value_string);
FinFuncion
//----[ NEW ]------------------------------------------------------------------------<#>
Funcion NewTButton <- TComponent_NewButton(text, input_string, x0, y0)
	Definir NewTButton Como Texto;
	NewTButton = Tcomponent_New(Tcomponent_TYPE_BUTTON(), x0, y0);
	NewTButton = Tcomponent_AddTPropertyInput(NewTButton, input_string);
	NewTButton = Tcomponent_AddTPropertyText(NewTButton, text);
FinFuncion

Funcion NewTComponent <- TComponent_NewLabel(text, x0, y0)
	Definir NewTComponent Como Texto;
	NewTComponent = Tcomponent_New(Tcomponent_TYPE_LABEL(), x0, y0);
	NewTComponent = Tcomponent_AddTPropertyText(NewTComponent, text);
FinFuncion

Funcion NewTComponent <- TComponent_NewHorizontalRuler(x0, y0, width)
	Definir NewTComponent Como Texto;
	NewTComponent = Tcomponent_New(Tcomponent_TYPE_HORIZONTAL_RULER(), x0, y0);
	NewTComponent = Tcomponent_AddTPropertyValue(NewTComponent, num_ToString(width));
FinFuncion

Funcion NewTComponent <- TComponent_NewVerticalRuler(x0, y0, height)
	Definir NewTComponent Como Texto;
	NewTComponent = Tcomponent_New(Tcomponent_TYPE_VERTICAL_RULER(), x0, y0);
	NewTComponent = Tcomponent_AddTPropertyValue(NewTComponent, num_ToString(height));
FinFuncion

Funcion NewTComponent <- TComponent_NewPanel(x0, y0, x1, y1)
	Definir NewTComponent, pos_panel, pos_panel_down, pos_final Como Texto;
	NewTComponent = Tcomponent_New(Tcomponent_TYPE_PANEL(), x0, y0);
	pos_panel = Tcomponent_GetTproperty_Position(NewTComponent);
	pos_panel_down = TUI_ParsePointXY_ToString(x1, y1);
	pos_final = string_append_withSeparator(pos_panel, pos_panel_down, symbol_Separator());
	NewTComponent = collectionSetter_Key_SetValue_ByString(NewTComponent, TProperty_Position(), pos_final);
FinFuncion

Funcion NewTComponent <- TComponent_NewSpriteString(string_Sprite, sprite_effect, x0, y0)
	Definir NewTComponent, pos_panel  Como Texto;
	si SpriteString_isSpriteValid(string_Sprite) Entonces
		NewTComponent = __private_TComponent_ForcerdNewSpriteString(string_Sprite, sprite_effect, x0, y0);
	SiNo
		NewTComponent = TComponent_NewLabel("<ERROR_sprite_STRING>", x0, y0);
		error_message_Function("TComponent_NewSpriteString(sprite, separator, x, y)", "sprite not is TYPE_SPRITESTRING() [use SpriteString_New()]");
	FinSi
FinFuncion

Funcion NewTComponent <- __private_TComponent_ForcerdNewSpriteString(string_Sprite, sprite_effect, x0, y0)
	Definir NewTComponent, pos_panel  Como Texto;
	NewTComponent = Tcomponent_New(Tcomponent_TYPE_SPRITE_STRING(), x0, y0);
	NewTComponent = Tcomponent_AddTPropertyText(NewTComponent, string_Sprite);
	NewTComponent = Tcomponent_AddTPropertyValue(NewTComponent, sprite_effect);
FinFuncion
//----[ DRAW_TCOMPONENT ]------------------------------------------------------------<#>
Funcion canvas_Result <- canvas_DrawTComponent_Button(canvas, Cx, Cy, Tbutton)
	Definir canvas_Result, pos_Tbutton, text_Tbutton Como Texto;
	Definir index_separator, x0, y0 Como Numero;
	canvas_Result = canvas;
	si Tcomponent_IsTcomponent(Tbutton) Entonces
		pos_Tbutton = Tcomponent_GetTproperty_Position(Tbutton);
		text_Tbutton = collectionSetter_Key_GetValue_ToString(Tbutton, TProperty_Text());
		index_separator = string_indexOf(pos_Tbutton, symbol_Separator_Simple());
		x0 = string_ToNum(string_substring(pos_Tbutton, 0, index_separator));
		y0 = string_ToNum(string_substring_from(pos_Tbutton, increment(index_separator)));
		canvas_Result =  canvas_DrawButton(canvas, Cx, Cy, text_Tbutton, x0, y0);
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawTComponent_Label(canvas, Cx, Cy, Tlabel)
	Definir canvas_Result, pos_Tlabel, text_Tlabel Como Texto;
	Definir index_separator, x0, y0 Como Numero;
	canvas_Result = canvas;
	si Tcomponent_IsTcomponent(Tlabel) Entonces
		pos_Tlabel = Tcomponent_GetTproperty_Position(Tlabel);
		index_separator = string_indexOf(pos_Tlabel, symbol_Separator_Simple());
		x0 = string_ToNum(string_substring(pos_Tlabel, 0, index_separator));
		y0 = string_ToNum(string_substring_from(pos_Tlabel, increment(index_separator)));
		text_Tlabel = Tcomponent_GetTproperty_Text(Tlabel);
		canvas_Result = canvas_DrawText(canvas_Result, Cx, Cy, text_Tlabel, x0, y0);
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawTComponent_HorizontalRuler(canvas, Cx, Cy, THrzRuler)
	Definir canvas_Result, pos_Thrz_ruler Como Texto;
	Definir index_separator, x0, y0, width_hr Como Numero;
	canvas_Result = canvas;
	si Tcomponent_IsTcomponent(THrzRuler) Entonces
		pos_Thrz_ruler = Tcomponent_GetTproperty_Position(THrzRuler);
		index_separator = string_indexOf(pos_Thrz_ruler, symbol_Separator_Simple());
		x0 = string_ToNum(string_substring(pos_Thrz_ruler, 0, index_separator));
		y0 = string_ToNum(string_substring_from(pos_Thrz_ruler, increment(index_separator)));
		width_hr = string_ToNum(Tcomponent_GetTproperty_Value(THrzRuler));
		canvas_Result = canvas_DrawHorizontalLine(canvas_Result, Cx, Cy, x0, y0, width_hr);
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawTComponent_VerticalRuler(canvas, Cx, Cy, TVrtRuler)
	Definir canvas_Result, pos_Tvrz_ruler Como Texto;
	Definir index_separator, x0, y0, height_vrz Como Numero;
	canvas_Result = canvas;
	si Tcomponent_IsTcomponent(TVrtRuler) Entonces
		pos_Tvrz_ruler = Tcomponent_GetTproperty_Position(TVrtRuler);
		index_separator = string_indexOf(pos_Tvrz_ruler, symbol_Separator_Simple());
		x0 = string_ToNum(string_substring(pos_Tvrz_ruler, 0, index_separator));
		y0 = string_ToNum(string_substring_from(pos_Tvrz_ruler, increment(index_separator)));
		height_vrz = string_ToNum(Tcomponent_GetTproperty_Value(TVrtRuler));
		canvas_Result = canvas_DrawVerticalLine(canvas_Result, Cx, Cy, x0, y0, height_vrz);
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawTComponent_Panel(canvas, Cx, Cy, TPanel)
	Definir canvas_Result, pos_Tpanel Como Texto;
	Definir index_separator, index_separator_down, index_separatorPos Como Numero;
	Definir x0, y0, width, height Como Numero;
	canvas_Result = canvas;
	si Tcomponent_IsTcomponent(TPanel) Entonces
		pos_Tpanel = Tcomponent_GetTproperty_Position(TPanel);
		index_separator = string_indexOf(pos_Tpanel, symbol_Separator_Simple());
		index_separator_down = string_LastIndexOf(pos_Tpanel, symbol_Separator_Simple());
		index_separatorPos = string_LastIndexOf_fromIndex(pos_Tpanel, symbol_Separator(), index_separator_down);
		x0 = string_ToNum(string_substring(pos_Tpanel, 0, index_separator));
		y0 = string_ToNum(string_substring(pos_Tpanel, increment(index_separator), index_separatorPos));
		width = string_ToNum(string_substring(pos_Tpanel, increment(index_separatorPos), index_separator_down));
		height = string_ToNum(string_substring_from(pos_Tpanel, increment(index_separator_down)));
		canvas_Result = canvas_DrawPanel(canvas, Cx, Cy, x0, y0, width, height);
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawTComponent_SpriteString(canvas, Cx, Cy, TSprite)
	Definir canvas_Result, pos_TSprite, SpriteString, sprite_Effect Como Texto;
	Definir x0, y0, index_separator Como Numero;
	canvas_Result = canvas;
	si Tcomponent_IsTcomponent(TSprite) Entonces
		pos_TSprite = Tcomponent_GetTproperty_Position(TSprite);
		index_separator = string_indexOf(pos_TSprite, symbol_Separator_Simple());
		x0 = string_ToNum(string_substring(pos_TSprite, 0, index_separator));
		y0 = string_ToNum(string_substring_from(pos_TSprite, increment(index_separator)));
		SpriteString = Tcomponent_GetTproperty_Text(TSprite);
		sprite_Effect = Tcomponent_GetTproperty_Value(TSprite);
		canvas_Result = __private_canvas_DrawSpriteString_sprite_effect(canvas, Cx, Cy, SpriteString, x0, y0, pixel_clear(), sprite_Effect);
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawTComponent(canvas, Cx, Cy, Tcomponent)
	Definir canvas_Result, type Como Texto;
	type = Tcomponent_GetTproperty_Type(tcomponent);
	Segun type Hacer
		caso Tcomponent_TYPE_BUTTON():
			canvas_Result = canvas_DrawTComponent_Button(canvas, Cx, Cy, Tcomponent);
		caso Tcomponent_TYPE_LABEL():
			canvas_Result = canvas_DrawTComponent_Label(canvas, Cx, Cy, Tcomponent);
		caso Tcomponent_TYPE_HORIZONTAL_RULER():
			canvas_Result = canvas_DrawTComponent_HorizontalRuler(canvas, Cx, Cy, Tcomponent);
		caso Tcomponent_TYPE_VERTICAL_RULER():
			canvas_Result = canvas_DrawTComponent_VerticalRuler(canvas, Cx, Cy, Tcomponent);
		caso Tcomponent_TYPE_PANEL():
			canvas_Result = canvas_DrawTComponent_Panel(canvas, Cx, Cy, Tcomponent);
		caso Tcomponent_TYPE_SPRITE_STRING():
			canvas_Result = canvas_DrawTComponent_SpriteString(canvas, Cx, Cy, Tcomponent);
		De Otro Modo:
			canvas_Result = canvas;
	FinSegun
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=========================================
Funcion symbol_area <- symbol_TComponent
	Definir symbol_area Como Texto;
	symbol_area = "";//001C
FinFuncion
//....[ property ]......................................................................
Funcion tcomponent <- TProperty_Position
	Definir tcomponent Como Texto;
	tcomponent = "[position]";
FinFuncion

Funcion tcomponent <- TProperty_Text
	Definir tcomponent Como Texto;
	tcomponent = "[text]";
FinFuncion

Funcion tcomponent <- TProperty_Value
	Definir tcomponent Como Texto;
	tcomponent = "[value]";
FinFuncion

Funcion tcomponent <- TProperty_Input
	Definir tcomponent Como Texto;
	tcomponent = "[input]";
FinFuncion

Funcion tcomponent <- TProperty_Type
	Definir tcomponent Como Texto;
	tcomponent = "[type]";
FinFuncion

Funcion tcomponent <- TProperty_Visible
	Definir tcomponent Como Texto;
	tcomponent = "[visible]";
FinFuncion
//....[ tcomponent_type ]...............................................................
Funcion Tcomponent_Type <- Tcomponent_TYPE_BUTTON
	Definir Tcomponent_Type Como Texto;
	Tcomponent_Type = "Tbutton";
FinFuncion

Funcion Tcomponent_Type <- Tcomponent_TYPE_LABEL
	Definir Tcomponent_Type Como Texto;
	Tcomponent_Type = "Tlabel";
FinFuncion

Funcion Tcomponent_Type <- Tcomponent_TYPE_HORIZONTAL_RULER
	Definir Tcomponent_Type Como Texto;
	Tcomponent_Type = "THorizontalRuler";
FinFuncion

Funcion Tcomponent_Type <- Tcomponent_TYPE_VERTICAL_RULER
	Definir Tcomponent_Type Como Texto;
	Tcomponent_Type = "TVerticalRuler";
FinFuncion

Funcion Tcomponent_Type <- Tcomponent_TYPE_PANEL
	Definir Tcomponent_Type Como Texto;
	Tcomponent_Type = "TPanel";
FinFuncion

Funcion Tcomponent_Type <- Tcomponent_TYPE_SPRITE_STRING
	Definir Tcomponent_Type Como Texto;
	Tcomponent_Type = "TSpriteString";
FinFuncion
///%%%%%[ VEC ]%%%%%%%%%%%%%%%%%%%%%%[   #+6  ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
// ------------------- NULL FunctionS
///%%%%%[ ASCCI/HASH ]%%%%%%%%%%%%%%%[   #+7  ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//----[ PARSE ]---------------------------------------------------------------------<#>
Funcion char <- ascii_char(code)
	Definir i Como Numero;
	Definir char Como Texto;
	i=0;
	Mientras code >= ascii_getOffSet_Category(i+1) Hacer
		i = increment(i);
	FinMientras
	
	segun i Hacer
		0: char = char_At(ascii_GetControlSymbols(), code);
		1: char = char_At(ascii_GetBasicSymbols(), decrement_step(code, 32));
		2: char = char_At(ascii_GetNumberSymbols(), decrement_step(code, 48));
		3: char = char_At(ascii_GetOperatorSymbols(), decrement_step(code, 58));
		4: char = char_At(ascii_GetLetters_UpperCase(), decrement_step(code, 65));
		5: char = char_At(ascii_GetSpecialSymbols(), decrement_step(code, 91));
		6: char = char_At(ascii_GetLetters_LowerCase(), decrement_step(code, 97));
		7: char = char_At(ascii_GetExtraSymbols(), decrement_step(code, 123));
		De Otro Modo: char = 'ñ';
	FinSegun
FinFuncion

Funcion ascii_codeCategory <- ascii_ord(char)
	Definir ascii_codeCategory, i Como Numero;
	i=0;
	Mientras !ascii_IsCategory_Num(char, i) Hacer
		i = increment(i);
	FinMientras
	
	segun i Hacer
		0: ascii_codeCategory = string_indexOf(ascii_GetControlSymbols(), char);
		1: ascii_codeCategory = increment_step(string_indexOf(ascii_GetBasicSymbols(), char), 32);
		2: ascii_codeCategory = increment_step(string_indexOf(ascii_GetNumberSymbols(), char), 48);
		3: ascii_codeCategory = increment_step(string_indexOf(ascii_GetOperatorSymbols(), char), 58);
		4: ascii_codeCategory = increment_step(string_indexOf(ascii_GetLetters_UpperCase(), char), 65);
		5: ascii_codeCategory = increment_step(string_indexOf(ascii_GetSpecialSymbols(), char), 91);
		6: ascii_codeCategory = increment_step(string_indexOf(ascii_GetLetters_LowerCase(), char), 97);
		7: ascii_codeCategory = increment_step(string_indexOf(ascii_GetExtraSymbols(), char), 123);
		De Otro Modo: ascii_codeCategory = 164;
	FinSegun
FinFuncion
//----[ HASH ]----------------------------------------------------------------------<#>
Funcion hash <- ascii_hash_Mini_DBJ2(result_string)
	Definir hash, i, text_length, num_limited Como Numero;
	Definir key, left, Right, center, hash_str Como Texto;
	hash = 5381;
	num_limited = 100000000;
	text_length = string_Length(result_string);
	left = string_substring(result_string, math_max_Int(decrement_step(text_length, 3), 0), text_length);
	Right = string_substring(result_string, 0, math_min_Int(2, text_length));
	center = string_substring(result_string, text_length/2 , math_min_Int(text_length/2  + 2, text_length));
	key = string_append_withSeparator(left, Right, center );
	para i = 0 Hasta decrement(string_Length(key)) con paso 1 hacer
		hash = (hash * 33) + ascii_ord( char_At(key, i));
		Si hash > num_limited Entonces
			hash_str = Num_toString(hash);
			hash = string_ToNum(string_substring_from(hash_str, string_Length(hash_str)/2));
		FinSi
	FinPara
FinFuncion

Funcion hash <- ascii_hash_DBJ2(result_string)
	Definir hash, i Como Numero;
	hash = 5381;
	para i = 0 Hasta decrement(string_Length(result_string)) con paso 1 hacer
		hash = (hash * 33) + ascii_ord( char_At(result_string, i) );
	FinPara
FinFuncion
//----[ GETTERS ]---------------------------------------------------------------------<#>
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
	ControlSymbols = "	";//TAP BL
FinFuncion

Funcion BasicSymbols <- ascii_GetBasicSymbols
	Definir BasicSymbols Como Texto;
	BasicSymbols = " ! #+$%& ()*+, -./";// !"#$%&'()*+, -./
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
//----[ IS_CATEGORY ]----------------------------------------------------------------<#>
Funcion category_Check <- ascii_IsCategory_Num(char, index)
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
		De Otro Modo: category_Check  = true();
	FinSegun
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
///%%%%%[ START_CODE ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Funcion duration_Timer <- Execution_Timer(localTime_Start, funtion_return)
	Definir duration_Timer, localTime_End Como Texto;
	localTime_End = localTime_now();
	duration_Timer = duration_between(localTime_Start, localTime_End);
FinFuncion

Funcion message_duration(struct_localTime)
	Definir time_Total, time_message Como Texto;
	time_Total 	  = Color_setColorText(localTime_ToString(struct_localTime), COLOR_CYAN());
	time_message  = Color_setColorText("::: execution time ::: format(hh:mm:ss) ::: ", COLOR_BLUE());
	println(string_append(time_message, time_Total));
FinFuncion

Algoritmo run_code
	Definir duration_Timer, localTime_Start, localTime_End  Como Texto;
	localTime_Start = localTime_Now();
	clear_Console();
	//sandbox_development();
	main();
	localTime_End = localTime_now();
	duration_Timer = duration_between(localTime_Start, localTime_End);
	message_duration(duration_Timer);
FinAlgoritmo
///%%%%%[ END_CODE ]%%%%%%%%[ ++0 ]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%