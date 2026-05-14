///%%%%%[ MAIN.................... ]%%%%%%%[    #0     ]%%%%%%%%%%%%%%%%%%


Funcion main
	println("Hello\nPseudoLib !!!");
FinFuncion


///%%%%%[ Pseudo_lib v 0.8.5 ]%%%%%%%%%%%%%%[    !1     ]%%%%%%%%%%%%%%%%%%
//________________________________________________________________________
//:: TABLE MODULES / CODE_SEARCH: Ctrl+F / year:2026 / © Bryan.A.M.Wilt ::
//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//::::: [ #0 / MAIN ] :: [ !1 TABLE MODULES ] :: [ ##0 / END CODE ] ::::::
//________________________________________________________________________
//  CODE  ::        NAME MODULE         ::         USE           :: STATE
//------------------------------------------------------------------------
//  #INP  ::  INPUT                     ::  user_input_          ::  [+]
//  #STR  ::  STRING                    ::  string_              ::  [+]
//  #ARR  ::  ARRAY                     ::  array_               ::  [p]
//  #PRN  ::  PRINTERS                  ::  print_ : prinln_     ::  [p]
//  #SLP  ::  SLEEP                     ::  sleep_               ::  [+]
//  #LOG  ::  LOGS                      ::  log_                 ::  [+]
//  #TST  ::  TEST                      ::  test_                ::  [+]
//  #INT  ::  INT                       ::  int_                 ::  [+]
//  #BST  ::  BINARY_STRING             ::  binarystring_        ::  [+]
//  #MTH  ::  MATH                      ::  math_                ::  [+]
//  #BLN  ::  BOOLEAN                   ::  boolean_             ::  [+]
//  #CDT  ::  CONDITIONS                ::  if_ : condition_     ::  [+]
//  #COL  ::  COLOR                     ::  COLOR_               ::  [+]
//  #VAL  ::  VALUE                     ::  value_               ::  [+]
//  #CLL  ::  COLLECTION                ::  collection_          ::  [+]
//  #MDA  ::  MANAGET_DATA              ::  managerData_         ::  [+]
//  #LCL  ::  LINEAR_COLLECTION         ::  linearCollection_    ::  [+]
//  #DEQ  ::  DEQUE                     ::  util_deque_          ::  [+]
//  #QUE  ::  QUEUE                     ::  util_queue_          ::  [+]
//  #STA  ::  STACK                     ::  util_stack_          ::  [+]
//  #TMP  ::  TEMPORAL\CHRONO_UNIT      ::  localDate_time_      ::  [+]
//  #LDA  ::  LOCALDATE                 ::  localDate_           ::  [+]
//  #LTI  ::  LOCALTIME                 ::  localTime_           ::  [+]
//  #LDT  ::  LOCALDATE_TIME            ::  localDate_time_      ::  [+]
//  #DUR  ::  DURATION                  ::  duration_            ::  [+]
//  #PER  ::  PERIOD                    ::  period_              ::  [+]
//  #LIS  ::  LIST                      ::  util_List_           ::  [+]
//  #CST  ::  COLLECTION_STORAGE        ::  collectionStorage_   ::  [+]
//  #CCE  ::  CELLS_COLLECTION          ::  collectionCells_     ::  [+]
//  #CCD  ::  CELLS_COLLECTION_DYNAMIC  ::  ...nCells_Dynamic_   ::  [+]
//  #CCS  ::  CELLS_COLLECTION_SETTER   ::  ...nCells_Setter_    ::  [+]
//  #SET  ::  SET                       ::  util_set_            ::  [+]
//  #CDC  ::  COLLECTION_DUAL_CELLS     ::  collectionDualCell_  ::  [+]
//  #CSC  ::  COLLECTION_STORAGE_CELLS  ::  collStorageCells_    ::  [p]
//  #MAP  ::  MAP                       ::  util_map_            ::  [+]
//  #OBJ  ::  OBJECTS                   ::  object_              ::  [+]
//  #CAN  ::  CANVAS                    ::  canvas_              ::  [+]
//  #SPR  ::  SPRITE                    ::  sprite_              ::  [+]
//  #TUI  ::  TUI                       ::  tui_                 ::  [+]
//  #TCO  ::  TCOMPONENT                ::  tComponent_          ::  [+]
//  #VEC  ::  VEC                       ::  vec_                 ::  [x]
//  #ASC  ::  ASCCI/HASH                ::  ascii_               ::  [+]
//------------------------------------------------------------------------
//:::: LINES_CODE: ~9600 ::: 41 MODULES ::: ( Pseint / version.2023 ) ::::
//________________________________________________________________________
//:::::::::::::::::::::::::: ( STATE MEANING ) :::::::::::::::::::::::::::
//------------------------------------------------------------------------
//  [+]: Stable                                                        
//  [D]: Current Development (Unusable temporaly)                      
//  [p]: stable (Pending additions)                                    
//  [x]: Unusable / undeveloped state                                  
//________________________________________________________________________
//    TYPE   ::::     TYPE_PSEINT     
//------------------------------------------------------------------------
//    String  =  Texto, Caracter 
//    Int     =  Entero, Numero, Numerico 
//    Float   =  Real, Numero
//   Boolean =  Logico 
//     | 	   =  || 
//     & 	   =  &&
//  return  = var <- FinFuncion(returns var at the end of the function)
//________________________________________________________________________
//::::::::::::::::::::: ( EXTENDED SYMBOLS SPANISH ) :::::::::::::::::::::
//------------------------------------------------------------------------
//  ¡ ¢ £ ¤ ¥ ¦ § ¨ © ª « ~ ­® ¯ ° ± ² ³ ´ µ ¶ · ¸ ¹ º » ¼ ½ ¾ ¿ À Á Â
// 
// Ã Ä Å Æ Ç È É Ê Ë Ì Í Î Ï Ð Ò Ó Ô Õ Ö × Ø Ù Ú Û Ü Ý Þ ß à á â ã ä å æ 
// 
// ç è é é ê ë ì í î ï ð ñ ò ó ô õ ö ÷ ø ù ú ü ý þ ÿ ñ Ñ
//________________________________________________________________________
//::::::::::::::::::::::::::: ( TO-DO LIST ) :::::::::::::::::::::::::::::
//------------------------------------------------------------------------
// cell revisar revisar el ascii de simbolos basicos (Basic)
// metodos: array_sort, Array_reverse, array_filter, Runnable(opcional)
// contains_IgnoreCase, posible agregado de mas componentes (opcional)
// print color 
// <TODO: update con Index_FromIndex> __private_string_occurrences_general
// <TODO: Agregar un CompareTo para cadenas > String
// <TODO: Eliminar o modifcar las animacion para hacerlas utiles > sleep
// <TODO: Mejorar lectura o dejarlo Como esta>  math_ Serie de Taylor
// <TODO: agregar hasColor y DeleteColor >  Color
// <TODO: agregar soporte para monocolor y agregar Como maquina de 
//        escritura (Hell_ luego Hello)>  en print_progress_formater()
//________________________________________________________________________
//::::::::::::::[ You are not expected to understand this ]:::::::::::::::
//------------------------------------------------------------------------
///%%%%%[ INPUT................... ]%%%%%%%[   #INP    ]%%%%%%%%%%%%%%%%%%
//----[ PRIMITIVE ]--------------------------------------------------<#>
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
	user_input = value_stringToType(user_input_obtained, TYPE);
FinFuncion
///%%%%%[ STRING.................. ]%%%%%%%[   #STR    ]%%%%%%%%%%%%%%%%%%
//----[ APPENDS ]----------------------------------------------------<#>
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
//----[ STRING_PARSE ]--------------------------------------------------------------<#>
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
//----[ LENGTH ]----------------------------------------------------<#>
Funcion num <- string_Length(text)
	Definir num Como Numero;
	num = Longitud(text);// --- native
FinFuncion

Funcion length_String <- string_Length_ToString(text)
	Definir length_String Como Texto;
	length_String = num_ToString(string_Length(text));
FinFuncion
//----[ INSERT ]----------------------------------------------------<#>
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
	Definir result_string, before, after Como Texto;
	Definir index_after Como Numero;
	before        = string_substring_from_start(text, index);
	index_after   = increment_step(index, if_else(isReplace, string_Length(text_insert), 0, TYPE_INT()));
	after         = string_substring_from(text, math_min_int(index_after, string_Length(text)));
	result_string = string_append_withSeparator(before, after, text_insert);
FinFuncion

Funcion result_string <- string_pad_start(text, text_pad)
	Definir result_string Como Texto;
	result_string=string_insert(text, string_substring_from_start(text_pad, math_max_Int(decrement_step(string_Length(text_pad), string_Length(text)), 0)), 0);
FinFuncion

Funcion result_string <- string_fit(text, text_pad)
	Definir result_string Como Texto;
	Definir text_length, pad_length, start_positionition Como Entero;
	text_length		= string_Length(text);
	pad_length		= string_Length(text_pad);
	start_positionition	= math_max_Int(decrement_step(pad_length, text_length), 0);
	result_string	= string_insert(text, string_substring(text_pad, 0, start_positionition), 0);
	result_string	= string_substring(result_string, 0, pad_length);
FinFuncion

Funcion result_string <-  string_fit_end(text, text_pad)
	Definir result_string, pad_text Como Texto;
	pad_text		= string_substring_from(text_pad, math_min_Int(string_Length(text), string_Length(text_pad)));
	result_string	= string_insert(text, pad_text, string_Length(text));
	result_string	= string_substring(result_string, 0, string_Length(text_pad));
FinFuncion

Funcion result_string <- string_repeatText(text, repeats)
	Definir result_string Como Texto;
	Definir current_repeats, next_repeats, missing_repeats, text_length Como Entero;
	si number_isEquals(repeats, 0) Entonces
		result_string = "";
	SiNo
		result_string = text;
		current_repeats = 1;
		text_length = String_length(text);
		next_repeats = increment_step(current_repeats, current_repeats);
		Mientras next_repeats <= repeats Hacer
			result_string = string_append(result_string, result_string);
			current_repeats = next_repeats;
			next_repeats = increment_step(current_repeats, current_repeats);
		FinMientras
		si current_repeats < repeats Entonces
			missing_repeats = decrement_step(repeats, current_repeats);
			result_string = string_append(result_string, String_subString(result_string, 0, (missing_repeats * text_length)));
		FinSi
	FinSi
FinFuncion
//----[ DELETE ]---------------------------------------------------------------------<#>
Funcion result_str <- string_Delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_Delete", text, start, end);
	start_Str = string_substring_from_start(text, start);//Hello <-]
	end_Str = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
FinFuncion

Funcion result_str <- string_Delete_From(text, start)
	Definir result_str Como Texto;
	result_str = string_Delete(text, start, string_Length(text));
FinFuncion
//----[ REMPLACE ]----------------------------------------------------<#>
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
//----[ REVERSE ]----------------------------------------------------<#>
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
//----[ SUBSTRING ]----------------------------------------------------<#>
Funcion strSubs <- __private_PSEINT_SUBCADENA(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

Funcion strSubs <- string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	message_validateIndexRange("string_substring", result_string, start, end);
	strSubs = if_else(number_isEquals(start, end), "", __private_PSEINT_SUBCADENA(result_string, start, math_max_int(end-1, 0)), TYPE_STRING());
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
//----[ INDEX ]----------------------------------------------------<#>
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
	Mientras index_end >= i & number_isEquals(index, -1) Hacer
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
	Mientras index_end <= i & number_isEquals(index, -1) Hacer
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
	Dimension pattern[pattern_length];
	
	Dimension LPS[pattern_length];
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
	
	condition = !number_isEquals(j, pattern_length);
	i = math_rangeLimit_Int(index_Start, 0, text_length);
	
	Mientras condition hacer 
		equalsChar = string_isEquals(pattern[j], char_At(text, i));
		j = if_else(equalsChar, increment(j), if_else(j<>0, LPS[math_max_Int(j-1, 0)], j, TYPE_INT()), TYPE_INT());
		i = if_else(equalsChar, increment(i), if_else(j<>0, i, increment(i), TYPE_INT()), TYPE_INT());
		condition = !number_isEquals(j, pattern_length) & i<=text_length;
	FinMientras
	index=if(equalsChar, i-j, TYPE_INT());
FinFuncion
//----[ OCURRENCES ]----------------------------------------------------<#>
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

Funcion result <- string_occurrences(text, text_match)
	Definir result Como Numero;
	result = __private_string_occurrences_general(text, text_match, false);
FinFuncion

Funcion result <- string_occurrences_overlap(text, text_match)
	Definir result Como Numero;
	result = __private_string_occurrences_general(text, text_match, true);
FinFuncion
//---[ COVERSIONS ]----------------------------------------------------<#>
Funcion result_string <- object_ToString(object_str, TYPE)
	Definir result_string Como Texto;
	Definir object_isValid Como Logico;
	object_isValid = object_isType(object_str, TYPE);
	si object_isValid Entonces
		result_string = object_str;
	SiNo
		result_string = object_new(TYPE);
		error_message_Function("object_ToString", string_append_withSeparator(TYPE, object_str, " // type no valid .        . "));
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
//----[ COUNTMATCH ]----------------------------------------------------<#>
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
//----[ IS_TYPE ]----------------------------------------------------<#>
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
	Mientras !boolean & !string_isEquals(array_string_Booleans_False(index), string_NULL()) hacer 
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
	Mientras !boolean & !string_isEquals(array_string_Booleans_True(index), string_NULL()) hacer 
		boolean = string_isEquals(text, array_string_Booleans_True(index));
		index = increment(index);
	FinMientras
FinFuncion
//----[ CONSTAINS ]----------------------------------------------------<#>
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
//----[ STATE ]----------------------------------------------------<#>
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

Funcion boolean <- string_hascolor_or_Style(text)
	Definir boolean Como Logico;
	boolean =__private_string_hasStyle_or_Color(text);
FinFuncion

Funcion boolean <- __private_string_hasStyle_or_Color(text)
	Definir boolean Como Logico;
	boolean = string_Contains(text, symbol_Escape());
FinFuncion

Funcion isNull <- string_isNull(value_string) 
	Definir isNull Como Logico;
	isNull = string_isEquals(value_string, string_NULL());
FinFuncion
//----[ AFFIX ]----------------------------------------------------<#>
Funcion boolean <- string_startsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring_from_start(text, string_Length(text_match)), text_match);
FinFuncion

Funcion boolean <- string_endsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring_from_end(text, string_Length(text_match)), text_match);
FinFuncion
//----[ COMPARISON ]----------------------------------------------------<#>
Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
FinFuncion

Funcion boolean <- string_isEquals_IgnoreCase(str1, str2)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_ToUpperCase(str1), string_ToUpperCase(str2));
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
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
///%%%%%[ ARRAY................... ]%%%%%%%[   #ARR    ]%%%%%%%%%%%%%%%%%%
//----[ OFSTRING ]----------------------------------------------------<#>
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
		str_array = string_append(str_array, value_TypeToString(array[i], type));
		str_array = string_append(str_array, separator);
		i=increment(i);
	FinMientras
	str_array = string_append(str_array, value_TypeToString(array[i], type));
FinFuncion

//----[ RANGE ]----------------------------------------------------<#>
Funcion num_range <- array_int_getRangeCeil(array, Size, num)
	Definir num_range, i, j Como Numero;//4, 6, 8, 10     num: 5   result= 6
	para i = 0 Hasta decrement(Size) con paso 1 Hacer
		Si array[i] >= num Entonces
			num_range = array[i];
			i = Size;//break
		FinSi
	FinPara
FinFuncion
//----[ SEARCH ]----------------------------------------------------<#>
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
//----[ COMPARE ]----------------------------------------------------<#>
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
///%%%%%[ PRINTERS................ ]%%%%%%%[   #PRN    ]%%%%%%%%%%%%%%%%%%
Funcion print(text)
	print_byseparator(text, "\n");
FinFuncion

Funcion println(text)
	text = string_append(text, "\n");
	print(text);
FinFuncion
//----[ SIMPLE ]----------------------------------------------------<#>
Funcion print_simple(text)
	__PSEINT_print(text);
FinFuncion

Funcion println_Simple(text)
	__PSEINT_println(text);
FinFuncion
//----[ JUMPER ]----------------------------------------------------<#>
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
		println_Simple(string_substring(text, 0, index_break_Line));
		text = string_substring(text, increment_step(index_break_Line, length_separator), string_Length(text));
		index_break_Line = string_indexOf_fromIndex(text, separator, 0);
	FinMientras
	print_simple(string_substring(text, 0, string_Length(text)));
FinFuncion
//----[ PSEINT ]----------------------------------------------------<#>
Funcion __PSEINT_println(text)
	Escribir text;
FinFuncion

Funcion __PSEINT_print(text)
	Escribir text Sin Saltar ;
FinFuncion
//----[ PROGRESS ]----------------------------------------------------<#>
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
		print_simple(char_At(text, i));
		sleep(speed);
	FinPara
FinFuncion
//----[ SHOOT ]----------------------------------------------------<#>
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
		text = string_substring(text, increment_step(index_break_Line, 2), string_Length(text));
		index_break_Line = string_indexOf_fromIndex(text, "\n", 0);
		i=increment(i);
	FinMientras
	
	Si isClear Entonces
		clear_Console();
	FinSi
	
	println_array(text_ammunition, num_break_Line);//shoot
	print_simple(string_substring(text, 0, string_Length(text)));
FinFuncion
//----[ ARRAY ]----------------------------------------------------<#>
Funcion println_array(array, index_array)
	Definir i Como Numero;
	para i = 0 Hasta decrement(index_array) Hacer
		println_Simple(array[i]);
	FinPara
FinFuncion

Funcion print_array(array, index_array)
	Definir i Como Numero;
	para i = 0 Hasta decrement(index_array) Hacer
		print_simple(array[i]);
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
//----[ REPEAT ]----------------------------------------------------<#>
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
//----[ UTILITIES ]----------------------------------------------------<#>
Funcion break_Line
	print("\n");
FinFuncion

Funcion hide_Text
	print(string_append(symbol_Escape(), "2J"));
FinFuncion

Funcion clear_Console
	Limpiar Pantalla;
FinFuncion
///%%%%%[ SLEEP................... ]%%%%%%%[   #SLP    ]%%%%%%%%%%%%%%%%%%
Funcion sleep(ms)
	Esperar ms Milisegundos;
FinFuncion

Funcion sleep_And_Clear(ms)
	sleep(ms);
	clear_Console();
FinFuncion
//----[ SECOND ]----------------------------------------------------<#>
Funcion sleep_Second_And_Clear(s)
	sleep_And_Clear(s * 1000);
FinFuncion

Funcion sleep_Second(s)
	sleep(s * 1000);
FinFuncion
//----[ messAGE ]----------------------------------------------------<#>
Funcion sleep_if_message(s, condition, message_date)
	Si condition Entonces
		log_INFO(message_date);
		sleep(s);
	FinSi
FinFuncion

Funcion sleep_message(s, message_date)
	log_INFO(message_date);
	sleep(s);
FinFuncion
//----[ UTILITIES ]----------------------------------------------------<#>
Funcion sleep_CircleLoad(s)
	Definir sequence Como Texto;
	Definir Size Como Numero;
	Size = 4;
	Dimension sequence[Size];
	sequence[0]= "|";
	sequence[1]= "/";
	sequence[2]= "-";
	sequence[3]= "\";
	sleep_Animation(4, 100, sequence, Size, 35, 10, true());
FinFuncion

Funcion sleep_Animation(s, speed, text_array_Sequence, Size, padding_x, padding_y, EnableClear)
	Definir Time, Time_End, Time_adjust Como Numero;
	Definir padding_x_text Como Texto;
	
	Time_adjust = math_min_Int(math_max_Int(550, speed), 1000);
	
	Time_End = (s*Time_adjust)/speed;
	Time = 0;
	padding_x_text = canvas_Row_WithText(" ", padding_x);
	println_Repeat( "", padding_y);
	Mientras Time < Time_End Hacer
		print_simple(string_append(padding_x_text, text_array_Sequence[math_module(Time, Size)]));
		Time = increment(Time);
		sleep(speed);
		Si EnableClear Entonces
			clear_Console();
			println_Repeat("", padding_y);
		SiNo
			padding_x_text= "";
		FinSi
	FinMientras
	clear_Console();
FinFuncion
///%%%%%[ LOGS.................... ]%%%%%%%[   #LOG    ]%%%%%%%%%%%%%%%%%%
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
///%%%%%[ TEST.................... ]%%%%%%%[   #TST    ]%%%%%%%%%%%%%%%%%%
//----[ CHECKPOINT ]----------------------------------------------------<#>
Funcion test_Checkpoint(id)
	test_Checkpoint_info(id, "");
FinFuncion

Funcion test_Checkpoint_info(id, info_string)
	break_Line();
	println_Simple(color_setColorText(string_append_withSeparator(" < ", " >- - - - - - - - - - - </>", num_ToString(id)), COLOR_CYAN()));
	Si !string_isEmpty(info_string) Entonces
		Definir popup_message Como Texto;
		popup_message = string_append_withSeparator(" < start >", "< /end >", info_string);
		println_Simple(color_setColorText(popup_message, COLOR_CYAN()));
	FinSi
	user_input_wait();
FinFuncion
//----[ ASSERT ]----------------------------------------------------<#>
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
		println_Simple(color_setColorText(string_append_withSeparator(method_name, value_String, "() :: check ::"), COLOR_CYAN()));
	SiNo
		error_message(string_append_withSeparator(method_name, string_append_withSeparator(value_String, value_expected_String, " != "), "() .        . The value is not as expected .        . "));
	FinSi
FinFuncion
//----[ PASSED ]----------------------------------------------------<#>
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
//The interpreter waits for a return and then captures the total time
Funcion duration_Timer <- Execution_Timer(localTime_Start, funtion_return)
	Definir duration_Timer, localTime_End Como Texto;
	localTime_End = localTime_now();
	duration_Timer = duration_between(localTime_Start, localTime_End);
FinFuncion
///%%%%%[ INT.............. ]%%%%%%%%%%%%%%[   #INT    ]%%%%%%%%%%%%%%%%%%
Funcion num <- text_ToNum(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion num_range <- int_getRangeCeil_ToFromSeparatedString(num, list_Str)
	Definir num_range, i, length_value, length_listStr Como Numero;
	Definir num_carry, Char_Current Como Texto;
	num_carry = "";
	length_listStr = decrement(string_Length(list_Str));
	Mientras i < length_listStr Hacer
		Char_Current = char_At(list_Str, i);
		Si char_isNumber(Char_Current) Entonces
			num_carry = string_append(num_carry, Char_Current);
		SiNo
			length_value = string_ToNum(num_carry);
			num_carry = "";
			Si length_value >= num Entonces
				num_range = length_value;
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
///%%%%%[ BINARY_STRING........... ]%%%%%%%[   #BIN    ]%%%%%%%%%%%%%%%%%%
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
//----[ GETTERS ]----------------------------------------------------<#>
Funcion binaryPad <- binarystring_GetPad_MaxSize(binaryString1, binaryString2)
	Definir binaryPad Como Texto;
	Definir max_length Como Numero;
	max_length = math_max_Int(string_Length(binaryString1), string_Length(binaryString2));
	binaryPad= string_repeatText("0", max_length);
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
//----[ SHIFTING ]----------------------------------------------------<#>
Funcion binarystring_result <- binarystring_MoveLeft(binaryString, num_movements)
	Definir binarystring_result Como Texto;
	binarystring_result = string_append(binaryString, string_repeatText("0", num_movements));
FinFuncion

Funcion binarystring_result <- binarystring_MoveRight(binaryString, num_movements)
	Definir binarystring_result Como Texto;
	binarystring_result = string_substring(binaryString, 0, decrement_step(string_Length(binaryString), num_movements));
FinFuncion
//----[ ARITHMETIC ]----------------------------------------------------------------<#>
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
	binarystring_result = binarystring_SUM(binarystring_NOT(binaryString), string_pad_start("1", string_repeatText("0", string_Length(binaryString))));
FinFuncion
///%%%%%[ MATH.................... ]%%%%%%%[   #MTH    ]%%%%%%%%%%%%%%%%%%
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
//----[ RANGE_LIMIT ]----------------------------------------------------<#>
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
//----[ TRIGONOMETRY ]--------------------------------------------------------------<#>
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

//----[ EXPONENTIAL ]----------------------------------------------------<#>
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
	Definir num_range, i, length_value, length_listStr Como Numero;
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
			length_value = string_ToNum(num_carry);
			num_carry = "";
			num_range = increment_step(num_range, length_value);
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
//----[ ROUNDING ]----------------------------------------------------<#>
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
//----[ MODULE ]----------------------------------------------------<#>
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
//----[ CONSTANTS ]----------------------------------------------------<#>
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
    num_PHI = 1.618033988749895;// Para proporciones est?ticas
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
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
///%%%%%[ BOOLEAN................. ]%%%%%%%[   #BLN    ]%%%%%%%%%%%%%%%%%%
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

Funcion boolean <- number_isEquals(num, num2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(num, num2);
FinFuncion

Funcion boolean <- char_isNumber(char)
	Definir boolean Como Logico;
	boolean = ascii_IsNumberSymbols(char);
FinFuncion
///%%%%%[ CONDITIONS.............. ]%%%%%%%[   #CON    ]%%%%%%%%%%%%%%%%%%
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

Funcion isValid <- string_indexValidate(result_string, start, end)
    Definir isValid Como Logico;
    Definir num_length Como Numero;
    num_length = string_Length(result_string);
    isValid = num_indexValidate(num_length, start, end);
FinFuncion

Funcion isValid <- num_indexValidate(max_length, start, end)
    Definir isValid Como Logico;	
    isValid = number_IsInRange(start, 0, max_length);
    isValid = isValid & number_IsInRange(end, 0, max_length);
    isValid = isValid & (start <= end);
FinFuncion

Funcion IsInRange <- number_IsInRange(value, min_val, max_val)
    Definir IsInRange Como Logico;
    IsInRange = value >= min_val & value <= max_val;
FinFuncion

Funcion exection_Error(message_Error)
	Definir error_int Como Entero;
	log_ERROR(message_Error);
	error_int = string_NULL();
FinFuncion
///%%%%%[ COLOR................... ]%%%%%%%[   #COL    ]%%%%%%%%%%%%%%%%%%
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
		index = increment_step(index, 30);
		color = __private_color_getcolor_or_style_forIndex(index);
	FinSi
FinFuncion

Funcion color <- __private_color_getcolor_or_style_forIndex(index)
	Definir color Como Texto;
	color = string_append_withSeparator(symbol_Escape(), "m", num_ToString(index));
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
		color_char = color_setColorText(char_At(text, i), COLOR_getcolor_forIndex(increment(math_module(i, 7))));
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
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion
///%%%%%[ VALUE................... ]%%%%%%%[   #VAL    ]%%%%%%%%%%%%%%%%%%
//----[ PARSERS ]----------------------------------------------------<#>
Funcion element_Result <- value_stringToType(element_String, TYPE)
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

Funcion result <- value_TypeToString(data, TYPE)
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
//----[ GETTERS ]----------------------------------------------------<#>
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

Funcion result <- value_getNullType_toString(TYPE)
	Definir result Como Texto;
	result = value_TypeToString(value_getNullType(TYPE), TYPE);
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
//----[ CATCH_VALUE ]----------------------------------------------------<#>
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
	result = value_TypeToString(value_catch(expected_value, method, message, TYPE), TYPE);
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

Funcion string_Increment <- value_increment_StringNumber_inArea(Text, index_start, index_end)
	Definir string_Increment Como Texto;
	string_Increment = value_modify_StringNumber_inArea(Text, 1, index_start, index_end);
FinFuncion

Funcion string_Increment <- value_decrement_StringNumber_inArea(Text, index_start, index_end)
	Definir string_Increment Como Texto;
	string_Increment = value_modify_StringNumber_inArea(Text, -1, index_start, index_end);
FinFuncion

Funcion string_Increment <- value_modify_StringNumber_inBetweenSymbols(Text, num_sum, symbol_start, symbol_end)
	Definir string_Increment Como Texto;
	Definir index_start, index_end Como Numero;
	index_start = increment(string_indexOf(Text, symbol_start));
	index_end = string_indexOf_fromIndex(Text, symbol_end, increment(index_start));
	string_Increment = value_modify_StringNumber_inArea(Text, num_sum, index_start, index_end);
FinFuncion

Funcion string_Increment <- value_modify_StringNumber_inBetweenSymbols_Last(Text, num_sum, symbol_start, symbol_end)
	Definir string_Increment Como Texto;
	Definir index_start, index_end Como Numero;
	index_end = string_LastIndexOf(Text, symbol_end);
	index_start = string_LastIndexOf_fromIndex(Text, symbol_start, index_end);
	index_start = increment(index_start);
	string_Increment = value_modify_StringNumber_inArea(Text, num_sum, index_start, index_end);
FinFuncion

Funcion string_Increment <- value_modify_StringNumber_inArea(Text, num_sum, index_start, index_end)
	Definir string_Increment, text_new, num_last, num_update Como Texto;
	text_new = string_Delete(Text, index_start, index_end);
	num_last = string_substring(text, index_start, index_end);
	num_update = value_modify_StringNumber(num_last, num_sum);
	string_Increment = string_insert(text_new, num_update, index_start);
FinFuncion

Funcion string_Increment <- value_modify_StringNumber(string_number, num_sum)
	Definir string_Increment Como Texto;
	string_Increment = num_ToString(increment_step(string_toNum(string_number), num_sum));
FinFuncion

Funcion isValid <- value_type_isValid(TYPE)
	Definir isValid Como Logico;
	isValid = string_isEquals(TYPE, TYPE_STRING()) | string_isEquals(TYPE, TYPE_INT()) | string_isEquals(TYPE, TYPE_BOOLEAN()) | string_isEquals(TYPE, TYPE_FLOAT());
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
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

Funcion result_string <- string_NULL
	Definir result_string Como Texto;
	result_string = "";
FinFuncion

Funcion result_string <- object_Empty(type_Name)
	Definir result_string Como Texto;
	result_string = object_new(type_Name);
FinFuncion
///%%%%%[ COLLECTION.............. ]%%%%%%%[   #CLL    ]%%%%%%%%%%%%%%%%%%
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
//----[ UTILITIES ]----------------------------------------------------<#>
Funcion clear_Collection <- collection_Clear(struct_Collection)
	Definir clear_Colection Como Texto;
	clear_Colection = collection_new(collection_getContent_TypeArea(struct_Collection), collection_getNameCollection(struct_Collection));
FinFuncion

Funcion isEmpty <- collection_isEmpty(struct_collection)
	Definir isEmpty Como Logico;
	isEmpty = string_isEmpty(collection_getContent_DataArea(struct_collection));
FinFuncion

Funcion collection_result <- collection_updateRange(struct_collection, index_start, index_end, data_string)
	Definir collection_result Como Texto;
	collection_result = string_Delete(struct_collection, index_start, index_end);
	collection_result = string_insert(collection_result, data_string, index_start);
FinFuncion
//----[ GETTERS ]----------------------------------------------------<#>
Funcion name_Collection <- collection_getNameCollection(collection)
	Definir name_Collection Como Texto;
	name_Collection = asci_getPrefix_alphabetic(collection);
FinFuncion

Funcion type_Area <- collection_getContent_fromSymbol(collection, symbol)
	Definir type_Area Como Texto;
	Definir index_symbol Como Entero;
	index_symbol = increment(string_indexOf(collection, symbol));
	type_Area    = asci_getPrefix_alphabetic_fromIndex(collection, index_symbol);
FinFuncion

Funcion data_Area <- collection_getContent_DataArea(collection)
	Definir data_Area Como Texto;
	data_Area = collection_getContent_Between_Symbols(collection, symbol_dataArea(), symbol_metaData());
FinFuncion

Funcion type_area <- collection_getContent_TypeArea(collection)
	Definir type_area Como Texto;
	type_area =  collection_getContent_TypeArea_End_Of_Text(collection, symbol_dataArea());
FinFuncion

Funcion type_area <- collection_getContent_TypeArea_End_Of_Text(collection, text_end)
	Definir type_area Como Texto;
	type_area = collection_getContent_Between_Symbols(collection, symbol_typeArea(), text_end);
FinFuncion

Funcion type_area <- collection_getContent_Between_Symbols(collection, symbol_start, symbol_end)
	Definir Type_property, type_area Como Texto;
	Definir index_start, index_end, index_check Como Numero;
	index_start = increment(string_indexOf(collection, symbol_start));
	index_end = string_indexOf_fromIndex(collection, symbol_end, index_start);
	type_area = string_substring(collection, index_start, index_end);
FinFuncion

Funcion type_area <- collection_getContent_Between_lastSymbols(collection, symbol_start, symbol_end)
	Definir Type_property, type_area Como Texto;
	Definir index_start, index_end, index_check Como Numero;
	index_end = string_LastindexOf(collection, symbol_end);
	index_start = increment(string_LastindexOf_fromIndex(collection, symbol_start, index_end));
	type_area = string_substring(collection, index_start, index_end);
FinFuncion

Funcion index_TypeArea <- collection_getIndex_typeArea(struct_Collection)
	Definir index_TypeArea Como Numero;
	index_TypeArea = string_indexOf(struct_Collection, symbol_typeArea());
FinFuncion

Funcion index_MetaData <- collection_getIndex_metaData(struct_Collection)
	Definir index_MetaData Como Numero;
	index_MetaData = string_lastIndexOf(struct_Collection, symbol_metaData());
FinFuncion

Funcion index_DataArea <- collection_getIndex_dataArea(struct_Collection)
	Definir index_DataArea Como Numero;
	index_DataArea = string_IndexOf(struct_Collection, symbol_dataArea());
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
		str_element = string_NULL();
	FinSi
FinFuncion
//----[ SETTER ]---------------------------------------------------------------------<#>
Funcion symbol_areaContent <- collection_replaceRange_between_symbols(collection, data_String, symbol_start, symbol_end)
    Definir symbol_areaContent Como Texto;
    Definir index_start, index_end Como Numero;
    index_start = increment(string_indexOf(collection, symbol_start));
    index_end = string_indexOf_fromIndex(collection, symbol_end, index_start);
	
    symbol_areaContent = collection_replaceRange(collection, data_String, index_start, index_end);
FinFuncion

Funcion symbol_areaContent <- collection_replaceRange_between_lastSymbols(collection, data_String, symbol_start, symbol_end)
    Definir symbol_areaContent Como Texto;
    Definir index_start, index_end Como Numero;
    index_end = string_LastindexOf(collection, symbol_end);
    index_start = increment(string_LastindexOf_fromIndex(collection, symbol_start, index_end));
    symbol_areaContent = collection_replaceRange(collection, data_String, index_start, index_end);
FinFuncion

Funcion collection_out <- collection_replaceRange(collection, data_String, index_start, index_end)
    Definir collection_out Como Texto;
    collection_out = string_Delete(collection, index_start, index_end);
    collection_out = string_Insert(collection_out, data_String, index_start);
FinFuncion
//----[ PRINTER ]----------------------------------------------------<#>
Funcion __private_collection_printer(sequential_data, sequential_lengths, isnewLine)
	managerData_printer_color(sequential_data, sequential_lengths, isnewLine, "");
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]===========================
Funcion symbol_area <- symbol_dataArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001A
FinFuncion

Funcion symbol_area <- symbol_typeArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001D
FinFuncion

Funcion symbol_area <- symbol_metaData
	Definir symbol_area Como Texto;
	symbol_area = "";//001E
FinFuncion
///%%%%%[ MANAGER_DATA............ ]%%%%%%%[   #MDA    ]%%%%%%%%%%%%%%%%%%
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
			length_value = string_ToNum(num_carry);
			index_end         = increment_step(index_end, length_value);
			index_modify 	  = decrement(index_modify);
			old_value_length  = string_Length(num_carry);
			num_carry         = "";// clear
		FinSi
		i = decrement(i);
	FinMientras
	//update
	si index_modify >= 0 Entonces
		error_message_Function("managerData_modify(data, summations, index, val_string)", "error index no valid");
	SiNo
		index_sum_start = increment(i);
		index_sum_end = increment_step(index_sum_start, increment(old_value_length));
		index_start = decrement_step(index_end,  length_value);
		sequential_lengths = string_Delete(sequential_lengths, index_sum_start, index_sum_end);
		sequential_package = string_Delete(sequential_data, index_start, index_end);
		si !string_isEquals(value_String, string_NULL()) Entonces
			new_value_length = string_Length(value_string);
			sequential_lengths = string_insert(sequential_lengths, string_append(symbol_Separator(), Num_toString(new_value_length)), index_sum_start);
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
		Char_Current = char_At(sequential_lengths, decrement_step(length_summations, i));
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(num_carry, Char_Current);
		FinSi
		Si !IsNumber & !string_isEmpty(num_carry) | number_isEquals(i, length_summations) Entonces
			length_value = string_ToNum(num_carry);
			num_range_inc = increment_step(num_range, length_value);
			si number_isEquals(length_value, length_data)  Entonces
				data_Current     = string_substring(sequential_data, num_range, num_range_inc);
				BreakLoop_Data   = !string_isEquals(data_string, data_Current);
			FinSi
			inner_IdData    = increment(inner_IdData);
			num_carry       = "";// clear
			num_range       = num_range_inc;
		FinSi
		i = increment(i);
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
			length_value = string_ToNum(num_carry);
			index_end         = increment_step(index_end, length_value);
			index_getter      = decrement(index_getter);
			num_carry = "";
		FinSi
		i = decrement(i);
	FinMientras
	
	Si index_getter >= 0 Entonces
		error_message_Function("managerData_get_toString", "error index no valid");
		value_string = string_NULL();
	SiNo
		index_start  = decrement_step(index_end, length_value);
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
			length_value   = string_ToNum(num_carry);
			num_range_dec = decrement_step(num_range, length_value);
			data_Current     = string_substring(sequential_data, num_range_dec, num_range);
			separated_String = string_append(separated_String, data_Current);
			separated_String = string_append(separated_String, separator);
			num_carry       = "";// clear
			num_range       = num_range_dec;
		FinSi
		i = increment(i);
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
			length_value  = string_ToNum(num_carry);
			num_range_inc = increment_step(num_range, length_value);
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
		i = decrement(i);
	FinMientras
FinFuncion
//----[ CELLS ]--------------------------------------------------------<#>
Funcion separated_String <- managerData_getSeparateString_cells(struct_cells, count_size, cell_length)
	Definir separated_String, current_data Como Texto;
	Definir i, current_pos, next_pos Como Entero;
	current_pos   = 0;
	separated_String = "";
	i = 0;
	Mientras i < count_size Hacer
		next_pos         = increment_step(current_pos, cell_length);
		current_data     = String_Substring(struct_cells, current_pos, next_pos);
		current_data     = collectionCells_clear_cellString(current_data, cell_length);
		separated_String = String_append_withSeparator(separated_String, symbol_separator(), current_data);
		current_pos      = next_pos;
		i = increment(i);
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
		next_pos = increment_step(current_pos, data_length);
		current_data = String_Substring(struct_cells, current_pos, next_pos);
		current_data = collectionCells_clear_cellString(current_data, data_length);
		current_data = string_append(decorator, current_data);
		Si isBreakLine Entonces
			println_simple(current_data);
		SiNo
			print_simple(current_data);
		FinSi
		current_pos = next_pos;
		i = increment(i);
	FinMientras
FinFuncion
///%%%%%[ LINEAR_COLLECTION....... ]%%%%%%%[   #LCL    ]%%%%%%%%%%%%%%%%%%
Funcion new_LinearColletion <- linearCollection_new(struct_Collection, TYPE)
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
	element_String = value_TypeToString(Element, TYPE);//"Z"
	collection_result = linearCollection_addFirst_byString(struct_Collection, element_String);
FinFuncion

Funcion collection_result <- linearCollection_addLast_ByType(struct_Collection, Element, TYPE)
	Definir collection_result, element_String Como Texto;// (C, B, A/1;2;3)
	element_String = value_TypeToString(Element, TYPE);//"Z";
	collection_result = linearCollection_addLast_ByString(struct_Collection, element_String);
FinFuncion
//....[ add_by_string ].................................................................
Funcion collection_result <- linearCollection_addFirst_byString(struct_Collection, element_String)
	Definir collection_result, element_Length_str Como Texto;// (C, B, A/1;2;3)
	Definir index_DataArea, index_MetaData Como Numero;//first  (<-:->)
	element_Length_str = string_append(symbol_Separator(), num_ToString(string_Length(element_String)));// , 4
	index_DataArea = collection_getIndex_dataArea(struct_Collection);
	collection_result = string_insert(struct_Collection, element_Length_str, linearCollection_getIndex_EndMetaData(struct_Collection));
	collection_result = string_insert(collection_result, element_String, increment(index_DataArea));//(Z, C, B, A/1;2;3;4)		
	collection_result = linearCollection_increment_numElement(collection_result);
FinFuncion

Funcion collection_result <- linearCollection_addLast_ByString(struct_Collection, element_String)
	Definir collection_result, element_Length_str Como Texto;// (C, B, A/1;2;3)
	Definir index_DataArea, index_MetaData Como Numero;//last  (->:<-)
	collection_result = struct_Collection;
	element_Length_str = string_append(symbol_Separator(), num_ToString(string_Length(element_String)));//, 4
	index_MetaData = collection_getIndex_metaData(struct_Collection);
	collection_result = string_insert(collection_result, element_Length_str, increment(index_MetaData));
	collection_result = string_insert(collection_result, element_String, index_MetaData);//(C, B, A, Z/4;1;2;3)
	collection_result = linearCollection_increment_numElement(collection_result);
FinFuncion
//----[ DELETE ]---------------------------------------------------------------------<#>
Funcion collection_result <- linearCollection_DeleteElement(struct_Collection, index_element)
	Definir collection_result Como Texto;
	collection_result = __private_linearCollection_ModifyElement(struct_Collection, index_element, string_NULL());
	collection_result = linearCollection_decrement_numElement(collection_result);
FinFuncion

Funcion collection_result <- linearCollection_DeleteFirst(struct_Collection)
	Definir collection_result Como Texto;
	Definir index_DataArea, index_MetaData, property_ Como Numero;
	Definir length_separator, index_EndMetaData, element_Length Como Numero;
	index_EndMetaData = linearCollection_getIndex_EndMetaData(struct_Collection);
	index_DataArea = increment(collection_getIndex_dataArea(struct_Collection));// (C B A/, 1, 2, 3)
	property_ = string_lastIndexOf(struct_Collection, symbol_Separator());
	element_Length = string_ToNum(string_substring(struct_Collection, increment(property_), index_EndMetaData));
	collection_result = string_Delete(struct_Collection, property_, index_EndMetaData);
	collection_result = string_Delete(collection_result, index_DataArea, increment_step(index_DataArea, element_Length));
	collection_result = linearCollection_decrement_numElement(collection_result);
FinFuncion

Funcion collection_result <- linearCollection_DeleteLast(struct_Collection)
	Definir collection_result Como Texto;
	Definir index_DataArea, index_MetaData, property_ Como Numero;
	Definir length_separator, index_EndMetaData, element_Length Como Numero;
	index_EndMetaData = linearCollection_getIndex_EndMetaData(struct_Collection);
	length_separator = string_Length(symbol_Separator());
	index_MetaData = increment_step(collection_getIndex_metaData(struct_Collection), length_separator);
	property_ = string_indexOf_fromIndex(struct_Collection, symbol_Separator(), increment(index_MetaData));
	property_ = if_else(property_ > 0, property_, index_EndMetaData, TYPE_INT());
	element_Length = string_ToNum(string_substring(struct_Collection, increment(index_MetaData), property_));
	collection_result = string_Delete(struct_Collection, index_MetaData, property_);
	index_MetaData = decrement_step(index_MetaData, length_separator);
	collection_result = string_Delete(collection_result, decrement_step(index_MetaData, element_Length), index_MetaData);
	collection_result = linearCollection_decrement_numElement(collection_result);
FinFuncion
//----[ INCREMENT ]----------------------------------------------------<#>
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
//----[ GETTERS ]----------------------------------------------------<#>
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
	TYPE = collection_getContent_TypeArea(struct_Collection);
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
	TYPE = collection_getContent_TypeArea(struct_Collection);
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
	element_Result = value_stringToType(element_String, TYPE);
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
	element_Result = value_stringToType(element_String, TYPE);
FinFuncion
//....[ get_data_string ]...............................................................
Funcion element_String <- linearCollection_getElement_toString(struct_linearCollection, index_element)
	Definir element_String, sequential_package, sequential_lengths, sequential_data Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData Como Numero;
	Si linearCollection_IndexIsValid(struct_linearCollection, index_element) Entonces
		index_Data 		  = increment(string_indexOf(struct_linearCollection, symbol_dataArea()));
		index_ExtraData   = string_LastindexOf(struct_linearCollection, symbol_ExtraData());
		index_MetaData	  = string_LastindexOf_fromIndex(struct_linearCollection, symbol_metaData(), index_ExtraData);
		sequential_data 		  = string_substring(struct_linearCollection, index_Data, index_MetaData);
		sequential_lengths   = string_substring(struct_linearCollection, increment(index_MetaData), index_ExtraData);
		element_String 	  = managerData_get_toString(sequential_data, sequential_lengths, index_element);
	SiNo
		error_message_Function("linearCollection_getElement_toString", string_append("index_element no is valid Size:", num_ToString(linearCollection_getSize(struct_linearCollection))));
		element_String = string_NULL();
	FinSi
FinFuncion

Funcion element_String <- linearCollection_getFirst_ToString(struct_Collection)
	Definir element_String Como Texto;
	Definir index_DataArea, property_, Index_EndMetaData, element_Length Como Numero;
	Si linearCollection_isEmpty(struct_Collection) Entonces
		error_message_Function("linearCollection_getFirst_ToString", "struct is Empty");
		element_String = string_NULL();
	SiNo
		Index_EndMetaData = linearCollection_getIndex_EndMetaData(struct_Collection);
		index_DataArea = increment(collection_getIndex_dataArea(struct_Collection));// (C B A/, 1, 2, 3)
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
		element_String = string_NULL();
	SiNo
		Index_EndMetaData = linearCollection_getIndex_EndMetaData(struct_Collection);
		length_separator = string_Length(symbol_Separator());
		index_MetaData = increment_step(collection_getIndex_metaData(struct_Collection), length_separator);
		property_ = string_indexOf_fromIndex(struct_Collection, symbol_Separator(), increment(index_MetaData));
		property_ = if_else(property_ > 0, property_, Index_EndMetaData, TYPE_INT());
		element_Length = string_ToNum(string_substring(struct_Collection, increment(index_MetaData), property_));
		index_MetaData = decrement_step(index_MetaData, length_separator);
		element_String = string_substring(struct_Collection, decrement_step(index_MetaData, element_Length), index_MetaData);
	FinSi
FinFuncion
//....[ get_utilities ].................................................................
Funcion type_result <- linearCollection_GetType(struct_Collection)
	Definir type_result Como Texto;
	type_result = collection_getContent_TypeArea(struct_Collection);
FinFuncion

Funcion Size_int <- linearCollection_getSize(struct_Collection)
	Definir Size_int Como Numero;
	Size_int = string_ToNum(string_substring_from(struct_Collection, increment(linearCollection_getIndex_EndMetaData(struct_Collection))));
FinFuncion

Funcion innerIndex <- linearCollection_GetValue_InnerIndex(linearCollection, data_string)
	Definir separated_String, sequential_lengths, sequential_data Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData Como Numero;
	Definir innerIndex, collection_size Como Numero;
	index_Data = increment(string_indexOf(linearCollection, symbol_dataArea()));
	index_ExtraData = string_LastindexOf(linearCollection, symbol_ExtraData());
	index_MetaData = string_LastindexOf_fromIndex(linearCollection, symbol_metaData(), index_ExtraData);
	sequential_data = string_substring(linearCollection, index_Data, index_MetaData);
	sequential_lengths = string_substring(linearCollection, increment(index_MetaData), index_ExtraData);
	collection_size = linearCollection_getSize(linearCollection);
	innerIndex = managerData_getInnerIndex(sequential_data, sequential_lengths, collection_size, data_string);
	si !value_isNull(innerIndex, TYPE_INT()) Entonces
		innerIndex = decrement(collection_size) - innerIndex;
	FinSi
FinFuncion

Funcion separated_String <- linearCollection_GetValues_ToSeparatedString(linearCollection, separator)
	Definir separated_String, sequential_lengths, sequential_data Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData Como Numero;
	index_Data = increment(string_indexOf(linearCollection, symbol_dataArea()));
	index_ExtraData = string_LastindexOf(linearCollection, symbol_ExtraData());
	index_MetaData = string_LastindexOf_fromIndex(linearCollection, symbol_metaData(), index_ExtraData);
	sequential_data = string_substring(linearCollection, index_Data, index_MetaData);
	sequential_lengths= string_substring(linearCollection, increment(index_MetaData), index_ExtraData);
	separated_String = managerData_getSeparateString(sequential_data, sequential_lengths, separator);
FinFuncion

Funcion index_extraData <- linearCollection_getIndex_ExtraData(struct_LinearCollection)
	Definir index_extraData Como Numero;
	index_extraData = string_lastIndexOf(struct_LinearCollection, symbol_extraData());
FinFuncion
//----[ SETTERS ]----------------------------------------------------<#>
Funcion collection_result <- linearCollection_SetElement(struct_Collection, index_element, new_value)
	Definir collection_result, TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_Collection);
	collection_result = linearCollection_SetElement_ToType(struct_Collection, index_element, new_value, TYPE);
FinFuncion

Funcion collection_result <- linearCollection_SetElement_ToType(struct_Collection, index_element, new_value, TYPE)
	Definir collection_result, value_string Como Texto;
	value_string = value_TypeToString(new_value, TYPE);
	collection_result = linearCollection_SetElement_ToString(struct_Collection, index_element, value_string);
FinFuncion

Funcion collection_result <- linearCollection_SetElement_ToString(struct_Collection, index_element, value_string)
	Definir collection_result, element_String Como Texto;
	collection_result = __private_linearCollection_ModifyElement(struct_Collection, index_element, value_string);
FinFuncion
//----[ BOOLEANS ]----------------------------------------------------<#>
Funcion struct_IsEmpty <- linearCollection_isEmpty(struct_Collection)
	Definir struct_IsEmpty Como Logico;
	struct_IsEmpty = (linearCollection_getSize(struct_Collection) < 1);
FinFuncion

Funcion index_isValid <- linearCollection_IndexIsValid(struct_Collection, index_element)
	Definir index_isValid Como Logico;
	Definir struct_Size Como Numero;
	struct_Size   = linearCollection_getSize(struct_Collection);
	index_isValid = Collection_IndexIsValid(struct_Size, index_element);
FinFuncion

Funcion index_isValid <- Collection_IndexIsValid(struct_Size, index_element)
	Definir index_isValid Como Logico;
	index_isValid = (index_element >= 0 & index_element < struct_Size );
FinFuncion
//----[ PRINTER_lINEAR ]--------------------------------------------------------------<#>
Funcion linearCollection_println(linearCollection)
	__private_linearCollection_println(linearCollection, true());
FinFuncion

Funcion linearCollection_print(linearCollection)
	__private_linearCollection_println(linearCollection, false());
FinFuncion

Funcion __private_linearCollection_println(linearCollection, isnewLine)
	Definir sequential_lengths, sequential_data Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData Como Numero;
	index_Data = increment(string_indexOf(linearCollection, symbol_dataArea()));
	index_ExtraData = string_LastindexOf(linearCollection, symbol_ExtraData());
	index_MetaData = string_LastindexOf_fromIndex(linearCollection, symbol_metaData(), index_ExtraData);
	sequential_data = string_substring(linearCollection, index_Data, index_MetaData);
	sequential_lengths= string_substring(linearCollection, increment(index_MetaData), index_ExtraData);
	__private_collection_printer(sequential_data, sequential_lengths, isnewLine);
FinFuncion
//....[ utilities ].....................................................................
Funcion End_index <- linearCollection_getIndex_EndMetaData(struct_Collection)
	Definir End_index Como Numero;
	End_index = string_lastIndexOf(struct_Collection, symbol_ExtraData());
FinFuncion
//----[ MODIFY_ELEMENT_INDEX ]-------------------------------------------------------<#>
Funcion collection_result <- __private_linearCollection_ModifyElement(struct_linearCollection, index_modify, value_string)
	Definir collection_result, sequential_package, sequential_lengths, sequential_data Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData Como Numero;
	index_Data 		   = increment(string_indexOf(struct_linearCollection, symbol_dataArea()));
	index_ExtraData    = string_LastindexOf(struct_linearCollection, symbol_ExtraData());
	index_MetaData	   = string_LastindexOf_fromIndex(struct_linearCollection, symbol_metaData(), index_ExtraData);
	sequential_data    = string_substring(struct_linearCollection, index_Data, index_MetaData);
	sequential_lengths = string_substring(struct_linearCollection, increment(index_MetaData), index_ExtraData);
	sequential_package = managerData_modify(sequential_data, sequential_lengths, index_modify, value_string, false());
	collection_result = collection_updateRange(struct_linearCollection, index_Data, index_ExtraData, sequential_package);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
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
///%%%%%[ DEQUE................... ]%%%%%%%[   #DEQ    ]%%%%%%%%%%%%%%%%%%
Funcion new_Deque <- util_deque_new(TYPE)
	Definir new_Deque Como Texto;
	new_Deque = linearCollection_new( STRUCT_TYPE_DEQUE(), TYPE);
FinFuncion

Funcion Size_int <- util_deque_Size(struct_Deque)
	Definir Size_int Como Numero;
	Size_int = linearCollection_getSize(struct_Deque);
FinFuncion

Funcion deque_Result <- util_deque_AddFirst(struct_Deque, element)
	Definir deque_Result Como Texto;
	deque_Result = linearCollection_addFirst(struct_Deque, element);
FinFuncion

Funcion deque_Result <- util_deque_AddLast(struct_Deque, element)
	Definir deque_Result Como Texto;
	deque_Result = linearCollection_addLast(struct_Deque, element);
FinFuncion

Funcion collection_result <- util_deque_DeleteFirst(struct_Deque)
	Definir collection_result Como Texto;
	collection_result = linearCollection_DeleteFirst(struct_Deque);
FinFuncion

Funcion collection_result <- util_deque_DeleteLast(struct_Deque)
	Definir collection_result Como Texto;
	collection_result = linearCollection_DeleteLast(struct_Deque);
FinFuncion

Funcion util_deque_println(struct_Deque)
	linearCollection_println(struct_Deque);
FinFuncion

Funcion element_Result <- util_deque_getFirst(struct_Deque)
	Definir TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_Deque);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = linearCollection_getFirst_toType(struct_Deque, TYPE);
FinFuncion

Funcion element_Result <- util_deque_getLast(struct_Deque)
	Definir TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_Deque);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = linearCollection_getLast_toType(struct_Deque, TYPE);
FinFuncion
///%%%%%[ QUEUE................... ]%%%%%%%[   #QUE    ]%%%%%%%%%%%%%%%%%%
Funcion new_Queue <- util_queue_new(TYPE)
	Definir new_Queue Como Texto;
	new_Queue = linearCollection_new( STRUCT_TYPE_QUEUE(), TYPE);
FinFuncion

Funcion Size_int <- util_queue_Size(struct_Queue)
	Definir Size_int Como Numero;
	Size_int = linearCollection_getSize(struct_Queue);
FinFuncion

Funcion queue_Result <- util_queue_Offer(struct_Queue, element)
	Definir queue_Result Como Texto;
	queue_Result = linearCollection_addLast(struct_Queue, element);
FinFuncion

Funcion util_queue_println(struct_Queue)
	linearCollection_println(struct_Queue);
FinFuncion

Funcion element_Result <- util_queue_Peek(struct_Queue)
	Definir TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_Queue);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = linearCollection_getFirst_toType(struct_Deque, TYPE);
FinFuncion

Funcion collection_result <- util_queue_DeleteFirst(struct_Queue)
	Definir collection_result Como Texto;
	collection_result = linearCollection_DeleteFirst(struct_Queue);
FinFuncion

Funcion element_Result <- util_queue_Poll(struct_Queue Por Referencia)
	Definir TYPE, element_String Como Texto;
	TYPE = collection_getContent_TypeArea(struct_Queue);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = util_queue_Peek(struct_Queue);
	// (In older verSions:) En verSiones antiguas usar por separado util_queue_Peek() & util_queue_DeleteFirst() para actualizar
	struct_Queue = util_queue_DeleteFirst(struct_Queue);
FinFuncion
///%%%%%[ STACK................... ]%%%%%%%[   #STA    ]%%%%%%%%%%%%%%%%%%
Funcion new_Stack <- util_stack_new(TYPE)
	Definir new_Stack Como Texto;
	new_Stack = linearCollection_new(STRUCT_TYPE_STACK(), TYPE);
FinFuncion

Funcion Size_int <- util_stack_Size(struct_Stack)
	Definir Size_int Como Numero;
	Size_int = linearCollection_getSize(struct_Stack);
FinFuncion

Funcion stack_Result <- util_stack_push(struct_Stack, element)
	Definir stack_Result Como Texto;
	stack_Result = linearCollection_addLast(struct_Stack, element);
FinFuncion

Funcion util_stack_println(struct_Stack)
	linearCollection_println(struct_Stack);
FinFuncion

Funcion element_Result <- util_stack_Top(struct_Stack)
	Definir TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_Stack);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = linearCollection_getLast_toType(struct_Stack, TYPE);
FinFuncion

Funcion stack_Result <- util_stack_removeLast(struct_Stack)
	Definir stack_Result Como Texto;
	stack_Result = linearCollection_DeleteLast(struct_Stack);
FinFuncion

Funcion element_Result <- util_stack_Pop(struct_Stack Por Referencia)
	Definir TYPE, element_String Como Texto;
	TYPE = collection_getContent_TypeArea(struct_Stack);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = util_stack_Top(struct_Stack);
	// (In older verSions:) En verSiones antiguas usar por separado util_stack_Top() & util_stack_removeLast() para actualizar
	struct_Stack = util_stack_removeLast(struct_Stack);
FinFuncion
///%%%%%[ LIST.................... ]%%%%%%%[   #LIS    ]%%%%%%%%%%%%%%%%%%
Funcion new_list <- util_List_new(TYPE)
	Definir new_list Como Texto;
	new_list = linearCollection_new(STRUCT_TYPE_LIST(), TYPE);
FinFuncion

Funcion list_result <- util_List_add(struct_list, element)
	Definir list_result Como Texto;
	list_result = linearCollection_addLast(struct_List, element);
FinFuncion

Funcion Size_int <- util_List_Size(struct_List)
	Definir Size_int Como Numero;
	Size_int = linearCollection_getSize(struct_List);
FinFuncion

Funcion util_List_println(struct_List)
	linearCollection_println(struct_List);
FinFuncion

Funcion element_Result <- util_List_get(struct_list, index_element)
	Definir TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_List);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = linearCollection_getElement_toType(struct_List, index_element, TYPE);
FinFuncion

Funcion element_Result <- util_List_delete(struct_list, index_element)
	Definir element_Result Como Texto;
	element_Result = linearCollection_DeleteElement(struct_List, index_element);
FinFuncion

Funcion list_Result <- util_List_set(struct_list, index_element, new_Value)
	Definir list_Result Como Texto;
	list_Result = linearCollection_SetElement(struct_List, index_element, new_Value);
FinFuncion
///%%%%%[ TEMPORAL/CHRONO_UNIT.... ]%%%%%%%[   #TMP    ]%%%%%%%%%%%%%%%%%%
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
//----[ OPERATIONS ]----------------------------------------------------<#>
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
//----[ BOOLEANS ]----------------------------------------------------<#>
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
	size_struct = linearCollection_getSize(struct);
	time_result = linearCollection_SetElement_ToType(struct_time, size_struct, seconds, TYPE_FLOAT());
FinFuncion

Funcion date_object <- __private_temporalDate_setDateNull(struct_date)
	Definir date_object Como Texto;
	date_object = __private_temporalDate_set(struct_date, 0, 0, 0);
FinFuncion

Funcion LocalTime_result <- __private_temporalTime_setTimeNull(struct_time)
	Definir LocalTime_result Como Texto;
	LocalTime_result = __private_temporal_addSecondOfDays(struct_time, number_NULL());
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
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
            month_name = string_NULL();
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
            value = number_NULL();
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
            day_name = string_NULL();
    FinSegun
FinFuncion
///%%%%%[ LOCAL_DATE.............. ]%%%%%%%[   #LDA    ]%%%%%%%%%%%%%%%%%%
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
		date_object = __private_localDate_forceOf(year, month, day);
	SiNo
		date_object = __private_localDate_ofDateNull();
		error_message_Function("localDate_of(year, month, day)", "Date not valid");
	FinSi
FinFuncion

Funcion date_object <- __private_localDate_forceOf(year, month, day)
	Definir date_object Como Texto;
	date_object = linearCollection_new(TEMPORAL_LOCALDATE(), TYPE_INT());
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
	date_object = __private_localDate_forceOf(number_NULL(), number_NULL(), number_NULL());
FinFuncion

Funcion date_object <- __private_localDate_getDateUnixEpoch
	Definir date_object Como Texto;
	date_object = __private_localDate_forceOf(1970, 1, 1);
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
    Definir total_years, current_year, current_month, current_day Como Entero;
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

// Derivado de la f?rmula de Zeller para c?lculo de d?as acumulados.
// F?rmula: floor(30.6 * month - 29.4 - leap_factor) + day;
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
		numDay = number_NULL();
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
	struct_dateTime = string_insert(struct_dateTime, "Time",string_indexOf(struct_dateTime,symbol_typeArea()));
FinFuncion

Funcion boolean <- localDate_isLeapYear(year)
	Definir boolean Como Logico;
	boolean = (number_isEquals(math_module(year, 4), 0) & !number_isEquals(math_module(year, 100), 0)) | number_isEquals(math_module(year, 400), 0);
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
//----[ BOOLEANS ]----------------------------------------------------<#>
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
//----[ BOOLEANS ]----------------------------------------------------<#>
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
// GU?A DE PATRONES PARA DateTimeFormatter (Java 8+)
// =========================================================================

// --- FECHAS (Dates) ---
// yyyy  : A?o completo (Ej: 2026)
// yy    : A?o corto (Ej: 26)
// MMMM  : month nombre completo (Ej: Marzo)
// MMM   : month abreviado (Ej: Mar)
// MM    : month n?mero (01-12) -> ?M may?scula siempre para month!
// d     : D?a del month (1-31)
// D     : D?a del a?o (1-366)
// EEEE  : Nombre del d?a completo (Ej: Lunes)
// E     : Nombre del d?a abreviado (Ej: Lun)
// e     : N?mero de d?a de la semana (1=Lunes, 7=Domingo)
// w     : Semana del a?o (1-53)
// W     : Semana del month (1-5)

// --- TIEMPO (Time) ---
// a     : Marcador AM / PM (Cambio de formato)
// H     : Hora militar / formato 24h (00-23)
// h     : Hora est?ndar / formato 12h (01-12) -> Usar con 'a'
// m     : Minutos (00-59) -> ?m min?scula siempre para minutos!
// s     : Segundos (00-59)
// S     : Milisegundos / Fracciones de segundo (Ej: SSS)

// --- LITERALES / Texto ---
// ' '   : Comillas simples para escapar Texto (Ej: 'de las')
// 

// =========================================================================
// NOTAS DE SEGURIDAD:
// 1. May?sculas importan: M (month) != m (minuto) | H (24h) != h (12h).
// 2. Coherencia: No mezcles 'H' (24h) con 'a' (AM/PM), Java lanzar? error.
// 3. Parsing: Si el Texto no coincide EXACTO con el patr?n, lanza DateTimeParseException.
// =========================================================================
Funcion Date <- localDate_format(text)
	Definir Date, dateParts, DateTemp Como Texto;
	Definir index Como Numero;
	Dimension dateParts(3);
	
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
///%%%%%[ LOCAL_TIME.............. ]%%%%%%%[   #LTI    ]%%%%%%%%%%%%%%%%%%
//----[ PRIVATE_TIME ]----------------------------------------------------<#>
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
	LocalTime_result = linearCollection_new(TEMPORAL_LOCALTIME(), TYPE_FLOAT());
	LocalTime_result = __private_temporal_addSecondOfDays(LocalTime_result, seconds);
FinFuncion

Funcion LocalTime_result <- __private_localTime_ofNull
	Definir LocalTime_result Como Texto;
	LocalTime_result = localTime_ofSecondOfDays(number_NULL());
FinFuncion
//----[ BOOLEANS ]----------------------------------------------------<#>
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
//----[ GETTERS ]----------------------------------------------------<#>
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
//-----[ UTILITIES ]----------------------------------------------------<#>
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
//-----[ MINUS ]----------------------------------------------------<#>
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
//-----[ TRUNCATE ]----------------------------------------------------<#>
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
///%%%%%[ LOCAL_DATE_TIME......... ]%%%%%%%[   #LDT    ]%%%%%%%%%%%%%%%%%%
Funcion string_dateTime <- localDateTime_toString(localDateTime)
	Definir string_dateTime, string_date, string_time Como Texto;
	string_date = localDate_ToString(localDateTime);
	string_time = localTime_ToString(localDateTime);
	string_dateTime = string_append_withSeparator(string_date, string_time," ");
FinFuncion
//----[ OF_TEMPORAL ]----------------------------------------------------<#>
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
//-----[ MINUS ]----------------------------------------------------<#>
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
//----[ BOOLEANS ]----------------------------------------------------<#>
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
//-----[ TRUNCATE ]----------------------------------------------------<#>
Funcion result_dateTime <- localDateTime_truncatedToHours(struct_dateTime)
    Definir result_dateTime Como Texto;
    result_dateTime = localTime_truncatedToHours(struct_dateTime);
FinFuncion

Funcion result_dateTime <- localDateTime_truncatedToMinutes(struct_dateTime)
    Definir result_dateTime Como Texto;
    result_dateTime = localTime_truncatedToMinutes(struct_dateTime);
FinFuncion
//----[ EXTRACTORS ]----------------------------------------------------<#>	
Funcion struct_date <- localDateTime_toLocalDate(struct_dateTime)
	Definir struct_date Como Texto;
	struct_date = localDate_of(localDate_getYear(struct_dateTime), localDate_getMonthValue(struct_dateTime), localDate_getDayOfMonth(struct_dateTime));
FinFuncion

Funcion struct_time <- localDateTime_toLocalTime(struct_dateTime)
    Definir struct_time Como Texto;
    struct_time = localTime_ofSecondOfDays(localTime_getSecondsOfDay(struct_dateTime));
FinFuncion
//----[ GETTERS ]----------------------------------------------------<#>
Funcion year <- localDateTime_getYear(struct_dateTime)
    Definir year Como Entero;
    year = localDate_getYear(struct_dateTime);
FinFuncion

Funcion month <- localDateTime_getMonthValue(struct_dateTime)
    Definir month Como Entero;
    month = localDate_getMonthValue(struct_dateTime);
FinFuncion

Funcion day <- localDateTime_getDayOfMonth(struct_dateTime)
    Definir day Como Entero;
    day = localDate_getDayOfMonth(struct_dateTime);
FinFuncion

Funcion dayYear <- localDateTime_getDayOfYear(struct_dateTime)
    Definir dayYear Como Entero;
    dayYear = localDate_getDayOfYear(localDate_getYear(struct_dateTime), localDate_getMonthValue(struct_dateTime), localDate_getDayOfMonth(struct_dateTime));
FinFuncion

Funcion hour <- localDateTime_getHour(struct_dateTime)
    Definir hour Como Entero;
    hour = localTime_getHours(struct_dateTime);
FinFuncion

Funcion minute <- localDateTime_getMinute(struct_dateTime)
    Definir minute Como Entero;
    minute = localTime_getMinutes(struct_dateTime);
FinFuncion

Funcion second <- localDateTime_getSecond(struct_dateTime)
    Definir second Como Entero;
    second = localTime_getSeconds(struct_dateTime);
FinFuncion

Funcion dayName <- localDateTime_getDayOfWeek(struct_dateTime)
    Definir dayName Como Texto;
    dayName = localDate_getDayOfTheWeek(struct_dateTime);
FinFuncion

Funcion era <- localDateTime_getEra(struct_dateTime)
    Definir era Como Texto;
    era = localDate_getEra(struct_dateTime);
FinFuncion
///%%%%%[ DURATION................ ]%%%%%%%[   #DUR    ]%%%%%%%%%%%%%%%%%%
//parsed ISO:8601 "PT1H15M30.5S" y TruncateTo segun el tipo
//----[ GETTERS ]----------------------------------------------------<#>
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
	duration_ofUnit = linearCollection_new(TEMPORAL_AMOUNT_DURATION(), TYPE_FLOAT());
	second_duration = duration_TemporalUnitToSeconds(number_Units, Temporal_Type);
	duration_ofUnit = linearCollection_addLast_ByType(duration_ofUnit, second_duration, TYPE_FLOAT());
FinFuncion

Funcion duration_ofUnit <- duration_getSeconds(struct_Duration)
	Definir duration_ofUnit Como Real;
	duration_ofUnit = temporal_getSeconds(struct_Duration);
FinFuncion
//----[ PARSER ]----------------------------------------------------<#>
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
//----[ GETTERS ]----------------------------------------------------<#>
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
//----[ TO_PARS ]----------------------------------------------------<#>
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
//----[ BOOLEANS ]----------------------------------------------------<#>
Funcion isBetween <- duration_isNegative(struct_duration)
	Definir isBetween Como Logico;
	isBetween = duration_getSeconds(struct_duration) < 0;
FinFuncion

Funcion isBetween <- duration_isZero(struct_duration)
	Definir isBetween Como Logico;
	isBetween = duration_getSeconds(struct_duration) == 0;
FinFuncion
//----[ UTITLITIES ]----------------------------------------------------<#>
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
//----[ OPERATIONS ]----------------------------------------------------<#>
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
//----[ COMPARE_TO ]----------------------------------------------------<#>
Funcion int_result <- duration_CompareTo(struct_duration, struct_duration_match)
	Definir int_result Como Entero;
	Definir duration_Org, duration_Match Como Real;
	duration_Org = duration_getSeconds(struct_duration);
	duration_Match = duration_getSeconds(struct_duration_match);
	int_result = int_CompareTo(duration_Org, duration_Match);
FinFuncion
///%%%%%[ PERIOD.................. ]%%%%%%%[   #PER    ]%%%%%%%%%%%%%%%%%%
Funcion period_string <- period_toString(struct_period)
    Definir period_string, period_array Como Texto;
    Dimension period_array[3];
    period_array[0] = string_append("Y:", num_ToString(period_getYear(struct_period)));
    period_array[1] = string_append("M:", num_ToString(period_getMonth(struct_period)));
    period_array[2] = string_append("D:", num_ToString(period_getDay(struct_period)));
    period_string = array_ofstring_separator(period_array, 3, " ", TYPE_STRING());
FinFuncion
//----[ UTITLITIES ]----------------------------------------------------<#>
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

Funcion total_months <- period_toTotalMonths(struct_period)
    Definir total_months Como Real;
    total_months = (period_getYear(struct_period) * 12) + period_getMonth(struct_period);
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
//----[ OF ]------------------------------------------------------------------------<#>
Funcion struct_period <- period_of(year, month, day)
    Definir struct_period Como Texto;
    struct_period = linearCollection_new(TEMPORAL_LOCALDATE(), TYPE_INT());
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
	struct_period = period_of(number_NULL(), number_NULL(), number_NULL());
FinFuncion
//----[ GETTERS ]----------------------------------------------------<#>
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
//-----[ WITH ]----------------------------------------------------------------------<#>
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
//----[ PLUS ]------------------------------------------------------------------------<#>
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

Funcion struct_period_res <- period_plus(struct_period_A, struct_period_B)
    Definir struct_period_res Como Texto;
    Definir year, month, day Como Entero;
    year	= increment_step(period_getYear(struct_period_A), period_getYear(struct_period_B));
    month	= increment_step(period_getMonth(struct_period_A), period_getMonth(struct_period_B));
    day		= increment_step(period_getDay(struct_period_A), period_getDay(struct_period_B));
    struct_period_res = period_of(year, month, day);
FinFuncion
//----[ MINUS ]----------------------------------------------------------------------<#>
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

Funcion struct_period_res <- period_minus(struct_period_A, struct_period_B)
    Definir struct_period_res Como Texto;
    struct_period_res = period_plus(struct_period_A, period_negated(struct_period_B));
FinFuncion
//----[ BOOLEANS ]----------------------------------------------------<#>
Funcion boolean <- period_isNegative(struct_period)
    Definir boolean Como Logico;
    boolean = (period_getYear(struct_period) < 0) | (period_getMonth(struct_period) < 0) | (period_getDay(struct_period) < 0);
FinFuncion

Funcion boolean <- period_isZero(struct_period)
    Definir boolean Como Logico;
    boolean = (period_getYear(struct_period) == 0) & (period_getMonth(struct_period) == 0) & (period_getDay(struct_period) == 0);
FinFuncion
//----[ BETWEEN ]---------------------------------------------------------------------<#>
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
///%%%%%[ COLLECTION_STORAGE...... ]%%%%%%%[   #CST    ]%%%%%%%%%%%%%%%%%%
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
//----[ ADD ]------------------------------------------------------------------------<#>
Funcion result_storage <- collectionStorage_add_byString_force(struct_storage, value_string, index_lenght, index_data)
	Definir result_storage, length_value Como Texto;
	Definir index_dataArea, index_lengthArea Como Numero;
	length_value   = string_append(symbol_Separator(), num_ToString(string_Length(value_string)));
	result_storage     = string_insert(struct_storage, value_string, index_data);
	result_storage     = string_insert(result_storage, length_value, index_lenght);
FinFuncion

Funcion result_storage <- collectionStorage_add_byString(struct_storage, value_string)
	Definir result_storage Como Texto;
	Definir index_dataArea, index_lengthArea Como Numero;
	index_lengthArea   = increment(string_indexOf(struct_storage, symbol_lengthArea()));
	index_dataArea  = string_lastIndexOf(struct_storage, symbol_metaData());
	result_storage     = collectionStorage_add_byString_force(struct_storage, value_string, index_lengthArea, index_dataArea);
	result_storage     = linearCollection_increment_numElement(result_storage);
FinFuncion

Funcion result_storage <- collectionStorage_add_ByType(struct_storage, value, TYPE)
	Definir result_storage, value_string Como Texto;
	value_string = value_TypeToString(value, TYPE);
	result_storage = collectionStorage_add_byString(struct_storage, value_string);
FinFuncion

Funcion result_storage <- collectionStorage_add(struct_storage, value)
	Definir result_storage, TYPE Como Texto;
	TYPE = collectionStorage_getType(struct_storage);
	result_storage = collectionStorage_add_ByType(struct_storage, value, TYPE);
FinFuncion
//----[ GETTER ]---------------------------------------------------------------------<#>
Funcion value_string <- collectionStorage_get_toString(struct_storage, index_getter)
	Definir value_string Como Texto;
	Definir index_endData Como Numero;
	index_endData = string_lastIndexOf(struct_storage, symbol_metaData());
	value_string  = collectionStorage_get_toString_force(struct_storage, index_getter, index_endData);
FinFuncion

Funcion value_string <- collectionStorage_get_toString_force(struct_storage, index_getter, index_endData)
	Definir value_string Como Texto;
	Definir index_lengthArea, index_dataArea Como Numero;
	Definir sequential_data, sequential_lengths Como Texto;
	index_lengthArea    = increment(string_indexOf(struct_storage, symbol_lengthArea()));
	index_dataArea      = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
	sequential_lengths  = string_substring(struct_storage, index_lengthArea, index_dataArea);
	sequential_data     = string_substring(struct_storage, increment(index_dataArea), index_endData);
	value_string        = managerData_get_toString(sequential_data, sequential_lengths, index_getter);
FinFuncion
//----[ DELETE ]---------------------------------------------------------------------<#>L
Funcion result_storage <- collectionStorage_delete(struct_storage, key)
	Definir result_storage, TYPE Como Texto;
	TYPE = collectionStorage_getType(struct_storage);
	result_storage = collectionStorage_delete_ByType(struct_storage, key, TYPE);
FinFuncion

Funcion result_storage <- collectionStorage_delete_ByType(struct_storage, key, TYPE)
	Definir result_storage, key_string Como Texto;
	key_string = value_TypeToString(key, TYPE);
	result_storage = collectionStorage_delete_ByString(struct_storage, key_string);
FinFuncion

Funcion result_storage <- collectionStorage_delete_ByString(struct_storage, key)
	Definir result_storage Como Texto;
    Definir index_lengthArea, index_dataArea, index_target, count_size Como Numero;
    index_lengthArea = string_indexOf(struct_storage, symbol_lengthArea());
    count_size       = collectionStorage_getSize(struct_storage);
	result_storage   = struct_storage;
    si count_size > 0 Entonces 
        index_target = __private_collectionStorage_SearchIdKey(struct_storage, key, count_size);
        si !value_isNull(index_target, TYPE_INT())Entonces
            result_storage = __private_collectionStorage_deleteIndexed(struct_storage, index_lengthArea,  index_target, count_size);
        FinSi
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
		sequential_data    = string_substring(struct_storage, increment(index_dataArea), index_metaData);
        sequential_package = managerData_modify(sequential_data, sequential_lengths, index_target, string_NULL(), true());
        result_storage     =  collection_updateRange(result_storage, index_lengthArea, index_metaData, sequential_package);
		result_storage     = linearCollection_decrement_numElement(result_storage);
    FinSi
FinFuncion
//----[ GETTERS ]----------------------------------------------------<#>
Funcion innerIndex <- collectionStorage_GetInnerId(struct_storage, key)
	Definir innerIndex Como Numero;
	Definir key_Type Como Texto;
	key_Type = collectionStorage_getType(struct_storage);
	innerIndex = collectionStorage_GetInnerId_ByType(struct_storage, key, key_Type);
FinFuncion

Funcion innerIndex <- collectionStorage_GetInnerId_ByType(struct_storage, key, type)
	Definir innerIndex Como Numero;
	Definir key_string Como Texto;
	key_string = value_TypeToString(key, type);
	innerIndex = collectionStorage_GetInnerId_ByString(struct_storage, key_string);
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

Funcion Type_keys <- collectionStorage_getType(struct_storage)
	Definir Type_keys Como Texto;
	Definir index_TypeKey, index_lengthArea Como Numero;
	index_TypeKey  = increment(string_indexOf(struct_storage, symbol_typeArea()));
	index_lengthArea   = string_indexOf_fromIndex(struct_storage, symbol_lengthArea(), index_TypeKey);
	Type_keys      = string_substring(struct_storage, index_TypeKey, index_lengthArea);
FinFuncion

Funcion num_Keys <- collectionStorage_getSize(struct_storage)
	Definir num_Keys Como Numero;
	num_Keys       = linearCollection_getSize(struct_storage);
FinFuncion
//----[ EXIST ]----------------------------------------------------<#>
Funcion result_storage <- collectionStorage_Exist(struct_storage, key)
	Definir result_storage Como Logico;
	result_storage = collectionStorage_GetInnerId(struct_storage, key) >= 0;
FinFuncion

Funcion result_storage <- collectionStorage_Exist_ByString(struct_storage, key)
	Definir result_storage Como Logico;
	result_storage = collectionStorage_GetInnerId_ByString(struct_storage, key) >= 0;
FinFuncion
//----[ SEARCH ]----------------------------------------------------<#>
Funcion key_id <- __private_collectionStorage_SearchIdKey(struct_storage, key_string, collection_size)
	Definir key_id, index_lengthArea, index_dataArea, index_metaData Como Numero;
	Definir result_storage, sequential_data, sequential_lengths Como Texto;
	si collection_size >= 1 Entonces
		index_lengthArea        = increment(string_indexOf(struct_storage, symbol_lengthArea()));
		index_dataArea       = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
		index_metaData 	= string_indexOf_fromIndex(struct_storage, symbol_metaData(), index_dataArea);
		sequential_lengths     = string_substring(struct_storage, index_lengthArea, index_dataArea);
		sequential_data           = string_substring(struct_storage, increment(index_dataArea), index_metaData);
		key_id				= managerData_getInnerIndex(sequential_data, sequential_lengths, collection_size, key_string);
	SiNo
		key_id = number_NULL();
	FinSi
FinFuncion
//----[ MODIFY ]----------------------------------------------------<#>
Funcion result_storage <- collectionStorage_modify(struct_storage, value, index_modify)
	Definir result_storage, TYPE, value_string Como Texto;
	TYPE           = collectionStorage_getType(struct_storage);
	value_string   = value_TypeToString(value, TYPE);
	result_storage = collectionStorage_modify_byString(struct_storage, value_string, index_modify);
FinFuncion

Funcion result_storage <- collectionStorage_modify_byString(struct_storage, value_string, index_modify)
	Definir result_storage, sequential_data, sequential_lengths, sequential_package Como Texto;
	Definir collection_size, index_lengthArea, index_dataArea, index_metaData Como Numero;
	collection_size = collectionStorage_getSize(struct_storage);
	si collection_size >= 1 Entonces
		index_lengthArea   = increment(string_indexOf(struct_storage, symbol_lengthArea()));
		index_dataArea     = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
		index_metaData     = collection_getIndex_metaData(struct_storage);
		sequential_lengths = string_substring(struct_storage, index_lengthArea, index_dataArea);
		sequential_data    = string_substring(struct_storage, increment(index_dataArea), index_metaData);
		sequential_package = managerData_modify(sequential_data, sequential_lengths, index_modify, value_string, true());
		result_storage     = collection_updateRange(struct_storage, index_lengthArea, index_metaData, sequential_package);
	SiNo
		result_storage     = struct_storage;
	FinSi
FinFuncion
//----[ UNIONS ]----------------------------------------------------<#>
Funcion result_storage <- collectionStorage_AddAll(struct_storage, struct_storage_Match)
	Definir result_storage Como Texto;
	result_storage = __private_collectionStorage_ModifyInnerData(struct_storage, struct_storage_Match, false());
FinFuncion

Funcion result_storage <- collectionStorage_DeleteAll(struct_storage, struct_storage_Match)
	Definir result_storage Como Texto;
	result_storage = __private_collectionStorage_ModifyInnerData(struct_storage, struct_storage_Match, true());
FinFuncion

Funcion result_storage <- collectionStorage_GetKeys_ToSeparatedString(struct_storage, separator)
    Definir result_storage, sequential_data, sequential_lengths Como Texto;
    Definir count_size, index_lengthArea, index_dataArea, index_metaData Como Numero;
    count_size          = collectionStorage_getSize(struct_storage);
    Si count_size > 0 Entonces
		index_lengthArea        = increment(string_indexOf(struct_storage, symbol_lengthArea()));
		index_dataArea       = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
		index_metaData	= string_indexOf_fromIndex(struct_storage, symbol_metaData(), index_dataArea);
		sequential_lengths     = string_substring(struct_storage, index_lengthArea, index_dataArea);
		sequential_data            = string_substring(struct_storage, increment(index_dataArea), index_metaData);
        result_storage = managerData_getSeparateString(sequential_data, sequential_lengths, separator);
    FinSi
FinFuncion

Funcion result_storage <- __private_collectionStorage_ModifyInnerData(struct_storage, struct_storage_Match, isDelete)
	Definir size_match, i, index_start, index_end Como Numero;
	Definir result_storage, key_Setter, key_Match, key_current, separator Como Texto;
	result_storage = struct_storage;
	size_match = collectionStorage_getSize(struct_storage_Match);
	separator = symbol_separator();
	key_Match = collectionStorage_GetKeys_ToSeparatedString(struct_storage_Match, separator);
	i = 0;
	index_start = 0;
	Mientras i < size_match Hacer
		index_end = string_indexOf_fromIndex(key_Match, separator, index_start);
		key_current = string_substring(key_Match,index_start, index_end);
		si isDelete Entonces
			result_storage = collectionStorage_delete_ByString(result_storage, key_current);
		SiNo
			result_storage = collectionStorage_add_byString(result_storage, key_current);
		FinSi
		index_start = increment(index_end);
		i = increment(i);
	FinMientras
FinFuncion

Funcion result_storage <- collectionStorage_RetainAll(struct_storage, struct_storage_Match)
	Definir size, size_match, i, index_start, index_end Como Numero;
	Definir result_storage, key_Setter, key_Match, key_current, separator Como Texto;
	Definir ExistInMatch Como Logico;
	result_storage = struct_storage;
	size_match = collectionStorage_getSize(struct_storage);
	separator = symbol_separator();
	key_Match = collectionStorage_GetKeys_ToSeparatedString(struct_storage, separator);
	i = 0;
	index_start = 0;
	Mientras i < size_match Hacer
		index_end = string_indexOf_fromIndex(key_Match, separator, index_start);
		key_current = string_substring(key_Match, index_start, index_end);
		ExistInMatch = collectionStorage_Exist_ByString(struct_storage_Match, key_Current);
		si !ExistInMatch Entonces
			result_storage = collectionStorage_delete_ByString(result_storage, key_current);
		FinSi
		index_start = increment(index_end);
		i = increment(i);
	FinMientras
FinFuncion

Funcion isDataValid <- __private_collectionStorage_IsEqualsData(struct_storage, key, size, index)
	Definir isDataValid Como Logico;
	Definir data_Inner Como Texto;
	data_Inner  = string_substring(struct_storage, index, size);
	isDataValid = number_isEquals(string_Length(key), size) & string_isEquals(key, data_Inner);
FinFuncion

Funcion result_storage <- collectionStorage_GetKeys_ToString(struct_storage)
	Definir result_storage Como Texto;
	result_storage = collectionStorage_GetKeys_ToSeparatedString(struct_storage, symbol_Separator_Simple());
FinFuncion
//----[ PRINTER_SETTER ]--------------------------------------------------------------<#>
Funcion collectionStorage_println(struct_storage)
	__private_collectionStorage_printer(struct_storage, true());
FinFuncion

Funcion collectionStorage_print(struct_storage)
	__private_collectionStorage_printer(struct_storage, false());
FinFuncion

Funcion __private_collectionStorage_printer(struct_storage, isnewLine)
	Definir key_id, index_lengthArea, index_dataArea, index_metaData Como Numero;
	Definir sequential_data, sequential_lengths Como Texto;
	index_lengthArea        = increment(string_indexOf(struct_storage, symbol_lengthArea()));
	index_dataArea       = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
	index_metaData 	= string_indexOf_fromIndex(struct_storage, symbol_metaData(), index_dataArea);
	sequential_lengths     = string_substring(struct_storage, index_lengthArea, index_dataArea);
	sequential_data            = string_substring(struct_storage, increment(index_dataArea), index_metaData);
	__private_collection_printer(sequential_data, sequential_lengths, isnewLine);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion symbol_area <- symbol_lengthArea
    Definir symbol_area Como Texto;
    symbol_area = "";
FinFuncion
///%%%%%[ CELLS_COLLECTION........ ]%%%%%%%[   #CCE    ]%%%%%%%%%%%%%%%%%%
Funcion new_collectionCells <- collectionCells_new(struct_name, TYPE, fixed_Length)
	Definir new_collectionCells Como Texto;
	new_collectionCells = String_append(struct_name, symbol_cell_length());
	new_collectionCells = String_append(new_collectionCells, collectionCells_setNormCellLength(fixed_Length));
	new_collectionCells = String_append(new_collectionCells, symbol_typeArea());
	new_collectionCells = String_append(new_collectionCells, TYPE);
	new_collectionCells = String_append(new_collectionCells, symbol_dataArea());
	new_collectionCells = String_append(new_collectionCells, symbol_extraData());
	new_collectionCells = String_append(new_collectionCells, "0");
FinFuncion
//-----[ UTILITIES ]----------------------------------------------------<#>
Funcion min_fixed <- collectionCells_getMinFixed
	Definir min_fixed Como Entero;
	min_fixed = 1;
FinFuncion

Funcion length_result <- collectionCells_setNormCellLength(fixed_Length)
	Definir length_result Como Texto;
    Definir length_valid, min_length Como Entero;
	min_length = collectionCells_getMinFixed();
    length_valid = fixed_Length;
    Si length_valid < min_length Entonces
        error_message_function("collectionCells_setNormCellLength(fixed_Length)", "fixed_Length < 1");
        length_valid = min_length;
    FinSi
	length_result = num_toString(length_valid);
FinFuncion

Funcion isChanged <- collectionCells_isChanged(struct_cell, last_length)
	Definir isChanged Como Logico;
	isChanged = (string_Length(struct_cell) > last_length);
FinFuncion

Funcion cells_index <- collectionCells_calcule_indexBlock(index_start, index_search, cell_length)
	Definir cells_index Como Entero;
	cells_index = increment_step(index_start, (index_search * cell_length));
FinFuncion

Funcion cells_index <- collectionCells_calcule_indexBlock_atEnd(index_end, index_search, cell_length)
	Definir cells_index Como Entero;
	cells_index = decrement_step(index_end, (index_search * cell_length));
FinFuncion

Funcion element_cells <- collectionCells_String_normalizedToBlockLegth(element_string, cell_length)
	Definir element_cells Como Texto;
	element_cells = string_fit_end(element_string, String_repeatText(collectionCells_symbol_null(), cell_length));
FinFuncion

Funcion result_string <- collectionCells_clear_cellString(element_string, cell_length)
	Definir result_string Como Texto;
	Definir index_clear Como Entero;
	index_clear = collectionCells_indexOf_clearData(element_string, cell_length);
	result_string = string_substring(element_string, 0, index_clear);
FinFuncion

Funcion index_clear <- collectionCells_indexOf_clearData(dataBlock, cell_length)
	Definir index_clear Como Entero;
	Definir current_char Como Texto;
	Definir no_found Como Logico;
	index_clear = cell_length;
	no_found = true();
	Mientras (index_clear > 0) & no_found Hacer
		current_char = char_At(dataBlock, decrement(index_clear));
		Si String_isEquals(current_char, collectionCells_symbol_null()) Entonces
			index_clear = decrement(index_clear);
		Sino
			no_found = false();
		FinSi
	FinMientras
FinFuncion

Funcion canEntered <- collectionCells_CanLengthEntered(struct_cells, element_length)
	Definir canEntered Como Logico;
	Definir cell_length Como Entero;
	cell_length = collectionCells_getCellLength(struct_cells);
	canEntered = (element_length <= cell_length);
FinFuncion
//----[ GETTERS ]--------------------------------------------------------------------<#>
Funcion size_dataBlock <- collectionCells_getSize(struct_name)
	Definir size_dataBlock Como Entero;	
	size_dataBlock = linearCollection_getSize(struct_name);
FinFuncion

Funcion cell_length <- collectionCells_getCellLength(struct_cells)
	Definir cell_length, index_symbol_cell Como Entero;	
	Definir cell_length_String Como Texto;
	index_symbol_cell  = string_indexOf(struct_cells, symbol_cell_length());
	index_symbol_cell  = increment(index_symbol_cell);
	cell_length_String = ascii_getPrefix_Numbers_fromIndex(struct_cells, index_symbol_cell);
	cell_length        = String_toNum(cell_length_String);
FinFuncion

Funcion index_startData <- collectionCells_getStartData(struct_cells)
	Definir index_startData Como Entero;
	index_startData = increment(collection_getIndex_dataArea(struct_cells));
FinFuncion

Funcion TYPE <- collectionCells_getType(struct_cells)
	Definir TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_cells);
FinFuncion

Funcion element_type <- collectionCells_getCell(struct_cells, index)
	Definir element_string, TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_cells);
	Segun TYPE Hacer
		caso     TYPE_INT(): Definir element_type Como Numero;
		caso   TYPE_FLOAT(): Definir element_type Como Real;
		caso TYPE_BOOLEAN(): Definir element_type Como Logico;
		De Otro Modo:        Definir element_type Como Texto;
	FinSegun
	element_type   =  collectionCells_getCell_toType(struct_cells, index, TYPE);
FinFuncion

Funcion element_type <- collectionCells_getCell_toType(struct_cells, index, TYPE)
	Definir element_string Como Texto;
	Segun TYPE Hacer
		caso     TYPE_INT(): Definir element_type Como Numero;
		caso   TYPE_FLOAT(): Definir element_type Como Real;
		caso TYPE_BOOLEAN(): Definir element_type Como Logico;
		De Otro Modo:        Definir element_type Como Texto;
	FinSegun
	element_string = collectionCells_getCell_toString(struct_cells, index);
	element_type   = value_stringToType(element_string, TYPE);
FinFuncion

Funcion element_string <- collectionCells_getCell_toString(struct_cells, index)
	Definir element_string Como Texto;
	Definir cells_size, index_clear, cell_length, index_startData Como Entero;
	cells_size    = collectionCells_getSize(struct_cells);
	si Collection_IndexIsValid(cells_size, index) Entonces
		cell_length = collectionCells_getCellLength(struct_cells);
		index_startData   = collectionCells_getStartData(struct_cells);
		element_string    = collectionCells_getCell_toString_force(struct_cells, index, index_startData, cell_length);
		element_string    = collectionCells_clear_cellString(element_string, cell_length);
	SiNo
		result_cells = string_NULL();
		error_message_Function("collectionCells_getCell_toString(struct_cells, index)", "index invalid");
	FinSi	
FinFuncion

Funcion result_cells <- collectionCells_getCell_toString_force(struct_cells, index, index_startData, cell_length)
	Definir result_cells Como Texto;
	Definir cells_index, cells_index_end Como Entero;
	result_cells    = struct_cells;
	cells_index     = collectionCells_calcule_indexBlock(index_startData, index, cell_length);
	cells_index_end = increment_step(cells_index, cell_length);
	result_cells    = String_Substring(result_cells, cells_index, cells_index_end);
FinFuncion
//----[ ADD ]------------------------------------------------------------------------<#>
Funcion result_cells <- collectionCells_add(struct_cells, element)
	Definir result_cells, TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_cells);
	result_cells = collectionCells_add_byType(struct_cells, element, TYPE);
FinFuncion

Funcion result_cells <- collectionCells_add_byType(struct_cells, element, TYPE)
	Definir result_cells, element_string Como Texto;
	element_string = value_TypeToString(element, TYPE);
	result_cells = collectionCells_add_byString(struct_cells, element_string);
FinFuncion

Funcion result_cells <- collectionCells_add_byString(struct_cells, element_string)
	Definir result_cells Como Texto;
	Definir index_dataArea, cell_length, element_length, cells_size Como Entero;
	result_cells = struct_cells;
	cell_length = collectionCells_getCellLength(result_cells);
	element_length = String_length(element_string);
	si element_length > cell_length Entonces
		error_message_Function("collectionCells_add_byString(struct_cells, element_string)", "the string length exceeds the defined cells size");
	SiNo
		index_dataArea = increment(String_indexOf(result_cells, symbol_dataArea()));
		cells_size    = collectionCells_getSize(result_cells);
		result_cells  = collectionCells_add_byString_force(struct_cells, element_string, index_dataArea, cells_size, cell_length);
		result_cells  = linearCollection_increment_numElement(result_cells);
	FinSi
FinFuncion

Funcion result_cells <- collectionCells_add_byString_force(struct_cells, element_string, index_start, index_insert, cell_length)
	Definir result_cells Como Texto;
	Definir cells_index, cells_size Como Entero;
	result_cells = struct_cells;
	element_string = collectionCells_String_normalizedToBlockLegth(element_string, cell_length);
	cells_index = collectionCells_calcule_indexBlock(index_start, index_insert, cell_length);
	result_cells = String_insert(result_cells, element_string, cells_index);
FinFuncion
//----[ DELETE ]----------------------------------------------------------------------<#>
Funcion result_cells <- collectionCells_delete_byIndex(struct, index)
	Definir result_cells Como Texto;
	Definir index_dataArea, cells_size, cell_length Como Entero;
	result_cells = struct_cells;
	cells_size = collectionCells_getSize(result_cells);
	si Collection_IndexIsValid(cells_size, index) Entonces
		cell_length = collectionCells_getCellLength(result_cells);
		index_dataArea    = increment(String_indexOf(result_cells, symbol_dataArea()));
		result_cells     = collectionCells_delete_byIndex_force(struct, index, index_dataArea, cell_length);
		result_cells     = linearCollection_decrement_numElement(result_cells);
	SiNo
		error_message_Function("collectionCells_delete_byIndex(struct, index)", "index invalid");
	FinSi
FinFuncion

Funcion result_cells <- collectionCells_delete_byIndex_force(struct_cells, index, index_start, cell_length)
	Definir result_cells Como Texto;
	Definir cells_index, cells_index_end, cells_size Como Entero;
	result_cells = struct_cells;
	cells_index     = collectionCells_calcule_indexBlock(index_start, index, cell_length);
	cells_index_end = increment_step(cells_index, cell_length);
	result_cells    = String_Delete(result_cells, cells_index, cells_index_end);
FinFuncion
//-----[ MODIFY ]---------------------------------------------------------------------<#>
Funcion result_cells <- collectionCells_modify(struct_cells, element_remplace, index)
	Definir result_cells, TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_cells);
	result_cells = collectionCells_modify_byType(struct_cells, element_remplace, index, TYPE);
FinFuncion

Funcion result_cells <- collectionCells_modify_byType(struct_cells, element_remplace, index, TYPE)
	Definir result_cells, element_string Como Texto;
	element_string = value_TypeToString(element_remplace, TYPE);
	result_cells = collectionCells_modify_byString(struct_cells, element_string, index);
FinFuncion

Funcion result_cells <- collectionCells_modify_byString(struct_cells, element_string, index)
	Definir result_cells Como Texto;
	Definir cells_index, cells_size, cell_length, index_dataArea Como Entero;
	result_cells = struct_cells;
	cells_size = collectionCells_getSize(result_cells);
	si Collection_IndexIsValid(cells_size, index) Entonces
		index_dataArea = increment(String_indexOf(result_cells, symbol_dataArea()));
		cell_length  = collectionCells_getCellLength(result_cells);
		cells_index   = collectionCells_calcule_indexBlock(index_dataArea, index, cell_length);
		result_cells  = collectionCells_modify_byString_force(struct_cells, element_string, cells_index, cell_length);
	FinSi
FinFuncion

Funcion result_cells <- collectionCells_modify_byString_force(struct_cells, element_string, cells_index, cell_length)
	Definir result_cells Como Texto;
	element_string  = collectionCells_String_normalizedToBlockLegth(element_string, cell_length);
	result_cells = string_insert_withReplace(struct_cells, element_string, cells_index);
FinFuncion
//-----[ SWAP ]----------------------------------------------------------------------<#>
Funcion result_cells <- collectionCells_swapData(struct_cells, index, index_swap)
	Definir result_cells, data_origin, data_swap Como Texto;
	Definir cells_size, cell_length, index_dataArea Como Entero;
	Definir index_origen, cells_match Como Entero;
	result_cells = struct_cells;
	cells_size   = collectionCells_getSize(result_cells);
	si Collection_IndexIsValid(cells_size, index) & Collection_IndexIsValid(cells_size, index_swap) Entonces
		cell_length = collectionCells_getCellLength(result_cells);
		index_dataArea    = increment(String_indexOf(result_cells, symbol_dataArea()));
		result_cells     = collectionCells_swapData_force(struct_cells, index, index_swap, index_dataArea, cell_length);
	SiNo
		error_message_Function("collectionCells_swapData", "invalid index");
	FinSi
FinFuncion

Funcion result_cells <- collectionCells_swapData_force(struct_cells, index, index_swap, index_start_swap, cell_length)
	Definir result_cells, data_origin, data_swap Como Texto;
	Definir index_origen, cells_match Como Entero;
	result_cells = struct_cells;
	index_origen  = collectionCells_calcule_indexBlock(index_start_swap, index, cell_length);
	cells_match  = collectionCells_calcule_indexBlock(index_start_swap, index_swap, cell_length);
	data_origin   = String_Substring(result_cells, index_origen, increment_step(index_origen, cell_length));
	data_swap     = String_Substring(result_cells, cells_match, increment_step(cells_match, cell_length));
	result_cells = collectionCells_modify_byString_force(result_cells, data_swap, index_origen, cell_length);
	result_cells = collectionCells_modify_byString_force(result_cells, data_origin, cells_match, cell_length);	
FinFuncion
//----[ SEPARATOR ]----------------------------------------------------<#>
Funcion separate_string <- collectionCells_getSeparateString(struct_cells)
	Definir separate_string, data_string Como Texto;
	Definir start_data, end_data, count_size, data_length Como Numero;
	count_size  = collectionCells_getSize(struct_cells);
	data_length = collectionCells_getCellLength(struct_cells);
	start_data  = collectionCells_getStartData(struct_cells);
	end_data    = collectionCells_calcule_indexBlock(start_data, count_size, data_length);
	data_string = string_substring(struct_cells, start_data, end_data);
	separate_string = managerData_getSeparateString_cells(data_string, count_size, data_length);
FinFuncion
//----[ PRINTER ]----------------------------------------------------<#>
Funcion collectionCells_println(struct_cells)
	__private_collectionCells_printer(struct_cells, true());	
FinFuncion

Funcion collectionCells_print(struct_cells)
	__private_collectionCells_printer(struct_cells, false());	
FinFuncion

Funcion __private_collectionCells_printer(struct_cells, isBreakLine)
	Definir data_string Como Texto;
	Definir start_data, end_data, count_size, data_length Como Numero;
	count_size  = collectionCells_getSize(struct_cells);
	data_length = collectionCells_getCellLength(struct_cells);
	start_data  = collectionCells_getStartData(struct_cells);
	end_data    = collectionCells_calcule_indexBlock(start_data, count_size, data_length);
	data_string = string_substring(struct_cells, start_data, end_data);
	managerData_printer_cells(data_string, count_size, data_length, isBreakLine);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion symbol <- collectionCells_symbol_null
	Definir symbol Como Texto;
	symbol = "";
FinFuncion
///%%%%%[ CELLS_COLLECTION_DYNAMIC ]%%%%%%%[   #CCD    ]%%%%%%%%%%%%%%%%%%
//-----[ UTILITIES ]----------------------------------------------------<#>
Funcion result_cells <- collectionCells_Dynamic_ensureCapacity(struct_cells, cell_length, required_length)
	Definir result_cells Como Texto;
	result_cells = struct_cells;
	si required_length > cell_length Entonces
		result_cells = collectionCells_Dynamic_reSize(result_cells, required_length);
	FinSi
FinFuncion

Funcion result_cells <- collectionCells_Dynamic_UpdateLength(struct_cells, new_fixed_length)
	Definir result_cells, fixed_length Como Texto;
	Definir start_fixed, end_fixed Como Entero;
	start_fixed = increment(string_indexOf(struct_cells, symbol_cell_length()));
	end_fixed   = increment(ascii_getEndIndex_Category(struct_cells, start_fixed, ascii_NUMBER()));
	fixed_length = num_toString(new_fixed_length);
	result_cells = collection_replaceRange(struct_cells, fixed_length, start_fixed, end_fixed);
FinFuncion
//-----[ GETTERS ]----------------------------------------------------<#>
Funcion element_type <- collectionCells_Dynamic_getCell(struct_cells, index)
	Definir element_string, TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_cells);
	Segun TYPE Hacer
		caso     TYPE_INT(): Definir element_type Como Numero;
		caso   TYPE_FLOAT(): Definir element_type Como Real;
		caso TYPE_BOOLEAN(): Definir element_type Como Logico;
		De Otro Modo:        Definir element_type Como Texto;
	FinSegun
	element_type   =  collectionCells_getCell_toType(struct_cells, index, TYPE);
FinFuncion

Funcion element_type <- collectionCells_Dynamic_getCell_toType(struct_cells, index, TYPE)
	Definir element_string Como Texto;
	Segun TYPE Hacer
		caso     TYPE_INT(): Definir element_type Como Numero;
		caso   TYPE_FLOAT(): Definir element_type Como Real;
		caso TYPE_BOOLEAN(): Definir element_type Como Logico;
		De Otro Modo:        Definir element_type Como Texto;
	FinSegun
	element_type   =  collectionCells_getCell_toType(struct_cells, index, TYPE);
FinFuncion

Funcion result_cells <- collectionCells_Dynamic_getCell_toString(struct_cells, index)
	Definir result_cells Como Texto;
	result_cells = collectionCells_getCell_toString(struct_cells, index);
FinFuncion
//----[ ADD ]------------------------------------------------------------------------<#>
Funcion result_cells <- collectionCells_Dynamic_add(struct_cells, element)
	Definir result_cells, TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_cells);
	result_cells = collectionCells_Dynamic_add_byType(struct_cells, element, TYPE);
FinFuncion

Funcion result_cells <- collectionCells_Dynamic_add_byType(struct_cells, element, TYPE)
	Definir result_cells, element_string Como Texto;
	element_string = value_TypeToString(element, TYPE);
	result_cells = collectionCells_Dynamic_add_byString(struct_cells, element_string);
FinFuncion

Funcion result_cells <- collectionCells_Dynamic_add_byString(struct_cells, element_string)
	Definir result_cells Como Texto;
	Definir index_dataArea, cell_length, cells_size Como Entero;
	result_cells  = struct_cells;
	cell_length  = collectionCells_getCellLength(result_cells);
	index_dataArea = collectionCells_getStartData(struct_cells);
	cells_size    = collectionCells_getSize(result_cells);
	result_cells  =  collectionCells_Dynamic_add_byString_force(struct_cells, element_string, index_dataArea, cells_size, cell_length);
	result_cells  = linearCollection_increment_numElement(result_cells);
FinFuncion

Funcion result_cells <- collectionCells_Dynamic_add_byString_force(struct_cells, element_string, index_start, index_insert, cell_length)
	Definir result_cells Como Texto;
	Definir element_length Como Entero;
	result_cells  = struct_cells;
	element_length = String_length(element_string);
	result_cells  = collectionCells_Dynamic_ensureCapacity(struct_cells, cell_length, element_length);
	cell_length  = math_max_Int(cell_length, element_length);
	result_cells  = collectionCells_add_byString_force(result_cells, element_string, index_start, index_insert, cell_length);
FinFuncion
//----[ RESIZE ]----------------------------------------------------------------------<#>
Funcion result_cells <- collectionCells_Dynamic_reSize(struct_cells, new_fixed_Length)
	Definir result_cells Como Texto;
	Definir cells_size Como Entero;
	result_cells = struct_cells;
	cells_size   = collectionCells_getSize(result_cells);
	result_cells = collectionCells_Dynamic_reSize_inRange(result_cells, new_fixed_Length, 0, cells_size);
	result_cells = collectionCells_Dynamic_UpdateLength(result_cells, new_fixed_Length);
FinFuncion

Funcion result_cells <- collectionCells_Dynamic_reSize_inRange(struct_cells, new_fixed_Length, index_start, index_end)
	Definir result_cells Como Texto;
	Definir cell_length, index_endData, index_startData Como Entero;
	result_cells = struct_cells;
	cell_length = collectionCells_getCellLength(result_cells);
	index_startData = collectionCells_getStartData(result_cells);
	index_endData = collectionCells_calcule_indexBlock(index_startData, index_end, cell_length);
	result_cells = collectionCells_Dynamic_reSize_inRange_force(result_cells, new_fixed_Length, index_start, index_end, index_endData, cell_length);
FinFuncion

Funcion result_cells <- collectionCells_Dynamic_reSize_inRange_force(struct_cells, new_fixed_Length, index_start, index_end, index_endData, cell_length)
	Definir result_cells Como Texto;
	Definir  diff Como Entero;
	diff = decrement_step(new_fixed_Length, cell_length);
	result_cells = struct_cells;
	Si diff > 0 Entonces
		result_cells = __private_collectionCells_Dynamic_applyPadding(result_cells, diff, index_endData, index_start, index_end, cell_length);
	FinSi
	Si diff < 0 Entonces
		diff = math_abs(diff);
		result_cells = __private_collectionCells_Dynamic_applyCropping(result_cells, diff, index_endData, index_start, index_end, cell_length);
	FinSi
FinFuncion

Funcion result_Padding <- __private_collectionCells_Dynamic_applyPadding(struct_cells, amount, index_endData, index_start, index_end, cell_length)
	Definir result_Padding, padding_null Como Texto;
	Definir current_pos, i Como Entero;
	result_Padding = struct_cells;
	padding_null = string_repeatText(collectionCells_symbol_Null(), amount);
	i = index_start;
	Mientras i < index_end Hacer
		current_pos = collectionCells_calcule_indexBlock_atEnd(index_endData, i, cell_length);
		result_Padding = String_Insert(result_Padding, padding_null, current_pos);
		i = increment(i);
	FinMientras
FinFuncion

Funcion result_cells <- __private_collectionCells_Dynamic_applyCropping(struct_cells, amount, index_endData, index_start, index_end, cell_length)
	Definir result_cells Como Texto;
	Definir current_pos, i Como Entero;
	result_cells = struct_cells;
	i = index_start;
	Mientras i < index_end Hacer
		current_pos = collectionCells_calcule_indexBlock_atEnd(index_endData, i, cell_length);
		result_cells = String_Delete(result_cells, decrement_step(current_pos, amount), current_pos);
		i = increment(i);
	FinMientras
FinFuncion
///%%%%%[ CELLS_COLLECTION_SETTER. ]%%%%%%%[   #CCS    ]%%%%%%%%%%%%%%%%%%
//----[ ADD ]------------------------------------------------------------------------<#>
Funcion result_cells <- collectionCells_Setter_add(struct_cells, element)
	Definir result_cells, TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_cells);
	result_cells = collectionCells_Setter_add_byType(struct_cells, element, TYPE);
FinFuncion

Funcion result_cells <- collectionCells_Setter_add_byType(struct_cells, element, TYPE)
	Definir result_cells, element_string Como Texto;
	element_string = value_TypeToString(element, TYPE);
	result_cells = collectionCells_setter_add_byString(struct_cells, element_string);
FinFuncion

Funcion result_cells <- collectionCells_setter_add_byString(struct_cells, element_string)
	Definir result_cells Como Texto;
	si collectionCells_setter_constains(struct_cells, element_string) Entonces
		result_cells = struct_cells;
	SiNo
		result_cells = collectionCells_add_byString(struct_cells, element_string);
	FinSi
FinFuncion
//----[ ADD_DYNAMIC ]----------------------------------------------------------------<#>
Funcion result_cells <- collectionCells_setterDynamic_add(struct_cells, element)
	Definir result_cells, TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_cells);
	result_cells = collectionCells_setterDynamic_add_byType(struct_cells, element, TYPE);
FinFuncion

Funcion result_cells <- collectionCells_setterDynamic_add_byType(struct_cells, element, TYPE)
	Definir result_cells, element_string Como Texto;
	element_string = value_TypeToString(element, TYPE);
	result_cells = collectionCells_setterDynamic_add_byString(struct_cells, element_string);
FinFuncion

Funcion result_cells <- collectionCells_setterDynamic_add_byString(struct_cells, element_string)
	Definir result_cells Como Texto;
	si collectionCells_setter_constains(struct_cells, element_string) Entonces
		result_cells = struct_cells;
	SiNo
		result_cells = collectionCells_Dynamic_add_byString(struct_cells, element_string);
	FinSi
FinFuncion
//----[ DELETE ]----------------------------------------------------<#>
Funcion result_cells <- collectionCells_setter_delete(struct_cells, value)
	Definir result_cells, TYPE, value_string Como Texto;
	TYPE = collectionCells_getType(struct_cells);
	value_string = value_TypeToString(value, TYPE);
	result_cells = collectionCells_setter_delete_byString(struct_cells, value_string);
FinFuncion

Funcion result_cells <- collectionCells_setter_delete_byString(struct_cells, value_string)
	Definir result_cells Como Texto;
	Definir index_target Como Entero;
	index_target = collectionCells_setter_getIndex_byString(struct_cells, value_string);
	si !number_isEquals(index_target, number_NULL()) Entonces
		result_cells = collectionCells_delete_byIndex(struct_cells, index_target);
	FinSi
FinFuncion
//----[ CONSTAINS ]----------------------------------------------------<#>
Funcion constains_string <- collectionCells_setter_constains(struct_cells, element_string)
	Definir constains_string Como Logico;
	constains_string = collectionCells_setter_getIndex_byString(struct_cells, element_string) >= 0;
FinFuncion

Funcion constains_string <- collectionCells_setter_constains_inRange(struct_cells, element_string, index_start, index_end)
	Definir constains_string Como Logico;
	constains_string = collectionCells_setter_getIndex_byString_inRange(struct_cells, element_string, index_start, index_end) >= 0;
FinFuncion

Funcion constains_string <- collectionCells_setter_constains_inRange_force(struct_cells, element_string, index_start, index_end, index_data, cell_length)
	Definir constains_string Como Logico;
	constains_string = collectionCells_setter_getIndex_byString_inRange_force(struct_cells, element_string, index_start, index_end, index_data, cell_length) >= 0;
FinFuncion
//----[ INDEX ]-----------------------------------------------------------------------<#>
Funcion index_cell <- collectionCells_setter_getIndex(struct_cells, value_search)
	Definir TYPE, string_search Como Texto;
	Definir index_cell Como Entero;
	TYPE          = collectionCells_getType(struct_cells);
	string_search = value_TypeToString(value_search, TYPE);
	index_cell    = collectionCells_setter_getIndex_byString(struct_cells, element_string);
FinFuncion

Funcion index_cell <- collectionCells_setter_getIndex_byString(struct_cells, element_string)
	Definir index_cell, cells_size Como Entero;
	cells_size = collectionCells_getSize(struct_cells);
	index_cell <- collectionCells_setter_getIndex_byString_inRange(struct_cells, element_string, 0, cells_size);
FinFuncion

Funcion index_cell <- collectionCells_setter_getIndex_byString_inRange(struct_cells, element_string, index_start, index_end)
	Definir index_cell, cell_length, index_startData Como Entero;
	cell_length = collectionCells_getCellLength(struct_cells);
	index_startData = collectionCells_getStartData(struct_cells);
	index_cell  = collectionCells_setter_getIndex_byString_inRange_force(struct_cells, element_string, index_start, index_end, index_startData, cell_length);
FinFuncion

Funcion index_cell <- collectionCells_setter_getIndex_byString_inRange_force(struct_cells, element_string, index_start, index_end, index_data, cell_length)
	Definir index_cell, i, current_pos, next_pos Como Entero;
	Definir current_data Como Texto;
	element_string = collectionCells_String_normalizedToBlockLegth(element_string, cell_length);
	index_cell = number_NULL();
	i = index_start;
	current_pos = index_data;
	Mientras i < index_end Hacer
		next_pos = increment_step(current_pos, cell_length);
		current_data = String_Substring(struct_cells, current_pos, next_pos);
		Si string_isEquals(element_string, current_data) Entonces
			index_cell = i;
			i = index_end;
		FinSi
		current_pos = increment_step(current_pos, cell_length);
		i = increment(i);
	FinMientras
FinFuncion
///%%%%%[ COLLECTION_DUAL_CELLS... ]%%%%%%%[   #CDC    ]%%%%%%%%%%%%%%%%%%
Funcion new_collectionCells <- collectionDualCells_new(struct_name, TYPE, fixed_Length, TYPE_right, fixed_Length_two)
	Definir new_collectionCells, quatity_two, type_two Como Texto;
	Definir index_insert Como Entero;
	new_collectionCells = collectionCells_new(struct_name, TYPE, fixed_Length);
	quatity_two = num_toString(fixed_Length_two);
	type_two  = String_append(symbol_cell_type(), TYPE_right);
	index_insert = collection_getIndex_typeArea(new_collectionCells);
	new_collectionCells = string_insert(new_collectionCells, type_two, index_insert);
	index_insert = linearCollection_getIndex_ExtraData(new_collectionCells);
	new_collectionCells = string_insert(new_collectionCells, quatity_two, index_insert);
	new_collectionCells = string_insert(new_collectionCells, symbol_metaData(), index_insert);
FinFuncion
//-----[ UTILITIES ]----------------------------------------------------<#>
Funcion result_cells <- collectionDualCells_UpdateLength_right(struct_cells, new_fixed_Length)
	Definir result_cells Como Texto;
	result_cells = collection_replaceRange_between_lastSymbols(struct_cells, num_toString(new_fixed_Length), symbol_metaData(), symbol_ExtraData());
FinFuncion

Funcion result_cells <- collectionDualCells_Dynamic_ensureCapacity_left(struct_cells, cell_length, required_length)
	Definir result_cells Como Texto;//wrapper
	result_cells  = collectionCells_Dynamic_ensureCapacity(struct_cells, cell_length, required_length);
FinFuncion

Funcion result_cells <- collectionDualCells_Dynamic_ensureCapacity_right(struct_cells, cell_length, required_length)
	Definir result_cells Como Texto;
	result_cells = struct_cells;
	si required_length > cell_length Entonces
		result_cells = collectionDualCells_Dynamic_reSize_right(result_cells, required_length);
	FinSi
FinFuncion

Funcion result_cells <- collectionDualCells_Dynamic_ensureCapacity_right_force(struct_cells, cell_length, required_length, index_endData, cells_size)
	Definir result_cells Como Texto;
	result_cells = struct_cells;
	si required_length > cell_length Entonces
		result_cells = collectionDualCells_Dynamic_reSize_right_force(struct_cells, required_length, index_endData, cells_size, cell_length);
	FinSi
FinFuncion

Funcion isValidLength <- collectionDualCells_validateFixedLength(element_string, cell_length)
	Definir isValidLength Como Logico;
	isValidLength = String_length(element_string) <= cell_length;
FinFuncion

Funcion isValidLength <- collectionDualCells_validateFixedLength_Mode(element_string, cell_length, MODE, direction)
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
	si mode_isFixed & !collectionDualCells_validateFixedLength(element_string, cell_length) Entonces
		error_message_Function("collectionDualCells_validateFixedLength_Mode()", string_append(direction, " :: element exceeds cells size"));
		isValidLength = false();
	FinSi
FinFuncion
//----[ ADD ]------------------------------------------------------------------------<#>
Funcion result_cells <- collectionDualCells_add_byString_right_force(struct_cells, element_string, index_end, index_insert, cell_length)
	Definir result_cells Como Texto;
	Definir cells_index Como Entero;
	result_cells = struct_cells;
	element_string = collectionCells_String_normalizedToBlockLegth(element_string, cell_length);
	cells_index = collectionCells_calcule_indexBlock_atEnd(index_end, index_insert, cell_length);
	result_cells = String_insert(result_cells, element_string, cells_index);
FinFuncion

Funcion result_cells <- collectionDualCells_add_byString_left_force(struct_cells, element_string, index_start, index_insert, cell_length)
	Definir result_cells Como Texto;//wrapper
	result_cells = collectionCells_add_byString_force(struct_cells, element_string, index_start, index_insert, cell_length);
FinFuncion
//----[ ADD_DYNAMIC ]----------------------------------------------------------------<#>
Funcion result_cells <- collectionDualCells_Dynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length)
	Definir result_cells Como Texto;
	Definir element_length, cells_size Como Entero;
	result_cells  = struct_cells;
	element_length = String_length(element_string);
	cells_size    = collectionCells_getSize(result_cells);
	result_cells  = collectionDualCells_Dynamic_ensureCapacity_right_force(struct_cells, cell_length, element_length, index_endData, cells_size);
	si  element_length > cell_length Entonces
		cell_length  =  element_length;
		index_endData = collectionDualCells_getEndData(result_cells);
	FinSi
	result_cells  = collectionDualCells_add_byString_right_force(result_cells, element_string, index_endData, index_insert, cell_length);
FinFuncion

Funcion result_cells <- collectionDualCells_Dynamic_add_byString_left_force(struct_cells, element_string, index_start, index_insert, cell_length)
	Definir result_cells Como Texto;
	result_cells = collectionCells_Dynamic_add_byString_force(struct_cells, element_string, index_start, index_insert, cell_length);
FinFuncion
//----[ RESIZE ]----------------------------------------------------------------------<#>
Funcion result_cells <- collectionDualCells_Dynamic_reSize_right(struct_cells, new_fixed_Length)
	Definir result_cells Como Texto;
	Definir cell_length, cells_size, index_endData Como Entero;	
	cell_length = collectionDualCells_getCellLength_right(struct_cells);
	index_endData = collectionDualCells_getEndData(struct_cells);
	cells_size    = collectionCells_getSize(struct_cells);
	result_cells = collectionCells_Dynamic_reSize_inRange_force(struct_cells, new_fixed_Length, 0, cells_size, index_endData, cell_length);	
FinFuncion

Funcion result_cells <- collectionDualCells_Dynamic_reSize_right_force(struct_cells, new_fixed_Length, index_endData, cells_size, cell_length)
	Definir result_cells Como Texto;
	result_cells = collectionCells_Dynamic_reSize_inRange_force(struct_cells, new_fixed_Length, 0, cells_size, index_endData, cell_length);	
	result_cells = collectionDualCells_UpdateLength_right(result_cells, new_fixed_Length);
FinFuncion
//----[ ADD_SETTER ]----------------------------------------------------<#>
Funcion result_cells <- collectionDualCells_setter_add_byString_left_force(struct_cells, element_string, index_startData, index_insert, cell_length)
	Definir result_cells Como Texto;
	Si collectionDualCells_setter_constains_left(struct_cells, element_string) Entonces
		result_cells = struct_cells;
	SiNo
		result_cells = collectionDualCells_add_byString_left_force(struct_cells, element_string, index_startData, index_insert, cell_length);
	FinSi
FinFuncion

Funcion result_cells <- collectionDualCells_setter_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length)
	Definir result_cells Como Texto;
	Si collectionDualCells_setter_constains_right(struct_cells, element_string) Entonces
		result_cells = struct_cells;
	SiNo
		result_cells  = collectionDualCells_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
	FinSi
FinFuncion
//----[ CONSTAINS ]-------------------------------------------------------------------<#>
Funcion constains_string <- collectionDualCells_setter_constains_right(struct_cells, element_string)
	Definir constains_string Como Logico;
	constains_string = collectionDualCells_setter_getIndex_right_byString(struct_cells, element_string) >= 0;
FinFuncion

Funcion constains_string <- collectionDualCells_setter_constains_left(struct_cells, element_string)
	Definir constains_string Como Logico;
	constains_string = collectionCells_setter_getIndex_byString(struct_cells, element_string) >= 0;
FinFuncion
//----[ INDEX ]-----------------------------------------------------------------------<#>
Funcion index_cell <- collectionDualCells_setter_getIndex_left_byString(struct_cells, element_string)
	Definir index_cell Como Entero;
	index_cell = collectionCells_setter_getIndex_byString(struct_cells, element_string);
FinFuncion

Funcion index_cell <- collectionDualCells_setter_getIndex_right(struct_cells, value_search)
	Definir TYPE, string_search Como Texto; 
	Definir index_cell Como Entero;
	TYPE          = collectionDualCells_getType_right(struct_cells);
	string_search = value_TypeToString(value_search, TYPE);
	index_cell    = collectionDualCells_setter_getIndex_right_byString(struct_cells, string_search);
FinFuncion

Funcion index_cell <- collectionDualCells_setter_getIndex_right_byString(struct_cells, element_string)
	Definir index_cell, element_length, cell_length Como Entero;
	element_length = string_length(element_string);
	cell_length = collectionDualCells_getCellLength_right(struct_cells);
	si (element_length > cell_length) Entonces
		index_cell = number_NULL();
	SiNo
		index_cell = collectionDualCells_setter_getIndex_right_byString_force(struct_cells, element_string, cell_length);	
	FinSi
FinFuncion

Funcion index_cell <- collectionDualCells_setter_getIndex_right_byString_force(struct_cells, element_string, cell_length)
	Definir index_cell, index_endData, cells_size, index_startData_right Como Entero;	
	index_endData         = collectionDualCells_getEndData(struct_cells);
	cells_size           = collectionCells_getSize(struct_cells);
	index_startData_right = collectionCells_calcule_indexBlock_atEnd(index_endData, cells_size, cell_length);
	index_cell          = collectionCells_setter_getIndex_byString_inRange_force(struct_cells, element_string, 0, cells_size, index_startData_right, cell_length);
	si (index_cell >= 0) Entonces
		index_cell = decrement_step(decrement(cells_size), index_cell);
	FinSi
FinFuncion
//----[ ADD_SETTER_DYNAMIC ]----------------------------------------------------------<#>
Funcion result_cells <- collectionDualCells_setterDynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length)
	Definir result_cells Como Texto;	
	Si collectionDualCells_setter_constains_right(struct_cells, element_string) Entonces
		result_cells = struct_cells;
	SiNo
		result_cells = collectionDualCells_Dynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
	FinSi
FinFuncion

Funcion result_cells <- collectionDualCells_setterDynamic_add_byString_left_force(struct_cells, element_string, index_startData, index_insert, cell_length)
	Definir result_cells Como Texto;	
	Si collectionDualCells_setter_constains_left(struct_cells, element_string) Entonces
		result_cells = struct_cells;
	SiNo
		result_cells = collectionDualCells_Dynamic_add_byString_left_force(struct_cells, element_string, index_startData, index_insert, cell_length);
	FinSi
FinFuncion
//----[ ADD ]--------------------------------------------------------------------<#>
Funcion result_cells <- collectionDualCells_mode_add(struct_cells, element_left, MODE, element_right, MODE_TWO)
	Definir result_cells, TYPE,TYPE_TWO Como Texto;
	TYPE          = collectionDualCells_getType_left(struct_cells);
	TYPE_TWO      = collectionDualCells_getType_right(struct_cells);
	result_cells = collectionDualCells_mode_add_byType(struct_cells, element_left, MODE, TYPE, element_right, MODE_TWO, TYPE_TWO);
FinFuncion

Funcion result_cells <- collectionDualCells_mode_add_byType(struct_cells, element_left, MODE, TYPE, element_right, MODE_TWO, TYPE_TWO)
	Definir result_cells, element_string_left, element_string_right Como Texto;
	element_string_left  = value_TypeToString(element_left, TYPE);
	element_string_right = value_TypeToString(element_right, TYPE_TWO);
	result_cells        = collectionDualCells_mode_add_byString(struct_cells, element_string_left, MODE, element_string_right, MODE_TWO);
FinFuncion

Funcion result_cells <- collectionDualCells_mode_add_byString(struct_cells, element_string_left, MODE, element_string_right, MODE_TWO)
	Definir result_cells Como Texto;
	Definir index_insert, last_length Como Entero;
	Definir verifyChange Como Logico;
	result_cells  = struct_cells;
	last_length   = string_Length(result_cells);
	index_insert  = collectionDualCells_getSize(struct_cells);
	result_cells  = collectionDualCells_mode_add_byString_right(result_cells, element_string_right, MODE_TWO, index_insert);
	verifyChange  = collectionCells_isChanged(result_cells, last_length);
	si verifyChange Entonces
		last_length   = string_Length(result_cells);
		result_cells = collectionDualCells_mode_add_byString_left(result_cells, element_string_left, MODE, index_insert);
		verifyChange = collectionCells_isChanged(result_cells, last_length);
	FinSi
	si verifyChange Entonces
		result_cells = linearCollection_increment_numElement(result_cells);
	SiNo
		result_cells = struct_cells;
	FinSi
FinFuncion

Funcion result_cells <- collectionDualCells_mode_add_byString_left(struct_cells, element_string, MODE, index_insert)
	Definir result_cells Como Texto;
	Definir index_startData, cell_length Como Entero;
	result_cells     = struct_cells;
	index_startData   = collectionCells_getStartData(result_cells);
	cell_length   = collectionDualCells_getCellLength_left(result_cells);
	si collectionDualCells_validateFixedLength_Mode(element_string, cell_length, MODE, "[LEFT]") Entonces
		result_cells = collectionDualCells_mode_add_byString_left_force(result_cells, element_string, index_startData, index_insert, cell_length, MODE);	
	FinSi
FinFuncion

Funcion result_cells <- collectionDualCells_mode_add_byString_right(struct_cells, element_string, MODE, index_insert)
	Definir result_cells Como Texto;
	Definir index_endData, cell_length Como Entero;
	result_cells     = struct_cells;
	index_endData     = collectionDualCells_getEndData(result_cells);
	cell_length = collectionDualCells_getCellLength_right(result_cells);
	si collectionDualCells_validateFixedLength_Mode(element_string, cell_length, MODE, "[RIGHT]") Entonces
		result_cells = collectionDualCells_mode_add_byString_right_force(result_cells, element_string, index_endData, index_insert, cell_length, MODE);
	FinSi
FinFuncion

Funcion result_cells <- collectionDualCells_mode_add_byString_left_force(struct_cells, element_string, index_startData, index_insert, cell_length, MODE)
	Definir result_cells Como Texto;
	segun MODE Hacer
		caso CELL_FIXED():
			result_cells = collectionDualCells_add_byString_left_force(struct_cells, element_string, index_startData, index_insert, cell_length);
		caso CELL_SETTER():
			result_cells = collectionDualCells_setter_add_byString_left_force(struct_cells, element_string, index_startData, index_insert, cell_length);
		caso CELL_DYNAMIC():
			result_cells = collectionDualCells_Dynamic_add_byString_left_force(struct_cells, element_string, index_startData, index_insert, cell_length);
		caso CELL_SETTER_DYNAMIC():
			result_cells = collectionDualCells_setterDynamic_add_byString_left_force(struct_cells, element_string, index_startData, index_insert, cell_length);
		De Otro Modo:
			error_message_Function("collectionDualCells_mode_add_byString_left_force(cells, element, Istart, Iinsert, lengthCell, mode)", string_append("[LEFT] mode not exist: ", MODE));
			result_cells = struct_cells;
	FinSegun
FinFuncion

Funcion result_cells <- collectionDualCells_mode_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length, MODE)
	Definir result_cells Como Texto;
	segun MODE Hacer
		caso CELL_FIXED():
			result_cells = collectionDualCells_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
		caso CELL_SETTER():
			result_cells = collectionDualCells_setter_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
		caso CELL_DYNAMIC():
			result_cells = collectionDualCells_Dynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
		caso CELL_SETTER_DYNAMIC():
			result_cells = collectionDualCells_setterDynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
		De Otro Modo:
			error_message_Function("collectionDualCells_mode_add_byString_left_force(cells, element, Istart, Iinsert, lengthCell, mode)", string_append("[right] mode not exist: ", MODE));
			result_cells = struct_cells;
	FinSegun
FinFuncion
//----[ GETTERS ]--------------------------------------------------------------------<#>
Funcion element_left <- collectionDualCells_getCellPair_byRightValue(struct_cells, value_right)
	Definir element_string, TYPE Como Texto;
	element_string = collectionDualCells_getCellPair_byRightValue_ToString(struct_cells, value_right);
	TYPE = collectionDualCells_getType_left(struct_cells);
	Segun TYPE Hacer
		Caso TYPE_INT():     Definir element_left Como Numero;
		Caso TYPE_FLOAT():   Definir element_left Como Real;
		Caso TYPE_BOOLEAN(): Definir element_left Como Logico;
		De Otro Modo:        Definir element_left Como Texto;
	FinSegun
	element_left = value_stringToType(element_string, TYPE);
FinFuncion

Funcion element_left <- collectionDualCells_getCellPair_byRightValue_ToString(struct_cells, value_right)
	Definir element_left, TYPE, value_string Como Texto;
	Definir index_pair Como Entero;
	TYPE = collectionDualCells_getType_right(struct_cells);
	value_string = value_TypeToString(value_right, TYPE);
	index_pair = collectionDualCells_setter_getIndex_right_byString(struct_cells, value_string);
	Si index_pair >= 0 Entonces
		element_left = collectionDualCells_getCell_left_toString(struct_cells, index_pair);
	SiNo
		element_left = string_NULL();
	FinSi
FinFuncion

Funcion element_right <- collectionDualCells_getCellPair_byLeftValue(struct_cells, value_left)
	Definir element_string, TYPE Como Texto;
	element_string = collectionDualCells_getCellPair_byLeftValue_ToString(struct_cells, value_left);
	TYPE = collectionDualCells_getType_right(struct_cells);
	Segun TYPE Hacer
		caso     TYPE_INT(): Definir element_right Como Numero;
		caso   TYPE_FLOAT(): Definir element_right Como Real;
		caso TYPE_BOOLEAN(): Definir element_right Como Logico;
		De Otro Modo:        Definir element_right Como Texto;
	FinSegun
	element_right = value_stringToType(element_string, TYPE);
FinFuncion

Funcion element_right <- collectionDualCells_getCellPair_byLeftValue_ToString(struct_cells, value_left)
	Definir element_right, TYPE, value_string Como Texto;
	Definir index_pair Como Entero;
	TYPE = collectionDualCells_getType_left(struct_cells);
	value_string = value_TypeToString(value_left, TYPE);
	index_pair = collectionDualCells_setter_getIndex_left_byString(struct_cells, value_string);
	si index_pair >= 0 Entonces
		element_right = collectionDualCells_getCell_right_toString(struct_cells, index_pair);
	SiNo
		element_right = string_NULL();
	FinSi
FinFuncion

Funcion element_type <- collectionDualCells_getCell_left(struct_cells, index)
	Definir element_string, TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_cells);
	Segun TYPE Hacer
		caso     TYPE_INT(): Definir element_type Como Numero;
		caso   TYPE_FLOAT(): Definir element_type Como Real;
		caso TYPE_BOOLEAN(): Definir element_type Como Logico;
		De Otro Modo:        Definir element_type Como Texto;
	FinSegun
	element_string = collectionDualCells_getCell_left_toString(struct_cells, index);
	element_type   = value_stringToType(element_string, TYPE);
FinFuncion

Funcion element_type <- collectionDualCells_getCell_left_toType(struct_cells, index, TYPE)
	Definir element_string Como Texto;
	Segun TYPE Hacer
		caso     TYPE_INT(): Definir element_type Como Numero;
		caso   TYPE_FLOAT(): Definir element_type Como Real;
		caso TYPE_BOOLEAN(): Definir element_type Como Logico;
		De Otro Modo:        Definir element_type Como Texto;
	FinSegun
	element_string = collectionDualCells_getCell_left_toString(struct_cells, index);
	element_type   = value_stringToType(element_string, TYPE);
FinFuncion


Funcion element_string <- collectionDualCells_getCell_left_toString(struct_cells, index)
	Definir element_string Como Texto;
	element_string = collectionCells_getCell_toString(struct_cells, index);
FinFuncion

Funcion element_type <- collectionDualCells_getCell_right(struct_cells, index)
	Definir element_string, TYPE Como Texto;
	TYPE = collectionDualCells_getType_right(struct_cells);
	Segun TYPE Hacer
		caso     TYPE_INT(): Definir element_type Como Numero;
		caso   TYPE_FLOAT(): Definir element_type Como Real;
		caso TYPE_BOOLEAN(): Definir element_type Como Logico;
		De Otro Modo:        Definir element_type Como Texto;
	FinSegun
	element_string = collectionDualCells_getCell_right_toString(struct_cells, index);
	element_type   = value_stringToType(element_string, TYPE);
FinFuncion

Funcion element_type <- collectionDualCells_getCell_right_toType(struct_cells, index, TYPE)
	Definir element_string Como Texto;
	Segun TYPE Hacer
		caso     TYPE_INT(): Definir element_type Como Numero;
		caso   TYPE_FLOAT(): Definir element_type Como Real;
		caso TYPE_BOOLEAN(): Definir element_type Como Logico;
		De Otro Modo:        Definir element_type Como Texto;
	FinSegun
	element_string = collectionDualCells_getCell_right_toString(struct_cells, index);
	element_type   = value_stringToType(element_string, TYPE);
FinFuncion

Funcion element_string <- collectionDualCells_getCell_right_toString(struct_cells, index)
	Definir element_string Como Texto;
	Definir cells_size, index_norm, cell_length, index_endData, index_startData Como Entero;
	cells_size    = collectionCells_getSize(struct_cells);
	si Collection_IndexIsValid(cells_size, index) Entonces
		cell_length = collectionDualCells_getCellLength_right(struct_cells);
		index_endData     = collectionDualCells_getEndData(struct_cells);
		index_startData   = collectionCells_calcule_indexBlock_atEnd(index_endData, cells_size, cell_length);
		index_norm        = decrement_step(decrement(cells_size), index);
		element_string    = collectionCells_getCell_toString_force(struct_cells, index_norm, index_startData, cell_length);
		element_string    = collectionCells_clear_cellString(element_string, cell_length);
	SiNo
		error_message_Function("collectionDualCells_getCell_right_toString(struct_cells, index)", "index invalid");
		result_cells = string_NULL();
	FinSi	
FinFuncion

Funcion index_endData <- collectionDualCells_getEndData(struct_cells)
	Definir index_endData Como Entero;
	index_endData = String_lastIndexof(struct_cells, symbol_metaData());
FinFuncion

Funcion cell_length <- collectionDualCells_getCellLength_left(struct_cells)
	Definir cell_length Como Entero;//wrapper
	cell_length = collectionCells_getCellLength(struct_cells);
FinFuncion

Funcion cell_length <- collectionDualCells_getCellLength_right(struct_cells)
	Definir cell_length Como Entero;	
	Definir cells_length_String Como Texto;
	cells_length_String = collection_getContent_Between_lastSymbols(struct_cells, symbol_metaData(), symbol_extraData());
	cell_length    = String_toNum(cells_length_String);
FinFuncion

Funcion index_start <- collectionDualCells_getStartIndex_right(struct_cells)
	Definir cell_length, index_endData, cells_size, index_start Como Entero;	
	cells_size    = collectionCells_getSize(result_cells);
	index_endData = collectionDualCells_getEndData(result_cells);
	cell_length   = collectionCells_getCellLength(result_cells);
	index_start   = collectionCells_calcule_indexBlock_atEnd(index_endData, cells_size, cell_length);
FinFuncion

Funcion TYPE <- collectionDualCells_getType_left(struct_cells)
	Definir TYPE Como Texto;
	TYPE <- collectionCells_getType(struct_cells);
FinFuncion

Funcion TYPE <- collectionDualCells_getType_right(struct_cells)
	Definir TYPE Como Texto;//
	TYPE = collection_getContent_Between_Symbols(struct_cells, symbol_cell_type(), symbol_typeArea());
FinFuncion

Funcion size_dataBlock <- collectionDualCells_getSize(struct_cells)
	Definir size_dataBlock Como Entero;
	size_dataBlock = collectionCells_getSize(struct_cells);
FinFuncion
//----[ MODIFY ]----------------------------------------------------------------------<#>
Funcion result_cells <- collectionDualCells_modify_left_byString(struct_cells, element_string, index)
	Definir result_cells Como Texto;
	result_cells = collectionCells_modify_byString(struct_cells, element_string, index);
FinFuncion

Funcion result_cells <- collectionDualCells_modify_right_byString(struct_cells, element_string, index)
	Definir result_cells Como Texto;
	Definir cells_index, cells_size, cell_length, index_endData Como Entero;
	result_cells = struct_cells;
	cells_size = collectionCells_getSize(result_cells);
	si Collection_IndexIsValid(cells_size, index) Entonces
		index_endData     = collectionDualCells_getEndData(result_cells);
		cell_length = collectionCells_getCellLength(result_cells);
		cells_index      = collectionCells_calcule_indexBlock_atEnd(index_endData, increment(index), cell_length);
		result_cells  = collectionCells_modify_byString_force(struct_cells, element_string, cells_index, cell_length);
	SiNo
		error_message_Function("collectionDualCells_modify_right_byString()", "invalid index");
	FinSi
FinFuncion
//----[ SWAP ]-----------------------------------------------------------------------<#>
Funcion result_cells <- collectionDualCells_swapData_left(struct_cells, index, index_swap)
	Definir result_cells Como Texto;
	result_cells = collectionCells_swapData(struct_cells, index, index_swap);
FinFuncion

Funcion result_cells <- collectionDualCells_swapData_right(struct_cells, index, index_swap)
	Definir result_cells, data_origin, data_swap Como Texto;
	Definir cells_size, cell_length, index_endData, index_dec, index_startData_right Como Entero;
	Definir index_origen, cells_match Como Entero;
	result_cells = struct_cells;
	cells_size   = collectionCells_getSize(result_cells);
	si Collection_IndexIsValid(cells_size, index) & Collection_IndexIsValid(cells_size, index_swap) Entonces
		cell_length     = collectionCells_getCellLength(result_cells);
		index_endData         = collectionDualCells_getEndData(result_cells);
		index_startData_right = collectionCells_calcule_indexBlock_atEnd(index_endData, cells_size, cell_length);
		result_cells         = collectionCells_swapData_force(struct_cells, index, index_swap, index_startData_right, cell_length);
	SiNo
		error_message_Function("collectionDualCells_swapData_left()", "invalid index");
	FinSi
FinFuncion
//----[ DELETE ]----------------------------------------------------------------------<#>
Funcion result_cells <- collectionDualCells_delete(struct_cells, index)
	Definir result_cells Como Texto;
	Definir cells_size Como Entero;
	result_cells = struct_cells;
	cells_size   = collectionDualCells_getSize(result_cells);
	si Collection_IndexIsValid(cells_size, index) Entonces
		result_cells = collectionDualCells_delete_left_force(result_cells, index);
		result_cells = collectionDualCells_delete_right_force(result_cells, index);
		result_cells = linearCollection_decrement_numElement(result_cells);
	SiNo
		error_message_Function("collectionDualCells_swapData_left()", "invalid index");
	FinSi
FinFuncion

Funcion result_cells <- collectionDualCells_delete_left_force(struct_cells, index)
	Definir result_cells Como Texto;
	Definir index_startData, cell_length Como Entero;
	result_cells = struct_cells;
	cell_length = collectionDualCells_getCellLength_left(result_cells);
	index_startData  = collectionCells_getStartData(result_cells);
	result_cells     = collectionCells_delete_byIndex_force(result_cells, index, index_startData, cell_length);
FinFuncion

Funcion result_cells <- collectionDualCells_delete_right_force(struct_cells, index)
	Definir result_cells Como Texto;
	Definir cell_length Como Entero;
	cell_length = collectionDualCells_getCellLength_right(result_cells);	
	result_cells     = __private_collectionDualCells_delete_right(struct_cells, index, cell_length);
FinFuncion

Funcion result_cells <- __private_collectionDualCells_delete_right(struct_cells, index, cell_length)
	Definir result_cells Como Texto;
	Definir index_endData, cells_index, cells_index_end Como Entero;
	result_cells     = struct_cells;
	index_endData    = collectionDualCells_getEndData(result_cells);
	cells_index_end  = collectionCells_calcule_indexBlock_atEnd(index_endData, index, cell_length);
	cells_index      = decrement_step(cells_index_end, cell_length);
	result_cells     = String_Delete(result_cells, cells_index, cells_index_end);
FinFuncion
//----[ PRINTER ]----------------------------------------------------<#>
Funcion separate_string <- collectionDualCells_getSeparateString_right(struct_cells)
	Definir separate_string, data_string Como Texto;
	Definir start_data, end_data, count_size, cell_length Como Numero;
	count_size  = collectionDualCells_getSize(struct_cells);
	cell_length = collectionDualCells_getCellLength_right(struct_cells);
	end_data    = collectionDualCells_getEndData(struct_cells);
	start_data  = collectionCells_calcule_indexBlock_atEnd(end_data, count_size, cell_length);
	data_string = string_substring(struct_cells, start_data, end_data);
	separate_string = managerData_getSeparateString_cells(data_string, count_size, cell_length);
FinFuncion
//----[ PRINTER ]----------------------------------------------------<#>
Funcion collectionDualCells_println_right(struct_cells)
	__private_collectionDualCells_printer_right(struct_cells, true());	
FinFuncion

Funcion collectionDualCells_print_right(struct_cells)
	__private_collectionDualCells_printer_right(struct_cells, false());	
FinFuncion

Funcion __private_collectionDualCells_printer_right(struct_cells, isBreakLine)
	Definir separate_string, data_string Como Texto;
	Definir start_data, end_data, count_size, cell_length Como Numero;
	count_size  = collectionDualCells_getSize(struct_cells);
	cell_length = collectionDualCells_getCellLength_right(struct_cells);
	end_data    = collectionDualCells_getEndData(struct_cells);
	start_data  = collectionCells_calcule_indexBlock_atEnd(end_data, count_size, cell_length);
	data_string = string_substring(struct_cells, start_data, end_data);
	managerData_printer_cells(data_string, count_size, cell_length, isBreakLine);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion MODE <- CELL_FIXED
	Definir MODE Como Texto;
	MODE = "mode_fixed";
FinFuncion

Funcion MODE <- CELL_DYNAMIC
	Definir MODE Como Texto;
	MODE = "mode_dynamic";
FinFuncion

Funcion MODE <- CELL_SETTER
	Definir MODE Como Texto;
	MODE = "mode_setter";
FinFuncion

Funcion MODE <- CELL_SETTER_DYNAMIC
	Definir MODE Como Texto;
	MODE = "mode_setterDynamic";
FinFuncion

Funcion symbol <- symbol_cell_length
	Definir symbol Como Texto;
	symbol = "";
FinFuncion

Funcion symbol <- symbol_cell_type
	Definir symbol Como Texto;
	symbol = "";
FinFuncion
///%%%%%[ COLLECTION_STORAGE_CELLS ]%%%%%%%[   #CSC    ]%%%%%%%%%%%%%%%%%%
Funcion collection_storage <- collectionStorageCells_new(struct_name, TYPE_CELL, TYPE_LINEAR)
	Definir collection_storage Como Texto;
	collection_storage = collectionStorageCells_new_setLengthCell(struct_name, TYPE_CELL, TYPE_LINEAR, 1);
FinFuncion

Funcion collection_storage <- collectionStorageCells_new_setLengthCell(struct_name, TYPE_CELL, TYPE_LINEAR, fixed_Length)
	Definir collection_storage, min_fixed, region_width, region_type  Como Texto;
	Definir index_insert Como Entero;
	collection_storage = collectionStorage_new(struct_name, TYPE_LINEAR);
	region_type        = String_append(symbol_cell_type(), TYPE_CELL);
	index_insert       = collection_getIndex_typeArea(collection_storage);
	collection_storage = string_insert(collection_storage, region_type, index_insert);
	index_insert       = linearCollection_getIndex_extraData(collection_storage);
	region_width       = collectionCells_setNormCellLength(fixed_Length);
	collection_storage = string_insert(collection_storage, region_width, index_insert);
FinFuncion
//-----[ MODEFY ]-------------------------------------------------------<#>
Funcion result_storage <- collectionStorageCells_modifyData_byCell(struct_storageCells, value_search, value)
	Definir result_storage, TYPE, string_search Como Texto;
	TYPE           = collectionStorageCells_getType(struct_storageCells);
	string_search  = value_TypeToString(value_search, TYPE);
	result_storage = collectionStorageCells_modifyData_byCell_String(struct_storageCells, string_search, value);
FinFuncion

Funcion result_storage <- collectionStorageCells_modifyData_byCell_String(struct_storageCells, string_search, value)
	Definir result_storage Como Texto;
	Definir index_target Como Entero;
	index_target = collectionStorageCells_getCellIndex_byString(struct_storageCells, string_search);
	si number_isEquals(value, number_NULL()) Entonces
		result_storage = struct_storageCells;
	SiNo
		result_storage = collectionStorage_modify(struct_storageCells, value, index_target);
	FinSi
FinFuncion
//-----[ GETTERS ]------------------------------------------------------<#>
Funcion value_result <- collectionStorageCells_getData_byCell(struct_storageCells, value_search)
	Definir TYPE, value_string Como Texto;
	value_string = collectionStorageCells_getData_byCell_toString(struct_storageCells, value_search);
	TYPE = collectionStorage_getType(struct_storageCells);
	Segun TYPE Hacer
		caso     TYPE_INT(): Definir value_result Como Numero;
		caso   TYPE_FLOAT(): Definir value_result Como Real;
		caso TYPE_BOOLEAN(): Definir value_result Como Logico;
		De Otro Modo:        Definir value_result Como Texto;
	FinSegun
	value_result = value_stringToType(value_string, TYPE);
FinFuncion

Funcion value_string <- collectionStorageCells_getData_byCell_toString(struct_storageCells, value_search)
	Definir value_string, TYPE, sequential_data, sequential_lengths, string_search Como Texto;
	Definir index_target, index_endData, cells_size, right_startData, cell_length Como Entero;
	Definir index_lengthArea, index_dataArea, index_metaData Como Entero;
	TYPE = collectionDualCells_getType_right(struct_storageCells);
	string_search         = value_TypeToString(value_search, TYPE);
	cell_length           = collectionDualCells_getCellLength_right(struct_storageCells);
	index_endData         = collectionDualCells_getEndData(struct_storageCells);
	cells_size            = collectionCells_getSize(struct_storageCells);
	right_startData       = collectionCells_calcule_indexBlock_atEnd(index_endData, cells_size, cell_length);
	index_target          = collectionStorageCells_getCellIndex_force(struct_storageCells, string_search, cells_size, right_startData, cell_length);
	Si (index_target >= 0) Entonces
		value_string = collectionStorage_get_toString_force(struct_storageCells, index_target, right_startData);
	SiNo
		value_string = string_NULL();
	FinSi
FinFuncion

Funcion collection_size <- collectionStorageCells_getSize(struct_storageCells)
	Definir collection_size Como Entero;
	collection_size = linearCollection_getSize(struct_storageCells);
FinFuncion

Funcion cell_length <- collectionStorageCells_getCellLength(struct_storageCells)
	Definir cell_length Como Entero;
	cell_length = collectionDualCells_getCellLength_right(struct_storageCells);
FinFuncion

Funcion TYPE <- collectionStorageCells_getType(struct_storageCells)
	Definir TYPE Como Texto;
	TYPE = collectionDualCells_getType_right(struct_storageCells);
FinFuncion

Funcion index_target <- collectionStorageCells_getCellIndex(struct_storageCells, value_search)
	Definir string_search, TYPE Como Texto;
	Definir index_target  Como Entero;
	TYPE          = collectionDualCells_getType_right(struct_storageCells);
	string_search = value_TypeToString(value_search, TYPE);
	index_target  = collectionStorageCells_getCellIndex_byString(struct_storageCells, string_search);
FinFuncion

Funcion index_target <- collectionStorageCells_getCellIndex_byString(struct_storageCells, string_search)
	Definir index_target, index_endData, cells_size, right_startData, cell_length Como Entero;
	cell_length     = collectionStorageCells_getCellLength(struct_storageCells);
	index_endData   = collectionDualCells_getEndData(struct_storageCells);
	cells_size      = collectionCells_getSize(struct_storageCells);
	right_startData = collectionCells_calcule_indexBlock_atEnd(index_endData, cells_size, cell_length);	
	index_target    = collectionStorageCells_getCellIndex_force(struct_storageCells, string_search, cells_size, right_startData, cell_length);
FinFuncion

Funcion norm_target <- collectionStorageCells_getCellIndex_force(result_storage, string_search, count_size, right_startData, cell_length)
    Definir norm_target, index_target, search_Length Como Entero;
	Definir index_isInvalid Como Logico;
	search_Length   = string_Length(string_search);
	index_isInvalid = search_Length > cell_length;
	si !index_isInvalid Entonces
		index_target    = collectionCells_setter_getIndex_byString_inRange_force(result_storage, string_search, 0, count_size, right_startData, cell_length);
		index_isInvalid = number_isEquals(index_target, number_NULL());
	FinSi
	si index_isInvalid Entonces
		norm_target = number_NULL();
	SiNo
		norm_target = decrement_step(decrement(count_size), index_target);
	FinSi
FinFuncion
//----[ ADD ]------------------------------------------------------------------------<#>
Funcion result_storage <- collectionStorageCells_add(struct_storage, value_cell, value_linear)
    Definir result_storage, TYPE_CELL, TYPE_LINEAR Como Texto;
    TYPE_CELL      = collectionDualCells_getType_right(struct_storage);
    TYPE_LINEAR    = collectionStorage_getType(struct_storage);
    result_storage = collectionStorageCells_add_byType(struct_storage, value_cell, value_linear, TYPE_CELL, TYPE_LINEAR);
FinFuncion

Funcion result_storage <- collectionStorageCells_add_byType(struct_storage, value_cell, value_linear, TYPE_CELL, TYPE_LINEAR)
    Definir result_storage, value_string, data_string Como Texto;
    value_string = value_TypeToString(value_cell, TYPE_CELL);
    data_string  = value_TypeToString(value_linear, TYPE_LINEAR);
    result_storage = collectionStorageCells_add_byString(struct_storage, value_string, data_string);
FinFuncion

Funcion result_storage <- collectionStorageCells_add_byString(struct_storage, value_string, data_string)
	Definir result_storage Como Texto;
	result_storage = collectionStorageCells_mode_add_byString(struct_storage, value_string, CELL_DYNAMIC(), data_string);
FinFuncion
//----[ ADD_SETTER ]-----------------------------------------------------------------<#>
Funcion result_storage <- collectionStorageCells_add_setter(struct_storage, value_cell, value_linear)
	Definir result_storage, TYPE_CELL, TYPE_LINEAR Como Texto;
	TYPE_CELL      = collectionDualCells_getType_right(struct_storage);
	TYPE_LINEAR    = collectionStorage_getType(struct_storage); 
	result_storage = collectionStorageCells_add_setter_byType(struct_storage, value_cell, value_linear, TYPE_CELL, TYPE_LINEAR);
FinFuncion

Funcion result_storage <- collectionStorageCells_add_setter_byType(struct_storage, value_cell, value_linear, TYPE_CELL, TYPE_LINEAR)
	Definir result_storage, value_string, data_string Como Texto;
	value_string   = value_TypeToString( value_cell, TYPE_CELL);
	data_string    = value_TypeToString( value_linear, TYPE_LINEAR);
	result_storage = collectionStorageCells_add_setter_byString(struct_storage, value_string, data_string);
FinFuncion

Funcion result_storage <- collectionStorageCells_add_setter_byString(struct_storage, value_string, data_string)
	Definir result_storage Como Texto;
	result_storage = collectionStorageCells_mode_add_byString(struct_storage, value_string, CELL_SETTER_DYNAMIC(), data_string);
FinFuncion
//----[ ADD_MODE ]-------------------------------------------------------------------<#>
Funcion result_storage <- collectionStorageCells_mode_add(struct_storage, value_cell, CELL_MODE, value_linear)
	Definir result_storage, TYPE_CELL, TYPE_LINEAR Como Texto;
	TYPE_CELL      = collectionDualCells_getType_right(struct_storage);
	TYPE_LINEAR    = linearCollection_getType(struct_storage); 
	result_storage = collectionStorageCells_mode_add_byType(struct_storage, value_cell, CELL_MODE, value_linear, TYPE_CELL, TYPE_LINEAR);
FinFuncion

Funcion result_storage <- collectionStorageCells_mode_add_byType(struct_storage, value_cell, CELL_MODE, value_linear, TYPE_CELL, TYPE_LINEAR)
	Definir result_storage, value_string, data_string Como Texto;
	value_string   = value_TypeToString(value_cell, TYPE_CELL);
	data_string    = value_TypeToString(value_linear, TYPE_LINEAR);
	result_storage = collectionStorageCells_mode_add_byString(struct_storage, value_string, CELL_MODE, data_string);
FinFuncion

Funcion result_storage <- collectionStorageCells_mode_add_byString(struct_storageCells, value_string, CELL_MODE, data_string)
	Definir result_storage Como Texto;
	Definir index_endData, cell_length, count_size, index_target Como Entero;
	Definir last_length, right_startData, index_lengthArea Como Entero;
	Definir isValidFixed, isChanged Como Logico;
	result_storage = struct_storageCells;
	cell_length    = collectionStorageCells_getCellLength(result_storage);
	last_length    = string_Length(result_storage);
	isValidFixed   = collectionDualCells_validateFixedLength_Mode(value_string, cell_length, CELL_MODE, "[RIGHT]");
	si isValidFixed Entonces
		count_size     = collectionDualCells_getSize(result_storage);
		index_endData  = collectionDualCells_getEndData(result_storage);
		result_storage = collectionDualCells_mode_add_byString_right_force(result_storage, value_string, index_endData, count_size, cell_length, CELL_MODE);
	FinSi 
	right_startData = decrement_step(index_endData, count_size * cell_length);
	isChanged       = collectionCells_isChanged(result_storage, last_length);
	si isChanged Entonces
		index_lengthArea = increment(string_indexOf(result_storage, symbol_lengthArea()));
		result_storage   = collectionStorage_add_byString_force(result_storage, data_string, index_lengthArea, right_startData);//revisar
		result_storage   = linearCollection_increment_numElement(result_storage);
	FinSi
	Si isValidFixed & !isChanged Entonces
		index_target     = collectionStorageCells_getCellIndex_force(result_storage, value_string, count_size, right_startData, cell_length);
		result_storage   = collectionStorage_modify_byString(result_storage, data_string, index_target);
	FinSi
FinFuncion
//----[ DELETE ]---------------------------------------------------------------------<#>
Funcion result_storage <- collectionStorageCells_delete(struct_storageCells, value_search)
	Definir result_storage, TYPE, string_search Como Texto;
	TYPE           = collectionStorageCells_getType(struct_storageCells);
	string_search  = value_TypeToString(value_search, TYPE);
	result_storage = collectionStorageCells_delete_byString(struct_storageCells, string_search);
FinFuncion

Funcion result_storage <- collectionStorageCells_delete_byString(struct_storageCells, string_search)
	Definir result_storage Como Texto;
	Definir right_startData, index_endData, count_size, index_target, cell_length, index_lengthArea, norm_target Como Entero;
	result_storage   = struct_storageCells;
	count_size       = collectionCells_getSize(result_storage);
	cell_length      = collectionStorageCells_getCellLength(struct_storageCells);
	index_endData    = collectionDualCells_getEndData(result_storage);
	right_startData  = decrement_step(index_endData, count_size * cell_length);
	index_target     = collectionStorageCells_getCellIndex_force(result_storage, string_search, count_size, right_startData, cell_length);
	index_lengthArea = string_indexOf(result_storage, symbol_lengthArea());
	result_storage   = __private_collectionDualCells_delete_right(result_storage, index_target, cell_length);
	result_storage   = __private_collectionStorage_deleteIndexed(result_storage, index_lengthArea, index_target, count_size);
FinFuncion
//----[ UTILITIES ]------------------------------------------------------------------<#>
Funcion constainsValue <- collectionStorageCells_constainsValue(struct_storageCells, value_search)
	Definir constainsValue Como Logico;
	Definir storage_index Como Entero;
	storage_index = collectionStorage_GetInnerId(struct_storageCells, value_search);
	constainsValue = !number_isEquals(storage_index, number_NULL());
FinFuncion

Funcion constainsValue <- collectionStorageCells_constainsCell(struct_storageCells, value_search)
	Definir constainsValue Como Logico;
	Definir cell_index Como Entero;
	cell_index = collectionDualCells_setter_getIndex_right(struct_storageCells, value_search);
	constainsValue = !number_isEquals(cell_index, number_NULL());
FinFuncion

Funcion separate_string <- collectionStorageCells_getSeparateString(struct_cells)
	Definir separate_string Como Texto;
	separate_string = collectionDualCells_getSeparateString_right(struct_cells);
FinFuncion

Funcion collectionStorageCells_println(struct_cells)
	__private_collectionDualCells_printer_right(struct_cells, true());	
FinFuncion

Funcion collectionStorageCells_print(struct_cells)
	__private_collectionDualCells_printer_right(struct_cells, false());	
FinFuncion
//----------------------------------------------------------------------<#>
Funcion pixel <- pixel_Qr_plain
	Definir pixel Como Texto;
	pixel = "  ";
FinFuncion

Funcion pixel <- pixel_Qr_clear
	Definir pixel Como Texto;
	pixel = "ØØ";
FinFuncion

Funcion size_version <- canvas_getSizeVersionQr(version)
	Definir size_version Como Entero;
	size_version = increment_step(21, (decrement(version) * 4));
FinFuncion
//mascara: 111011111000100
//modo: 0100 -> ubicado seria
//00
//10
//modo mask: (fila % 2 == 0) invertir
//dando resultado
//11
//10
//antes de la version 7 no hay una zona de 18 bites de version
Funcion canvas_Qr <- Qr_getBase(version, outer_margin)
	Definir canvas_Qr Como Texto;
	Definir size_version, size_x, size_y, outer_margin_norm Como Numero;
	Definir start_draw_x, start_draw_y, pattern_width, pattern_height Como Numero;
	size_version    = canvas_getSizeVersionQr(version);
	outer_margin_norm = outer_margin * string_Length(pixel_Qr_plain());
	size_y          = increment_step(size_version, outer_margin_norm);
	size_x          = (size_y * string_Length(pixel_Qr_plain()));
	start_draw_x    = outer_margin_norm;
	start_draw_y    = outer_margin;
	pattern_width   = (string_Length(pixel_Qr_plain()) * 7);
	pattern_height  = (math_truncate(string_Length(pixel_Qr_plain()) / 2) * 7);
	canvas_Qr       = canvas_new_withPixel(size_x, size_y, pixel_Qr_clear());
	canvas_Qr 		= Qr_drawFinderPatterns(canvas_Qr, size_x, size_y, start_draw_x, start_draw_y, pattern_width, pattern_height);
	canvas_Qr 		= Qr_drawTimingPatterns(canvas_Qr, size_x, size_y, start_draw_x, start_draw_y, pattern_width, pattern_height);
FinFuncion

Funcion canvas_result <- Qr_drawFinderPatterns(canvas_Qr, size_x, size_y, start_draw_x, start_draw_y, pattern_width, pattern_height)
	Definir canvas_result, sprite_position Como Texto;
	Definir end_draw_x, end_draw_y, position_right_x, position_bottom_y, position_point Como Numero;
	end_draw_x        = decrement_step(size_x, start_draw_x);
	end_draw_y        = decrement_step(size_y, start_draw_y);
	sprite_position   = Qr_getSpritePositionPattern();
	position_right_x  = decrement_step(end_draw_x, pattern_width);
	position_bottom_y = decrement_step(end_draw_y, pattern_height);
	position_point = increment_step(increment_step(start_draw_x, pattern_width), string_Length(pixel_Qr_plain()));
	canvas_result = canvas_Qr;
	canvas_result = canvas_drawSpriteString(canvas_result, size_x, size_y, sprite_position, start_draw_x, start_draw_y);
	canvas_result = canvas_drawSpriteString(canvas_result, size_x, size_y, sprite_position, position_right_x, start_draw_y);
	canvas_result = canvas_drawSpriteString(canvas_result, size_x, size_y, sprite_position, start_draw_x, position_bottom_y);
	canvas_result = canvas_DrawPoint_withPixel(canvas_result, size_x, size_y, position_point, position_bottom_y, pixel_Qr_Plain());
FinFuncion

Funcion canvas_result <- Qr_drawTimingPatterns(canvas_Qr, size_x, size_y, start_draw_x, start_draw_y, pattern_width, pattern_height)
	Definir canvas_result, pixel_current Como Texto;
	Definir i, origin_timing_x, origin_timing_y, length_pixel, length_pixel_y, length_line Como Numero;
	length_pixel    = string_Length(pixel_Qr_plain());
	length_pixel_y  = math_truncate(length_pixel / 2);
	length_line     = decrement_step(size_x, (pattern_width * 2));
	length_line     = decrement_step(length_line, (length_pixel * 4));
	length_line     = math_truncate(length_line / length_pixel);
	origin_timing_x = increment_step(increment_step(start_draw_x, pattern_width), length_pixel);
	origin_timing_y = increment_step(increment_step(start_draw_y, pattern_height), length_pixel_y);
	canvas_result = canvas_Qr;
	i = 0;
	Mientras i < length_line Hacer
		Si math_module(i, 2) == 0 Entonces
			pixel_current = pixel_Qr_Plain();
		SiNo
			pixel_current = pixel_Qr_clear();
		FinSi
		canvas_result = canvas_DrawPoint_withPixel(canvas_result, size_x, size_y, increment_step(origin_timing_x, i * length_pixel), pattern_height, pixel_current);
		canvas_result = canvas_DrawPoint_withPixel(canvas_result, size_x, size_y, pattern_width, increment_step(origin_timing_y, i * length_pixel_y), pixel_current);
		i = increment(i);
	FinMientras
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
///%%%%%[ SET..................... ]%%%%%%%[   #SET    ]%%%%%%%%%%%%%%%%%%
Funcion new_Set <- util_set_new(TYPE)
	Definir new_Set Como Texto;
	new_Set = collectionCells_new(STRUCT_TYPE_SET(), TYPE, collectionCells_getMinFixed());
FinFuncion

Funcion result_storage <- util_set_Add(struct_set, key_new)
	Definir result_storage Como Texto;
	result_storage = collectionCells_setterDynamic_add(struct_set, key_new);
FinFuncion

Funcion result_storage <- util_set_Delete(struct_set, key_new)
	Definir result_storage Como Texto;
	result_storage = collectionCells_setter_delete(struct_set, key_new);
FinFuncion

Funcion util_set_println(struct_set)
	collectionCells_println(struct_set);
FinFuncion

Funcion keyExist <- util_set_Containss(struct_set, key_match)
	Definir keyExist Como Logico;
	keyExist = collectionCells_setter_constains(struct_set, key_match);
FinFuncion

Funcion result_Size <- util_get_Size(struct_set)
	Definir result_Size Como Numero;
	result_Size = collectionCells_getSize(struct_set);
FinFuncion
///%%%%%[ MAP..................... ]%%%%%%%[   #MAP    ]%%%%%%%%%%%%%%%%%%
Funcion new_Map <- util_map_new(TYPE, TYPE_VALUE)
	Definir new_Map Como Texto;
	new_Map = collectionStorageCells_new(STRUCT_TYPE_MAP(), TYPE, TYPE_VALUE);
FinFuncion

Funcion result_Map <- util_map_Put(struct_map, key, value)
	Definir result_Map Como Texto;
	result_Map = collectionStorageCells_add_setter(struct_map, key, value);
FinFuncion

Funcion result_Map <- util_map_remove(struct_map, key)
	Definir result_Map Como Texto;
	result_Map = collectionStorageCells_delete(struct_map, key);
FinFuncion

Funcion util_map_println_Key(struct_Map)
	//collectionStorage_println(struct_Map);
FinFuncion

Funcion util_map_println_Value(struct_Map)
	collectionStorage_println(struct_Map);
FinFuncion

Funcion element_Result <- util_map_Get(struct_map, key)
	Definir TYPE Como Texto;
	TYPE = linearCollection_GetType(struct_map);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Numero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = collectionStorageCells_getData_byCell(struct_map, key);
FinFuncion

Funcion map_Size <- util_map_Size(struct_map)
	Definir map_Size Como Numero;
	map_Size = collectionStorageCells_getSize(struct_map);
FinFuncion

Funcion mapConstains <- util_map_ContainsValue(struct_map, value_match)
	Definir mapConstains Como Logico;
	mapConstains = collectionStorageCells_constainsValue(struct_map, value_match);
FinFuncion

Funcion mapConstains <- util_map_ContainsKey(struct_map, key_match)
	Definir mapConstains Como Logico;
	mapConstains = collectionStorageCells_constainsCell(struct_map, key_match);
FinFuncion
///%%%%%[ OBJECT.................. ]%%%%%%%[   #OBJ    ]%%%%%%%%%%%%%%%%%%
Funcion symbol_char <- symbol_ObjectSeparator
	Definir symbol_char Como Texto;
	symbol_char = ".";
FinFuncion

Funcion object_result <- object_new(name_object)
	Definir object_result Como Texto;
	object_result = linearCollection_new(TYPE_OBJECT(), string_append(name_object, symbol_ExtraData()));
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
	element_Result = value_stringToType(object_Property_GetValue_toString(struct_Object, property_name), TYPE);
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
		Innerobject_info = string_NULL();
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
	object_Result = object_Property_ModifyOrDelete_ToSeparator(struct_Object, property_name, property_value, separator, false());
FinFuncion

Funcion object_Result <- object_Property_ModifyOrDelete_ToSeparator(struct_Object, property_name, property_value, separator, isDelete)
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
		si isDelete Entonces
			object_Modify_string = linearCollection_DeleteElement(struct_Object, property_InnerIndex);
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

Funcion object_Result <- object_Property_Delete(struct_Object, property_name)
	Definir object_Result Como Texto;
	object_Result = object_Property_ModifyOrDelete_ToSeparator(struct_Object, property_name, string_NULL(), symbol_ObjectSeparator(), true());
FinFuncion

Funcion object_result <- object_InheritsFrom(object_Original, object_Hereditary)
	Definir object_result Como Texto;
	object_result = __private_object_process_AddOrDelete_general(object_Original, object_Hereditary, false());
FinFuncion

Funcion object_depure <- object_Delete_CommonPropertiesFrom(object_Original, object_Compartor)
	Definir object_depure Como Texto;
	object_depure = __private_object_process_AddOrDelete_general(object_Original, object_Compartor, true());
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
	object_Name = collection_getContent_Between_Symbols(struct_Object, symbol_typeArea(), symbol_ExtraData());
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
		property_TYPE = string_NULL();
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
		property_TYPE = string_NULL();
		error_message_Function("__private_object_Property_GetType_IndexProperty", string_append("property no exist :", property_name));
	FinSi
FinFuncion

Funcion property_InnerIndex <- __private_object_Property_GetInnerIndex_IndexProperty(struct_Object, property_name, IndexProperty)
	Definir property_InnerIndex Como Numero;
	property_InnerIndex = -1;
	Mientras (IndexProperty >= 0) & !string_isEquals(char_At(struct_Object, increment(IndexProperty)), symbol_dataArea()) Hacer
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
	Area_Property = collection_getContent_Between_Symbols(struct_Object, symbol_ExtraData(), symbol_dataArea());
FinFuncion

Funcion object_result <- __private_object_process_AddOrDelete_general(object_select, object_compartor, isDelete)
	Definir object_result, object_Instructions, property_name, property_type Como Texto;
	Definir length_instructions, End_index Como Numero;
	object_Instructions = __private_object_GetInstructions_AccordingToProcess(object_select, object_compartor, isDelete);
	object_result = object_select;
	length_instructions = string_Length(object_Instructions);
	si !string_isEquals(object_Instructions, string_NULL()) Entonces
		Mientras (length_instructions > 1) Hacer		
			End_index = string_indexOf_fromIndex(object_Instructions, symbol_Key_Value(), 0);
			property_name = string_substring(object_Instructions, 0, End_index);
			object_Instructions = string_Delete(object_Instructions, 0, increment(End_index));
			End_index = string_indexOf_fromIndex(object_Instructions, symbol_Separator(), 0);
			property_type = string_substring(object_Instructions, 0, End_index);
			object_Instructions = string_Delete(object_Instructions, 0, increment(End_index));
			length_instructions = string_Length(object_Instructions);
			Si isDelete Entonces
				object_result = object_Property_Delete(object_result, property_name);
			SiNo
				object_result = object_Property_Add(object_result, property_name, property_type);	
			FinSi
		FinMientras
	FinSi
FinFuncion

Funcion object_Instructions <- __private_object_GetInstructions_AccordingToProcess(object_select, object_compartor, isDelete)
	Definir object_Instructions, Area_Property_Comparator, Area_Property_Select, array_Select, array_Comparator Como Texto;
	Definir i, Size_Select, Size_Comparator, start_index, End_index Como Numero;
	
	Size_Select = linearCollection_getSize(object_select);
	Size_Comparator = linearCollection_getSize(object_compartor);
	Area_Property_Comparator = object_getAreaProperty(object_compartor);
	object_Instructions = string_NULL();
	
	si (Size_Comparator > 0) & (Size_Select > 0) Entonces
		Dimension array_Select[Size_Select];
		Dimension array_Comparator[Size_Comparator];
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
		object_Instructions = array_ToDeltastring_ByComparation(array_Select, size_Select, array_Comparator, size_Comparator, isDelete);
	FinSi
	
	si (Size_Select < 1) & (Size_Comparator > 0) Entonces
		object_Instructions = if_else(isDelete, string_NULL(), Area_Property_Comparator, TYPE_STRING());
	FinSi
FinFuncion
///%%%%%[ CANVAS.................. ]%%%%%%%[   #CAN    ]%%%%%%%%%%%%%%%%%%
Funcion canvas <- canvas_new(CWx, CWy)
	Definir canvas Como Texto;
	canvas = canvas_new_WithPixel(CWx, CWy, pixel_clear());
FinFuncion
//recomendado:630*130
Funcion canvas <- canvas_new_WithPixel(CWx, CWy, pixel_BackGround)
	Definir i Como Numero;
	Definir canvas, canvas_x Como Texto;
	canvas_x = canvas_Row_WithText(pixel_BackGround, CWx);
	Para i=1 Hasta CWy Con Paso 1 Hacer
		canvas = string_append(canvas, canvas_x);
	FinPara
FinFuncion
//----[ DISPLAY ]----------------------------------------------------<#>
Funcion canvas_display(canvas, CWx, CWy)
	canvas_display_MonoColor(canvas, CWx, CWy, "");
FinFuncion

Funcion canvas_display_MonoColor(canvas, CWx, CWy, color)
	Definir i, slice_start, slice_end Como Numero;
	Definir canvas_array, DrawX Como Texto;
	Dimension canvas_array[CWy];
	para i=0 Hasta decrement(CWy) con paso 1 Hacer
		slice_start = canvas_getIndex(0, i, CWx);
		slice_end 	= canvas_getIndex(0, increment(i), CWx);
		DrawX		= string_substring(canvas, slice_start, slice_end);
		canvas_array[i] = DrawX;
	FinPara	
	println_array_color(canvas_array, CWy, color);
FinFuncion

Funcion canvas_displayWindow(canvas, Cx, Cy, title)
	canvas_displayWindow_monoColor(canvas, Cx, Cy, title, COLOR_GREEN());
FinFuncion

Funcion canvas_displayWindow_monoColor(canvas, Cx, Cy, title, color_window)
	canvas_displayWindow_color(canvas, Cx, Cy, title, color_window, COLOR_CYAN());
FinFuncion

Funcion canvas_displayWindow_color(canvas, Cx, Cy, title, color_window, color_title)
	Definir end_line, title_bar como Texto;
	canvas = canvas_addColumn_withPixel(canvas, Cx, Cy, "¦");
	Cx = increment(Cx);
	canvas = canvas_addColumn_atStart_withPixel(canvas, Cx, Cy, "¦");
	Cx = increment(Cx);
	title_bar = __private_window_getTitleBar_color(title, Cx, color_window, color_title);
	canvas_display(title_bar, __private_window_calcTitleBarColorLength(Cx, color_window, color_title), 3);
	canvas_display_MonoColor(canvas, Cx, Cy, color_window);
	end_line = canvas_Row_WithText_toBorders("¯", Cx, "`");
	println_simple(color_setcolorText(end_line, color_window));
FinFuncion

Funcion length_colors <- __private_window_calcTitleBarColorLength(width_titleBar, color_bar, color_title)
	Definir length_colors, length_decorator, length_titleDecorator, length_padding Como Entero;
	length_titleDecorator = string_Length(color_title);
	length_decorator = string_Length(color_bar);
	length_padding = increment_step((length_decorator * 2), length_titleDecorator);
	length_colors = increment_step(width_titleBar,  length_padding);
FinFuncion

Funcion titlebar <- __private_window_getTitleBar_color(title, width_titleBar, color_bar, color_title)
	Definir titlebar, top_bar, button_bar, center_bar, padding_end Como Texto;
	Definir title_color, top_color, button_color, center_color Como Texto;
	Definir center_width, top_width, res_width Como Entero;
	top_bar       = canvas_Row_WithText_toBorders("_", width_titleBar, ".");
	center_bar	  = __private_window_titleBar_getCenterBar(title, width_titleBar);
	button_bar    = canvas_Row_WithText_toBorders("¨", width_titleBar, "¦");
	top_color     = color_setColorText(top_bar, color_bar);//...
	button_color  = color_setColorText(button_bar, color_bar);
	center_color  = center_bar;
	center_color  = string_insert(center_color, color_title, 1);
	center_color  = string_insert(center_color, color_bar, decrement(string_Length(center_color)));
	center_color  = color_setColorText(center_color, color_bar);
	top_width     = string_Length(top_color);
	center_width  = string_Length(center_color);
	res_width     = math_abs(decrement_step(center_width, top_width));
	padding_end   = string_repeatText(" ", res_width);
	si center_width >= top_width Entonces
		top_color    = string_append(top_color, padding_end);
		button_color = string_append(button_color, padding_end);
	SiNo
		center_color = string_append(center_color, padding_end);
	FinSi
	titlebar = string_append_withSeparator(top_color, button_color, center_color);
FinFuncion

Funcion title_string <- __private_window_getTitleBar(title, width_titleBar)
	Definir title_string, top_bar, button_bar, center_bar Como Texto;
	title_string  = __private_window_getTitleBar_color(title, width_titleBar, "", "");
FinFuncion

Funcion center_bar <- __private_window_titleBar_getCenterBar(title, width_titleBar)
	Definir center_bar, buttons, title_area, side_space Como Texto;
	Definir side_left, side_right, center_content Como Texto;
	Definir usable_width, title_maximum_length, padding Como Entero;
	Definir length_sides, buttons_length Como Entero;
	buttons = "- ¤ ×";
	buttons_length = string_length(buttons);
	side_space = " ";
	Si width_titleBar < 4 Entonces
		side_space = "";
	FinSi
	side_left = string_append("¦", side_space);
	side_right = string_append(side_space, "¦");
	length_sides = string_length(string_append(side_left, side_right));
	usable_width = math_max_Int(0, decrement_step(width_titleBar, length_sides));
	Si usable_width < buttons_length Entonces
		title_area = "";
		buttons = string_substring(buttons, decrement_step(buttons_length, usable_width), buttons_length);
	SiNo
		title_maximum_length = decrement_step(usable_width, increment(buttons_length));
		title_area = string_fit_toRange(title, 0, title_maximum_length);
		padding = decrement_step(title_maximum_length, string_length(title_area));
		title_area = string_append(title_area, string_repeatText(" ", padding));
		title_area = string_append(title_area, " ");
	FinSi
	center_content = string_append(title_area, buttons);
	center_bar = string_append_withSeparator(side_left, side_right, center_content);
FinFuncion
//----[ TO_SPRITESTRING ]-----------------------------------------------------------<#>
Funcion sprite_canvas <- canvas_toSpriteString(canvas, Cx, Cy)
	Definir sprite_canvas, metaData_length, length_line Como Texto;
	Definir index_MetaData Como Entero;
	sprite_canvas   = linearCollection_new(tComponent_TYPE_SPRITE_STRING(), TYPE_STRING());
	length_line     = Num_toString(Cx);
	sprite_canvas   = linearCollection_addLast(sprite_canvas, length_line);
	index_MetaData  = string_LastIndexOf(sprite_canvas, symbol_metaData());
	sprite_canvas   = string_insert(sprite_canvas, canvas, index_MetaData);
	metaData_length = string_repeatText(string_append(symbol_Separator(), length_line), Cy);
	index_MetaData  = increment(string_LastIndexOf(sprite_canvas, symbol_metaData()));
	sprite_canvas   = string_insert(sprite_canvas, metaData_length, index_MetaData);
	sprite_canvas   = linearCollection_update_numElement(sprite_canvas, Cy);
FinFuncion
//----[ UTILITIES ]----------------------------------------------------<#>
Funcion sub_canvas <- canvas_extractRegion(canvas, Cx, Cy, x0, y0, x1, y1)
	Definir sub_canvas, line_text Como Texto;
	Definir slice_start, slice_end, current_y Como Numero;
	Si x0 < 0 | y0 < 0 | x1 > Cx | y1 > Cy | x0 > x1 | y0 > y1 Entonces
		error_message_Function("canvas_extractSubCanvas", "index no valid");
		sub_canvas = "";
	Sino
		sub_canvas = "";
		current_y = y0;
		Mientras current_y <= y1 & current_y < Cy Hacer
			slice_start = canvas_getIndex(x0, current_y, Cx);
			slice_end   = canvas_getIndex(x1, current_y, Cx);
			line_text = string_substring(canvas, slice_start, slice_end);
			sub_canvas = String_append(sub_canvas, line_text);
			current_y = increment(current_y);
		FinMientras
	FinSi
FinFuncion

Funcion row_x <- canvas_Row_WithText_toBorders(text, repeats, border)
	Definir row_x, row_line Como Texto;
	Definir repeats_norm Como Entero;
	repeats_norm = math_max_int(decrement_step(repeats, 2), 0);
	row_line = string_repeatText(text, repeats_norm);
    row_x = string_append_withSeparator(border, border, row_line);
FinFuncion

Funcion row_x <- canvas_Row_WithText(text, repeats)
	Definir row_x Como Texto;
	row_x = string_repeatText(text, repeats);
FinFuncion

Funcion index_canvas <- canvas_getIndex(x0, y0, CWx)
	Definir index_canvas Como Numero;
	index_canvas= x0+(y0*CWx);
FinFuncion

Funcion text_fit <- string_fit_toRange(text, index_start, max_width)
    Definir text_fit Como Texto;
    Definir text_len, abs_start, capacity Como Numero;
    text_fit = text;
    text_len = string_Length(text);
    Si index_start < 0 Entonces
        abs_start = math_abs(index_start);
        Si text_len > abs_start Entonces
            text_fit = string_substring(text_fit, abs_start, text_len);
        SiNo
            text_fit = "";
        FinSi
        text_len = string_Length(text_fit);
        index_start = 0;
    FinSi
    capacity = decrement_step(max_width, index_start);
    Si text_len > capacity Entonces
        text_fit = string_substring(text_fit, 0, capacity);
    FinSi
FinFuncion
//----[ ADD_COLUMN ]----------------------------------------------------<#>
Funcion canvas_result <- canvas_addColumns_ofIndex_withPixel(canvas, CWx, CWy, num_columns, x_start, pixel)
	Definir canvas_result, text_extra Como Texto;
	Definir i, x_insert Como Numero;
	canvas_result = canvas;
	text_extra = canvas_Row_WithText(pixel, num_columns);
	x_insert = math_rangeLimit_Int(x_start, 0, CWx);
	i = decrement(Cwy);
	Mientras i >= 0 Hacer
		canvas_result = string_insert(canvas_result, text_extra, canvas_getIndex(x_insert, i, CWx));
		i = decrement(i);
	FinMientras
FinFuncion

Funcion canvas_result <- canvas_addColumns_withPixel(canvas, CWx, CWy, num_columns, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addColumns_ofIndex_withPixel(canvas, CWx, CWy, num_columns, 0, pixel);
FinFuncion

Funcion canvas_result <- canvas_addColumns_atStart_withPixel(canvas, CWx, CWy, num_columns, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addColumns_ofIndex_withPixel(canvas, CWx, CWy, num_columns, CWx, pixel);
FinFuncion

Funcion canvas_result <- canvas_addColumns(canvas, CWx, CWy, num_columns)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addColumns_withPixel(canvas, CWx, CWy, num_columns, pixel_clear());
FinFuncion

Funcion canvas_result <- canvas_addColumns_ofIndex(canvas, CWx, CWy, num_columns, index)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addColumns_ofIndex_withPixel(canvas, CWx, CWy, num_columns, index, pixel_clear());
FinFuncion

Funcion canvas_result <- canvas_addColumns_atStart(canvas, CWx, CWy, num_columns)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addColumns_atStart_withPixel(canvas, CWx, CWy, num_columns, pixel_clear());
FinFuncion

Funcion canvas_result <- canvas_addColumn_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addColumns_withPixel(canvas, CWx, CWy, 1, pixel);
FinFuncion

Funcion canvas_result <- canvas_addColumn_atStart_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addColumns_atStart_withPixel(canvas, CWx, CWy, 1, pixel);
FinFuncion

Funcion canvas_result <- canvas_addColumn_ofIndex(canvas, CWx, CWy, index)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addColumns_ofIndex(canvas, CWx, CWy, 1, index);
FinFuncion

Funcion canvas_result <- canvas_addColumn(canvas, CWx, CWy)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addColumn_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion

Funcion canvas_result <- canvas_addColumn_atStart(canvas, CWx, CWy)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addColumn_atStart_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion
//----[ DELETE_COLUMN ]--------------------------------------------------------------<#>
Funcion canvas_result <- canvas_removeColumns_count(canvas, CWx, CWy, num_columns, x_start)
	Definir canvas_result Como Texto;
	Definir i, x_remove, index_row Como Numero;
	canvas_result = canvas;
	x_remove = math_rangeLimit_Int(x_start, 0, CWx);
	Para i = decrement(CWy) Hasta 0 Con Paso decrement(0) Hacer
		index_row = canvas_getIndex(x_remove, i, CWx);
		canvas_result = string_Delete(canvas_result, index_row, increment_step(index_row, num_columns));
	FinPara
FinFuncion

Funcion canvas_result <- canvas_removeColumns(canvas, CWx, CWy, num_columns)
	Definir canvas_result Como Texto;
	canvas_result = canvas_removeColumns_count(canvas, CWx, CWy, num_columns, 0);
FinFuncion

Funcion canvas_result <- canvas_removeColumns_ofIndex(canvas, CWx, CWy, num_columns, index)
	Definir canvas_result Como Texto;
	canvas_result = canvas_removeColumns_count(canvas, CWx, CWy, num_columns, index);
FinFuncion

Funcion canvas_result <- canvas_removeColumns_atStart(canvas, CWx, CWy, num_columns)
	Definir canvas_result Como Texto;
	canvas_result = canvas_removeColumns_count(canvas, CWx, CWy, num_columns, Cwx);
FinFuncion

Funcion canvas_result <- canvas_removeColumn_ofIndex(canvas, CWx, CWy, index)
	Definir canvas_result Como Texto;
	canvas_result = canvas_removeColumns_ofIndex(canvas, CWx, CWy, 1, index);
FinFuncion

Funcion canvas_result <- canvas_removeColumn(canvas, CWx, CWy)
	Definir canvas_result Como Texto;
	canvas_result = canvas_removeColumns(canvas, CWx, CWy, 1);
FinFuncion

Funcion canvas_result <- canvas_removeColumn_atStart(canvas, CWx, CWy)
	Definir canvas_result Como Texto;
	canvas_result = canvas_removeColumns_atStart(canvas, CWx, CWy, 1);
FinFuncion
//----[ ADD_ROW ]----------------------------------------------------------------------<#>
Funcion canvas_result <- canvas_addRows_ofIndex_withPixel(canvas, CWx, CWy, num_rows, y_start, pixel)
    Definir canvas_result, text_rows Como Texto;
    Definir total_chars, y_insert Como Numero;
	text_rows = canvas_Row_WithText(pixel, num_rows * CWx);
	y_insert = math_rangeLimit_Int(y_start, 0, CWy);
	canvas_result = string_Insert(canvas, text_rows, canvas_getIndex(0, y_insert, CWx));
FinFuncion

Funcion canvas_result <- canvas_addRows_withPixel(canvas, CWx, CWy, num_rows, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addRows_ofIndex_withPixel(canvas, CWx, CWy, num_rows, 0, pixel);
FinFuncion

Funcion canvas_result <- canvas_addRows_atStart_withPixel(canvas, CWx, CWy, num_rows, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addRows_ofIndex_withPixel(canvas, CWx, CWy, num_rows, CWy, pixel);
FinFuncion

Funcion canvas_result <- canvas_addRows(canvas, CWx, CWy, num_rows)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addRows_withPixel(canvas, CWx, CWy, num_rows, pixel_clear());
FinFuncion

Funcion canvas_result <- canvas_addRows_ofIndex(canvas, CWx, CWy, num_rows, index)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addRows_ofIndex_withPixel(canvas, CWx, CWy, num_rows, index, pixel_clear());
FinFuncion

Funcion canvas_result <- canvas_addRows_atStart(canvas, CWx, CWy, num_rows)
	Definir canvas_result Como Texto;
	canvas_result =canvas_addRows_atStart_withPixel(canvas, CWx, CWy, num_rows, pixel_clear());
FinFuncion

Funcion canvas_result <- canvas_addRow_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addRows_withPixel(canvas, CWx, CWy, 1, pixel);
FinFuncion

Funcion canvas_result <- canvas_addRow_atStart_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addRows_atStart_withPixel(canvas, CWx, CWy, 1, pixel);
FinFuncion

Funcion canvas_result <- canvas_addRow_ofIndex(canvas, CWx, CWy, index)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addRows_ofIndex(canvas, CWx, CWy, 1, index);
FinFuncion

Funcion canvas_result <- canvas_addRow(canvas, CWx, CWy)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addRow_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion

Funcion canvas_result <- canvas_addRow_atStart(canvas, CWx, CWy)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addRow_atStart_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion
//----[ DELETE_ROW ]----------------------------------------------------<#>
Funcion canvas_result <- canvas_removeRows_count(canvas, CWx, CWy, num_rows, isTop)
	Definir canvas_result Como Texto;
	Definir total_chars, start_delete Como Numero;
	total_chars = CWx * num_rows;
	start_delete = if_else(isTop, 0, decrement_step(CWx * CWy, total_chars), TYPE_INT());
	canvas_result = string_Delete(canvas, start_delete, increment_step(start_delete, total_chars));
FinFuncion

Funcion canvas_result <- canvas_removeRows(canvas, CWx, CWy, num_rows)
	Definir canvas_result Como Texto;
	canvas_result = canvas_removeRows_count(canvas, CWx, CWy, num_rows, false());
FinFuncion

Funcion canvas_result <- canvas_removeRows_atStart(canvas, CWx, CWy, num_rows)
	Definir canvas_result Como Texto;
	canvas_result = canvas_removeRows_count(canvas, CWx, CWy, num_rows, true());
FinFuncion

Funcion canvas_result <- canvas_removeRow(canvas, CWx, CWy)
	Definir canvas_result Como Texto;
	canvas_result = canvas_removeRows(canvas, CWx, CWy, 1);
FinFuncion

Funcion canvas_result <- canvas_removeRow_atStart(canvas, CWx, CWy)
	Definir canvas_result Como Texto;
	canvas_result = canvas_removeRows_atStart(canvas, CWx, CWy, 1);
FinFuncion
//----[ MOVE_CONTENT_Y ]--------------------------------------------------------------<#>
Funcion canvas_move <- canvas_moveContent_top_nPositions_withPixel(canvas, CWx, CWy, pixel, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_addRows_withPixel(canvas, CWx, CWy, n_positions, pixel);
	canvas_move = canvas_removeRows_atStart(canvas_move, CWx, increment_step(CWy, n_positions), n_positions);
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottom_nPositions_withPixel(canvas, CWx, CWy, pixel, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_addRows_atStart_withPixel(canvas, CWx, CWy, n_positions, pixel);
	canvas_move = canvas_removeRows(canvas_move, CWx, increment_step(CWy, n_positions), n_positions);
FinFuncion

Funcion canvas_move <- canvas_moveContent_top_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_top_nPositions_withPixel(canvas, CWx, CWy, pixel_clear(), n_positions);
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottom_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_bottom_nPositions_withPixel(canvas, CWx, CWy, pixel_clear(), n_positions);
FinFuncion

Funcion canvas_move <- canvas_moveContent_top_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_top_nPositions_withPixel(canvas, CWx, CWy, pixel, 1);
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottom_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_bottom_nPositions_withPixel(canvas, CWx, CWy, pixel, 1);
FinFuncion

Funcion canvas_move <- canvas_moveContent_top(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_top_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottom(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_bottom_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion
//----[ MOVE_CONTENT_X ]--------------------------------------------------------------<#>
Funcion canvas_move <- canvas_moveContent_Left_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_addColumns_withPixel(canvas, CWx, CWy, n_positions, pixel);
	canvas_move = canvas_removeColumns_atStart(canvas_move, increment_step(CWx, n_positions), CWy, n_positions);
FinFuncion

Funcion canvas_move <- canvas_moveContent_Right_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_addColumns_atStart_withPixel(canvas, CWx, CWy, n_positions, pixel);
	canvas_move = canvas_removeColumns(canvas_move, increment_step(CWx, n_positions), CWy, n_positions);
FinFuncion

Funcion canvas_move <- canvas_moveContent_Left_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_Left_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_Right_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_Right_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_Left_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_Left_nPositions_withPixel(canvas, CWx, CWy, 1, pixel);
FinFuncion

Funcion canvas_move <- canvas_moveContent_Right_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_Right_nPositions_withPixel(canvas, CWx, CWy, 1, pixel);
FinFuncion

Funcion canvas_move <- canvas_moveContent_Left(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_Left_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_Right(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_Right_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion
//----[ MOVE_CONTENT_XY ]-------------------------------------------------------------<#>
Funcion canvas_move <- canvas_moveContent_diagonal_atPositions_withPixel(canvas, CWx, CWy, isTop, isLeft, n_positions, pixel)
	Definir canvas_move Como Texto;
	Si isTop Entonces
		canvas_move = canvas_moveContent_top_nPositions_withPixel(canvas, CWx, CWy, pixel, n_positions);
	Sino
		canvas_move = canvas_moveContent_bottom_nPositions_withPixel(canvas, CWx, CWy, pixel, n_positions);
	FinSi
	Si isLeft Entonces
		canvas_move = canvas_moveContent_Left_nPositions_withPixel(canvas_move, CWx, CWy, n_positions, pixel);
	Sino
		canvas_move = canvas_moveContent_Right_nPositions_withPixel(canvas_move, CWx, CWy, n_positions, pixel);
	FinSi
FinFuncion
//----[ MOVE_DIAGONAL_TOP_LEFT ]------------------------------------------------------<#>
Funcion canvas_move <- canvas_moveContent_topLeft_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_diagonal_atPositions_withPixel(canvas, CWx, CWy, true(), true(), n_positions, pixel);
FinFuncion

Funcion canvas_move <- canvas_moveContent_topLeft_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_topLeft_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_topLeft(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_topLeft_nPositions(canvas, CWx, CWy, 1);
FinFuncion
//----[ MOVE_DIAGONAL_TOP_RIGHT ]-----------------------------------------------------<#>
Funcion canvas_move <- canvas_moveContent_topRight_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_diagonal_atPositions_withPixel(canvas, CWx, CWy, true(), false(), n_positions, pixel);
FinFuncion

Funcion canvas_move <- canvas_moveContent_topRight_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_topRight_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_topRight(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_topRight_nPositions(canvas, CWx, CWy, 1);
FinFuncion
//----[ MOVE_DIAGONAL_BOTTOM_LEFT ]---------------------------------------------------<#>
Funcion canvas_move <- canvas_moveContent_bottomLeft_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_diagonal_atPositions_withPixel(canvas, CWx, CWy, false(), true(), n_positions, pixel);
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottomLeft_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_bottomLeft_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottomLeft(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_bottomLeft_nPositions(canvas, CWx, CWy, 1);
FinFuncion
//----[ MOVE_DIAGONAL_BOTTOM_RIGHT ]--------------------------------------------------<#>
Funcion canvas_move <- canvas_moveContent_bottomRight_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_diagonal_atPositions_withPixel(canvas, CWx, CWy, false(), false(), n_positions, pixel);
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottomRight_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_bottomRight_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottomRight(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_bottomRight_nPositions(canvas, CWx, CWy, 1);
FinFuncion
//----[ RESIZE_EXPAND ]--------------------------------------------------------------<#>
Funcion canvas_result <- canvas_resize_count_withPixel(canvas, CWx, CWy, num_rows, num_columns, isTop, isLeft, pixel)
	Definir canvas_result Como Texto;
	Definir new_CWx Como Numero;
	canvas_result = canvas_addColumns_ofIndex_withPixel(canvas, CWx, CWy, num_columns, isLeft, pixel);
	new_CWx = increment_step(CWx, num_columns);
	canvas_result = canvas_addRows_ofIndex_withPixel(canvas_result, new_CWx, CWy, num_rows, isTop, pixel);
FinFuncion

Funcion canvas_result <- canvas_resize_withPixel(canvas, CWx, CWy, num_rows, num_columns, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_resize_count_withPixel(canvas, CWx, CWy, num_rows, num_columns, false(), false(), pixel);
FinFuncion

Funcion canvas_result <- canvas_resize_atStart_withPixel(canvas, CWx, CWy, num_rows, num_columns, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_resize_count_withPixel(canvas, CWx, CWy, num_rows, num_columns, true(), true(), pixel);
FinFuncion

Funcion canvas_result <- canvas_resize(canvas, CWx, CWy, num_rows, num_columns)
	Definir canvas_result Como Texto;
	canvas_result = canvas_resize_withPixel(canvas, CWx, CWy, num_rows, num_columns, pixel_clear());
FinFuncion

Funcion canvas_result <- canvas_resize_atStart(canvas, CWx, CWy, num_rows, num_columns)
	Definir canvas_result Como Texto;
	canvas_result = canvas_resize_atStart_withPixel(canvas, CWx, CWy, num_rows, num_columns, pixel_clear());
FinFuncion

Funcion canvas_result <- canvas_resize_expand_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_resize_withPixel(canvas, CWx, CWy, 1, 1, pixel);
FinFuncion

Funcion canvas_result <- canvas_resize_expand_atStart_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_resize_atStart_withPixel(canvas, CWx, CWy, 1, 1, pixel);
FinFuncion

Funcion canvas_result <- canvas_resize_expand(canvas, CWx, CWy)
	Definir canvas_result Como Texto;
	canvas_result = canvas_resize_expand_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion

Funcion canvas_result <- canvas_resize_expand_atStart(canvas, CWx, CWy)
	Definir canvas_result Como Texto;
	canvas_result = canvas_resize_expand_atStart_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion
//----[ DECREMENT_SIZE ]--------------------------------------------------------------<#>
Funcion canvas_result <- canvas_decrementSize_count(canvas, CWx, CWy, num_rows, num_columns, isTop, isLeft)
	Definir canvas_result Como Texto;
	canvas_result = canvas_removeRows_count(canvas, CWx, CWy, num_rows, isTop);
	canvas_result = canvas_removeColumns_count(canvas_result, CWx, CWy, num_columns, isLeft);
FinFuncion

Funcion canvas_result <- canvas_decrementSize(canvas, CWx, CWy, num_rows, num_columns)
	Definir canvas_result Como Texto;
	canvas_result = canvas_decrementSize_count(canvas, CWx, CWy, num_rows, num_columns, false(), false());
FinFuncion

Funcion canvas_result <- canvas_decrementSize_atStart(canvas, CWx, CWy, num_rows, num_columns)
	Definir canvas_result Como Texto;
	canvas_result = canvas_decrementSize_count(canvas, CWx, CWy, num_rows, num_columns, true(), true());
FinFuncion

Funcion canvas_result <- canvas_decrementSizeOne(canvas, CWx, CWy)
	Definir canvas_result Como Texto;
	canvas_result = canvas_decrementSize(canvas, CWx, CWy, 1, 1);
FinFuncion

Funcion canvas_result <- canvas_decrementSizeOne_atStart(canvas, CWx, CWy)
	Definir canvas_result Como Texto;
	canvas_result = canvas_decrementSize_atStart(canvas, CWx, CWy, 1, 1);
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
	canvas_rectangle = canvas_DrawRectangle_whitPixel(canvas, Cx, Cy, pixel_plain(), x0, y0, width, height);
FinFuncion

Funcion canvas_rectangle <- canvas_DrawRectangle_whitPixel(canvas, Cx, Cy, pixelVH, x0, y0, width, height)
	Definir canvas_rectangle Como Texto;
	canvas_rectangle = canvas_DrawRectangle_whitPixels(canvas, Cx, Cy, pixelVH, pixelVH, x0, y0, width, height);
FinFuncion

Funcion canvas_rectangle <- canvas_DrawRectangle_whitPixels(canvas, Cx, Cy, pixel_H, pixel_V, x0, y0, width, height)
    Definir canvas_rectangle Como Texto;
	canvas_rectangle = canvas_DrawRectangle_whitPixels_Full(canvas, Cx, Cy, pixel_H, pixel_H, pixel_V, pixel_V, x0, y0, width, height);
FinFuncion

Funcion canvas_rectangle <- canvas_DrawRectangle_whitPixels_Full(canvas, Cx, Cy, pixel_H, pixel_H1, pixel_V, pixel_V1, x0, y0, x1, y1)
    Definir canvas_rectangle Como Texto;
	canvas_rectangle = canvas;
	canvas_rectangle = canvas_DrawLine_whitPixel(canvas_rectangle, Cx, Cy, pixel_V,  x0, y0, x0, y1);//left
	canvas_rectangle = canvas_DrawLine_whitPixel(canvas_rectangle, Cx, Cy, pixel_V1, decrement(x1), y0, decrement(x1), y1);//Right
	canvas_rectangle = canvas_DrawLine_whitPixel(canvas_rectangle, Cx, Cy, pixel_H,  x0, y0, x1, y0);//top
    canvas_rectangle = canvas_DrawLine_whitPixel(canvas_rectangle, Cx, Cy, pixel_H1, x0, y1, x1, y1);//botton
FinFuncion

Funcion canvas_triangle <- canvas_DrawTriangle_Normalized(canvas, CWx, CWy, x0, y0, x1, y1, x2, y2)
    Definir canvas_triangle Como Texto;
 	x0 = canvas_Normalized_ToPixelX(CWx, x0);
	y0 = canvas_Normalized_ToPixelY(CWy, y0);
	x1 = canvas_Normalized_ToPixelX(CWx, x1);
	y1 = canvas_Normalized_ToPixelY(CWy, y1);	
	x2 = canvas_Normalized_ToPixelX(CWx, x2);
	y2 = canvas_Normalized_ToPixelY(CWy, y2);
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
	canvas_point = canvas_DrawPoint_withPixel(canvas, CWx, CWy, x0, y0, pixel_plain());
FinFuncion

Funcion canvas_point <- canvas_DrawPoint_withPixel(canvas, CWx, CWy, x0, y0, pixel_symb)
	Definir canvas_point Como Texto;
	Definir post_pixel Como Numero;
	canvas_point = canvas;
	si x0 < CWx & y0 < CWy & x0 >= 0 & y0 >= 0 Entonces
		post_pixel = canvas_getIndex(x0, y0, CWx);//x+(y*Cx)=12+(1*40) = 52
		canvas_point = string_insert_withReplace(canvas_point, pixel_symb, post_pixel);
	FinSi
FinFuncion

Funcion canvas_text <- canvas_DrawText_Normalized(canvas, CWx, CWy, text, x0, y0)
	Definir canvas_text Como Texto;
	Definir x_norm, y_norm Como Numero;
	x_norm = canvas_Normalized_ToPixelX(CWx, x0);
	y_norm = canvas_Normalized_ToPixelY(CWy, y0);
	canvas_text = canvas_DrawText(canvas, CWx, CWy, text, x_norm, y_norm);
FinFuncion

Funcion canvas_text <- canvas_DrawText(canvas, CWx, CWy, text, x0, y0)
	Definir canvas_text Como Texto;
	Definir post_text Como Numero;
	canvas_text = canvas;
	si x0 < CWx & y0 < CWy & y0 >= 0 Entonces 
		text = string_fit_toRange(text, x0, CWx);
		x0 = math_max_Int(x0, 0);
		Si x0 < CWx & string_Length(text) > 0 Entonces
            post_text = canvas_getIndex(x0, y0, CWx);
            canvas_text = string_insert_withReplace(canvas_text, text, post_text);
        FinSi
	FinSi
FinFuncion

Funcion canvas_line <- canvas_DrawLine(canvas, CWx, CWy, x0, y0, x1, y1)
    Definir canvas_line Como Texto;
	canvas_line = canvas_DrawLine_whitPixel(canvas, CWx, CWy, pixel_plain(), x0, y0, x1, y1);
FinFuncion
//Bresenham algorithm
Funcion canvas_line <- canvas_DrawLine_whitPixel(canvas, CWx, CWy, pixel_symb,  x0, y0, x1, y1)
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
    Mientras !number_isEquals(x_, x1) | !number_isEquals(y_, y1) Hacer
        canvas_line = canvas_DrawPoint_withPixel(canvas_line, CWx, CWy, x_, y_, pixel_symb);
		
        Si error >= 0 Entonces
            x_ = increment_step(x_, xi);//10+ -1
            y_ = increment_step(y_, yi);//10+ -1
            error = error + 2 * (Cy - Cx);// 9 + (2*(7-8)) = 9+ -2 = 7
        SiNo
            x_ = increment_step(x_, xi_rec);
            y_ = increment_step(y_, yi_rec);
            error = error + 2 * Cy;
        FinSi
    FinMientras
FinFuncion
//----[ NORMALIZED (-1 ... 1) ]-------------------------------------------------------<#>
Funcion canvas_line <- canvas_DrawLine_Normalized(canvas, CWx, CWy, x0, y0, x1, y1)
    Definir canvas_line Como Texto;
	x0 = canvas_Normalized_ToPixelX(CWx, x0);
	y0 = canvas_Normalized_ToPixelY(CWy, y0);
	x1 = canvas_Normalized_ToPixelX(CWx, x1);
	y1 = canvas_Normalized_ToPixelY(CWy, y1);
	canvas_line = canvas_DrawLine_whitPixel(canvas, CWx, CWy, pixel_plain(), x0, y0, x1, y1);
FinFuncion

Funcion canvas_point <- canvas_DrawPoint_Normalized(canvas, CWx, CWy, x0, y0)
	Definir canvas_point Como Texto;
	canvas_point = canvas_DrawPoint_withPixel_Normalized(canvas, CWx, CWy, x0, y0, pixel_plain());
FinFuncion

Funcion canvas_point <- canvas_DrawPoint_withPixel_Normalized(canvas, CWx, CWy, x0, y0, pixel_symb)
	Definir canvas_point Como Texto;
	x0 = canvas_Normalized_ToPixelX(CWx, x0);
	y0 = canvas_Normalized_ToPixelY(CWy, y0);
	canvas_point = canvas_DrawPoint_withPixel(canvas, CWx, CWy, x0, y0, pixel_symb);
FinFuncion

Funcion canvas_rectangle <- canvas_DrawRectangle_Normalized(canvas, CWx, CWy, x0, y0, x1, y1)
    Definir canvas_rectangle Como Texto;
 	x0 = canvas_Normalized_ToPixelX(CWx, x0);
	y0 = canvas_Normalized_ToPixelY(CWy, y0);
	x1 = canvas_Normalized_ToPixelX(CWx, x1);
	y1 = canvas_Normalized_ToPixelY(CWy, y1);	
    canvas_rectangle = canvas_DrawRectangle(canvas, CWx, CWy, x0, y0, x1, y1);
FinFuncion
//----[ NORMALIZED_TO (-1 ... 1 ) ]---------------------------------------------------<#>
//(w*0.5)(1+a)  :: (h*0.5)(1-a)
Funcion pixel_index <- canvas_Normalized_ToPixelX(Cx, x)
	Definir pixel_index Como Numero;
	pixel_index = __private_Noramalized_toPixel(Cx, x, "x");
FinFuncion

Funcion pixel_index <- canvas_Normalized_ToPixelY(Cy, y_)
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
//----[ COMPLEX_DRAW ]--------------------------------------------------------------<#>
Funcion canvas_result <- canvas_drawCanvas(canvas, Cx, Cy, canvas_draw, Cx2, Cy2, x0, y0)
	Definir canvas_result, DrawX Como Texto;
	Definir i, slice_start, slice_end, x_draw, y_draw Como Numero;
	canvas_result = canvas;
	i = 0;
	x_draw = increment_step(Cx2, x0);
	Mientras i < Cy2 & y_draw < Cy Hacer
		y_draw = increment_step(y0, i);
		slice_start = canvas_getIndex(0, i, Cx2);
		slice_end 	= canvas_getIndex(0, increment(i), Cx2);
		DrawX		= string_substring(canvas_draw, slice_start, slice_end);
		canvas_result  = canvas_drawText(canvas_result, Cx, Cy, DrawX, x0, y_draw);
		i = increment(i);
	FinMientras
FinFuncion

Funcion canvas_Result <- canvas_DrawButton(canvas, Cx, Cy, text, x0, y0)
	Definir canvas_Result Como Texto;
	Definir x1, y1, length_Text, xt, yt Como Numero;
	canvas_Result = canvas;
	length_Text = string_Length(text);
	xt = increment(x0);
	yt = increment(y0);
	x1 = increment_step(xt, increment(length_Text));
	y1 = increment(yt);
	canvas_Result = canvas_DrawRectangle_whitPixels_Full(canvas_Result, Cx, Cy, "_","¯", "|", "|", x0, y0, x1, y1);
	canvas_Result = canvas_DrawText(canvas_Result, Cx, Cy, text, xt, yt);
	canvas_Result = canvas_DrawRectanglePoint(canvas_Result, Cx, Cy, " ", x0, y0, decrement(x1), y1);
FinFuncion

Funcion canvas_Result <- canvas_DrawRectanglePoint(canvas, Cx, Cy, pixel, x0, y0, x1, y1)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas;
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, x0, y0, pixel);
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, x0, y1, pixel);
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, x1, y0, pixel);
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, x1, y1, pixel);
FinFuncion

Funcion canvas_Result <- canvas_DrawPanel(canvas, Cx, Cy, x0, y0, width, height)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas;
	canvas_Result  = canvas_DrawLine_Vertical(canvas_Result, Cx, Cy, x0, y0, height);
	canvas_Result = canvas_DrawLine_Vertical(canvas_Result, Cx, Cy, decrement(width), y0, height);
	canvas_Result = canvas_DrawLine_Horizontal(canvas_Result, Cx, Cy, x0, y0, width);
	height = decrement(height);
	canvas_Result = canvas_DrawLine_Horizontal(canvas_Result, Cx, Cy, x0, height, width);
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, x0, y0, ".");
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, x0, height, "`");
	width = decrement(width);
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, width, y0, ".");
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, width, height, "`");
FinFuncion

Funcion canvas_Result <- canvas_DrawLine_Horizontal(canvas, Cx, Cy, x0, y0, width)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas_DrawLine_Horizontal_withPixel(canvas, Cx, Cy, x0, y0, width, "_");
FinFuncion

Funcion canvas_Result <- canvas_DrawLine_Horizontal_withPixel(canvas, Cx, Cy, x0, y0, width, pixel)
	Definir canvas_Result, horizontalLine_String Como Texto;
	canvas_Result = canvas;
	si width > 0 Entonces
		horizontalLine_String  = string_repeatText(Pixel, width);
		canvas_Result = canvas_DrawText(canvas_Result, Cx, Cy, horizontalLine_String, x0, y0);
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawLine_Vertical(canvas, Cx, Cy, x0, y0, height)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas_DrawLine_Vertical_withPixel(canvas, Cx, Cy, x0, y0, height,  "¦");
FinFuncion

Funcion canvas_Result <- canvas_DrawLine_Vertical_withPixel(canvas, Cx, Cy, x0, y0, height, pixel)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas;
	si height > 0 Entonces
		canvas_Result = canvas_DrawLine_whitPixel(canvas_Result, Cx, Cy, pixel, x0, y0, x0, increment_step(y0, height));
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawLine_Horizontal_Full(canvas, Cx, Cy, y0)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas_DrawLine_Horizontal(canvas, Cx, Cy, 0, y0, Cx);
FinFuncion

Funcion canvas_Result <- canvas_DrawLine_Vertical_Full(canvas, Cx, Cy, x0)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas_DrawLine_Vertical(canvas, Cx, Cy, x0, 0, Cy);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
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
///%%%%%[ SPRITE.................. ]%%%%%%%[   #SPR    ]%%%%%%%%%%%%%%%%%%
//----[ SPRITESTRING ]--------------------------------------------------------------<#>
Funcion spriteString_struct <- spriteString_new
	Definir spriteString_struct Como Texto;
	spriteString_struct = linearCollection_new(tComponent_TYPE_SPRITE_STRING(), TYPE_STRING());
	spriteString_struct = linearCollection_addLast(spriteString_struct, "0");
FinFuncion

Funcion sprite_string <- SpriteString_titleBar_color(title, width_titleBar, color_bar, color_title)
	Definir sprite_string, title_bar Como Texto;
	Definir width_titleBar_color Como Entero;
	title_bar = __private_window_getTitleBar_color(title, width_titleBar, color_bar, color_title);
	width_titleBar_color = __private_window_calcTitleBarColorLength(width_titleBar, color_bar, color_title);
	sprite_string = __private_SpriteString_titleBar_build(title_bar, width_titleBar_color );
FinFuncion

Funcion sprite_string <- SpriteString_titleBar(title, width_titleBar)
	Definir sprite_string, title_bar Como Texto;
	title_bar = __private_window_getTitleBar(title, width_titleBar);
	sprite_string = __private_SpriteString_titleBar_build(title_bar, width_titleBar);
FinFuncion

Funcion sprite_string <- __private_SpriteString_titleBar_build(title_bar, width_titleBar)
	Definir sprite_string Como Texto;
	sprite_string = spriteString_new();
	sprite_string = spriteSTring_addLine(sprite_string, string_substring(title_bar, 0, width_titleBar));
	sprite_string = spriteSTring_addLine(sprite_string, string_substring(title_bar, width_titleBar, (width_titleBar * 2)));
	sprite_string = spriteSTring_addLine(sprite_string, string_substring(title_bar, (width_titleBar * 2), (width_titleBar * 3)));
FinFuncion
//----[ CANVAS ]--------------------------------------------------------------------<#>
Funcion canvas_sprite <- SpriteString_toCanvas(spriteString_struct)
	Definir canvas_sprite Como Texto;
	Definir Cx, Cy Como Entero;
	Cx = spriteString_GetWidth(spriteString_struct);
	Cy = spriteString_getHeight(spriteString_struct);
	canvas_sprite = SpriteString_toCanvas_Size(spriteString_struct, Cx, Cy);
FinFuncion

Funcion canvas_sprite <- SpriteString_toCanvas_Size(spriteString_struct, Cx, Cy)
	Definir canvas_sprite, canvas_init Como Texto;
	canvas_init = canvas_new_WithPixel(Cx, Cy, " ");
	canvas_sprite = canvas_DrawSpriteString(canvas_init, Cx, Cy, spriteString_struct, 0, 0);
FinFuncion
//----[ GETTERS ]----------------------------------------------------<#>
Funcion length_MaxLine <- spriteString_GetWidth(spriteString_struct)
	Definir length_MaxLine Como Numero;
	length_MaxLine = string_ToNum(linearCollection_getFirst_ToString(spriteString_struct));
FinFuncion

Funcion sizeSprite <- spriteString_GetSize(spriteString_struct)
	Definir sizeSprite Como Numero;
	sizeSprite = decrement(linearCollection_getSize(spriteString_struct));
FinFuncion

Funcion height_lines <- spriteString_getHeight(spriteString_struct)
	Definir height_lines Como Numero;
	height_lines = spriteString_GetSize(spriteString_struct);
FinFuncion

Funcion spriteString_newChange <- spriteString_UpdateMaxWidth(spriteString_struct, line_String)
	Definir spriteString_newChange Como Texto;
	Definir line_length Como Numero;
	line_length = string_Length(line_String);
	spriteString_newChange = spriteString_struct;
	si spriteString_GetWidth(spriteString_newChange) < line_length Entonces
		spriteString_newChange = linearCollection_SetElement(spriteString_newChange, 0, num_ToString(line_length));
	FinSi
FinFuncion

Funcion is_valid <- spriteString_num_indexValidate(spriteString_struct, index_line)
    Definir is_valid Como Logico;
	is_valid = linearCollection_IndexIsValid(spriteString_struct, index_line);
FinFuncion
//----[ UTILITIES ]----------------------------------------------------<#>
Funcion isSpriteValid <- spriteString_isSpriteValid(spriteString_struct)
	Definir isSpriteValid Como Logico;
	isSpriteValid = string_isEquals(collection_getNameCollection(spriteString_struct), tComponent_TYPE_SPRITE_STRING());
FinFuncion

Funcion spriteString_newChange <- spriteString_modifyLine(spriteString_struct, index_line, part_modify, index_start)
    Definir spriteString_newChange Como Texto;
    Definir index_end Como Entero;
    index_end = increment_step(index_start, string_Length(part_modify));
    spriteString_newChange = __private_spriteString_modifyLine(spriteString_struct, index_line, part_modify, index_start, index_end);
FinFuncion

Funcion spriteString_newChange <- spriteString_modifyLine_strict(spriteString_struct, index_line, part_modify, index_start, index_end)
    Definir spriteString_newChange Como Texto;
    spriteString_newChange = __private_spriteString_modifyLine(spriteString_struct, index_line, part_modify, index_start, index_end);
FinFuncion

Funcion spriteString_newChange <- __private_spriteString_modifyLine(spriteString_struct, index_line, part_modify, index_start, index_end)
    Definir spriteString_newChange, line_String, line_result Como Texto;
    Definir length_line Como Entero;
	Definir indexLineIsValid, indexIsValid Como Logico;
	spriteString_newChange = spriteString_struct;
	indexIsValid = spriteString_num_indexValidate(spriteString_newChange, index_line);
    Si indexIsValid Entonces
		line_String = linearCollection_getElement(spriteString_newChange, index_line);
		length_line = string_Length(line_String);
		indexLineIsValid = num_indexValidate(length_line, index_start, length_line);
	SiNo
		indexLineIsValid = false();
        error_message_Function("modifyLine", "Invalid Index");
    FinSi
	si indexIsValid & !indexLineIsValid Entonces
		error_message_Function("modifyLine", "Invalid Index line");
	FinSi
	si indexLineIsValid Entonces
		index_end = math_min_int(index_end, length_line);
		part_modify = string_fit_toRange(part_modify, index_start, index_end);
		index_end = increment_step(index_start, string_Length(part_modify));
		line_result = string_delete(line_String, index_start, index_end);
		line_result = string_insert(line_result, part_modify, index_start);
		spriteString_newChange = spriteString_setLine(spriteString_newChange, index_line, line_result);
	FinSi
FinFuncion

Funcion spriteString_newChange <- spriteString_writeLine(spriteString_struct, index_line, part_modify, index_start)
    Definir spriteString_newChange, line_String, line_result Como Texto;
    Definir length_line Como Entero;
	Definir indexLineIsValid, indexIsValid Como Logico;
	index_line = increment(index_line);
	spriteString_newChange = spriteString_struct;
	indexIsValid = spriteString_num_indexValidate(spriteString_newChange, index_line);
    Si indexIsValid Entonces
		line_String = linearCollection_getElement(spriteString_newChange, index_line);
		length_line = string_Length(line_String);
		indexLineIsValid = num_indexValidate(length_line, index_start, length_line);
	SiNo
		indexLineIsValid = false();
        error_message_Function("modifyLine", "Invalid Index");
    FinSi
	si indexIsValid & !indexLineIsValid Entonces
		error_message_Function("modifyLine", "Invalid Index line");
	FinSi
	si indexLineIsValid Entonces
		line_result = string_insert(line_String, part_modify, index_start);
		spriteString_newChange = spriteString_setLine(spriteString_newChange, index_line, line_result);	
	FinSi
FinFuncion

Funcion spriteString_newChange <- spriteString_setLine(spriteString_struct, index_line, line_String)
	Definir spriteString_newChange Como Texto;
	spriteString_newChange = linearCollection_setElement(spriteString_struct, index_line, line_String);
	spriteString_newChange = spriteString_UpdateMaxWidth(spriteString_newChange, line_String);
FinFuncion

Funcion spriteString_newChange <- spriteString_addLine(spriteString_struct, line_String)
	Definir spriteString_newChange Como Texto;
	spriteString_newChange = linearCollection_addLast(spriteString_struct, line_String);
	spriteString_newChange = spriteString_UpdateMaxWidth(spriteString_newChange, line_String);
FinFuncion
//----[ DRAW_SPRITESTRING ]----------------------------------------------------------<#>
Funcion canvas_Sprite <- canvas_DrawSpriteString(canvas, Cx, Cy, spriteString_struct, x0, y0)
    Definir canvas_Sprite Como Texto;
    canvas_Sprite = __private_canvas_DrawspriteString_sprite_effect(canvas, Cx, Cy, spriteString_struct, x0, y0, "null", sprite_EFFECT_NONE());
FinFuncion

Funcion canvas_Sprite <- canvas_DrawspriteString_Cutout(canvas, Cx, Cy, spriteString_struct, x0, y0)
    Definir canvas_Sprite Como Texto;
    canvas_Sprite = __private_canvas_DrawspriteString_sprite_effect(canvas, Cx, Cy, spriteString_struct, x0, y0, "null", sprite_EFFECT_CUTOUT());
FinFuncion

Funcion canvas_Sprite <- canvas_DrawspriteString_Trimmed(canvas, Cx, Cy, spriteString_struct, symbol_Trimmed, x0, y0)
    Definir canvas_Sprite Como Texto;
    canvas_Sprite = __private_canvas_DrawspriteString_sprite_effect(canvas, Cx, Cy, spriteString_struct, x0, y0, symbol_Trimmed, sprite_EFFECT_TRIMMED());
FinFuncion

Funcion canvas_Sprite <- canvas_DrawspriteString_Cutout_FlipHorizontal(canvas, Cx, Cy, spriteString_struct, x0, y0)
    Definir canvas_Sprite Como Texto;
    canvas_Sprite = __private_canvas_DrawspriteString_sprite_effect(canvas, Cx, Cy, spriteString_struct, x0, y0, "null", sprite_EFFECT_FLIP_H());
FinFuncion

Funcion canvas_Sprite <- canvas_DrawspriteString_Cutout_FlipVertical(canvas, Cx, Cy, spriteString_struct, x0, y0)
    Definir canvas_Sprite Como Texto;
    canvas_Sprite = __private_canvas_DrawspriteString_sprite_effect(canvas, Cx, Cy, spriteString_struct, x0, y0, "null", sprite_EFFECT_FLIP_V());
FinFuncion
//----[ EFFECT ]----------------------------------------------------<#>
Funcion canvas_Sprite <- __private_canvas_DrawspriteString_sprite_effect(canvas, Cx, Cy, spriteString_struct, x0, y0, symbol_Trimmed, sprite_effect)
	Definir canvas_Sprite, sequential_lengths, sequential_data Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData, size_Sprite Como Numero;
	size_Sprite 	 = spriteString_getHeight(spriteString_struct);
	spriteString_struct = linearCollection_DeleteFirst(spriteString_struct);
	index_Data 		 = increment(string_indexOf(spriteString_struct, symbol_dataArea()));
	index_ExtraData  = string_LastindexOf(spriteString_struct, symbol_ExtraData());
	index_MetaData   = string_LastindexOf_fromIndex(spriteString_struct, symbol_metaData(), index_ExtraData);
	sequential_data		 = string_substring(spriteString_struct, index_Data, index_MetaData);
	sequential_lengths  = string_substring(spriteString_struct, increment(index_MetaData), index_ExtraData);
	canvas_Sprite 	 = __private_Canvas_RenderSpriteString(canvas, Cx, Cy, sequential_data, sequential_lengths,  size_Sprite, symbol_Trimmed, x0, y0, sprite_effect);
FinFuncion

Funcion spriteString_display(spriteString_struct)
	spriteString_display_monocolor(spriteString_struct, "");
FinFuncion

Funcion spriteString_display_monocolor(spriteString_struct, color)
    Definir sequential_lengths, sequential_data, sprite_Stripped Como Texto;
    Definir index_Data, index_MetaData, index_ExtraData, size_Sprite Como Numero;
    size_Sprite = spriteString_getHeight(spriteString_struct);
    sprite_Stripped = linearCollection_DeleteFirst(spriteString_struct);
    index_Data      = increment(string_indexOf(sprite_Stripped, symbol_dataArea()));
    index_ExtraData = string_LastindexOf(sprite_Stripped, symbol_ExtraData());
    index_MetaData  = string_LastindexOf_fromIndex(sprite_Stripped, symbol_metaData(), index_ExtraData);
    sequential_data       = string_substring(sprite_Stripped, index_Data, index_MetaData);
    sequential_lengths = string_substring(sprite_Stripped, increment(index_MetaData), index_ExtraData);
	managerData_printer_color(sequential_data, sequential_lengths, true(), color);
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
//----[ RENDER ]----------------------------------------------------<#>
Funcion canvas_Sprite <- __private_Canvas_RenderSpriteString(canvas, Cx, Cy, sequential_data, sequential_lengths, size_Sprite, symbol_Trimmed, x0, y0, sprite_effect)
	Definir canvas_Sprite, num_carry, Char_Current, current_data, array_sprite Como Texto;
	Definir i, num_range, num_range_inc, length_value, length_summations, count_line Como Numero;
	Definir IsNumber Como Logico;
	Dimension array_sprite[size_Sprite];
	num_carry 	    = "";
	num_range		= 0;	
	i				= 0;
	count_line   	= 0;
	length_summations = string_Length(sequential_lengths);
	canvas_Sprite = canvas;
	Mientras i <= length_summations & size_Sprite <= Cy Hacer
		Char_Current = char_At(sequential_lengths, i);
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(num_carry, Char_Current);
		FinSi
		Si !IsNumber & !string_isEmpty(num_carry) | number_isEquals(i, length_summations) Entonces
			length_value = string_ToNum(num_carry);
			num_range_inc = increment_step(num_range, length_value);
			current_data  = string_substring(sequential_data, num_range, num_range_inc);
			array_sprite[count_line] = current_data;
			count_line = increment(count_line);
			num_carry       = "";// clear
			num_range       = num_range_inc;
		FinSi
		i = increment(i);
	FinMientras
	canvas_Sprite = Canvas_ApplyRenderEffect(canvas, Cx, Cy, x0, y0, array_sprite, size_Sprite, symbol_Trimmed, sprite_effect);
FinFuncion
//----[ DRAW_SPRITE ]----------------------------------------------------<#>
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
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
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
///%%%%%[ TUI..................... ]%%%%%%%[   #TUI    ]%%%%%%%%%%%%%%%%%%
Funcion tui_frame <- tui_new
	Definir tui_frame Como Texto;
	tui_frame = tui_new_withSize(20, 10);
FinFuncion

Funcion tui_frame <- tui_new_withSize(Wx, Wy)
	Definir tui_frame Como Texto;
	tui_frame = tui_new_withSizeTitle(Wx, Wy, "window");
FinFuncion

Funcion tui_frame <- tui_new_withSizeTitle(Wx, Wy, title)
	Definir tui_frame Como Texto;
	tui_frame = tui_new_withConfig(Wx, Wy, title, COLOR_GREEN());
FinFuncion

Funcion tui_frame <- tui_new_withConfig(Wx,Wy, title, color_window)
	Definir tui_frame, stores_Tcomponents, Tposition, input_Tcomponents Como Texto;
	tui_frame  = linearCollection_new(tui_TYPE_TFRAME(), TYPE_STRING());
	stores_Tcomponents = collectionStorageCells_new(tui_TYPE_TSTORE(), TYPE_STRING(), TYPE_STRING());
	input_Tcomponents  = collectionCells_new(tui_TYPE_TINPUT(), TYPE_STRING(), 1);
	Tposition   = tui_ParsePointXY_ToString(Wx, Wy);
	tui_frame  = linearCollection_addFirst(tui_frame, stores_Tcomponents);//index:4
	tui_frame  = linearCollection_addFirst(tui_frame, color_window);//index:3
	tui_frame  = linearCollection_addFirst(tui_frame, Tposition);//index:2
	tui_frame  = linearCollection_addFirst(tui_frame, title);//index:1
	tui_frame  = linearCollection_addFirst(tui_frame, input_Tcomponents);//index:0
FinFuncion

Funcion sandbox_development
	Definir tui Como Texto;
	Definir Cx, Cy Como Entero;
	Cx = 31;Cy = 7;
    tui = tui_new_withConfig(Cx, Cy, "terminal_window", COLOR_WHITE());
	tui = tui_addTComponent_newLabel(tui, "label_hello", "hello world", 10, 3);
	tui_display(tui);
FinFuncion
//----[ DISPLAY ]----------------------------------------------------<#>
Funcion tui_display(tui_frame)
	Definir Wx, Wy, index_separator Como Numero;
	Definir Wsize, window_view, title, color Como Texto;
	Si tui_IsInterface_Valid(tui_frame) Entonces 
		Wsize = tui_getSize(tui_frame);
		index_separator = string_indexOf(Wsize, symbol_Separator_Simple());
		Wx = string_ToNum(string_substring(Wsize, 0, index_separator));
		Wy = string_ToNum(string_substring_from(Wsize, increment(index_separator)));
		title = tui_getTitle(tui_frame);
		color = tui_getColor(tui_frame);
		canvas_displayWindow_monoColor(tui_ToCanvas(tui_frame), Wx,Wy, title, color);
	SiNo
		error_message_Function("tui_Display(tui_frame)","Its not a TUI interface");
	FinSi
FinFuncion
//----[ GETTERS ]----------------------------------------------------<#>
Funcion tIndex <- tui_getIdStore
	Definir tIndex Como Numero;
	tIndex = 4;
FinFuncion

Funcion tIndex <- tui_getIdColor
	Definir tIndex Como Numero;
	tIndex = 3;
FinFuncion

Funcion tIndex <- tui_getIdSize
	Definir tIndex Como Numero;
	tIndex = 2;
FinFuncion

Funcion tIndex <- tui_getIdTitle
	Definir tIndex Como Numero;
	tIndex = 1;
FinFuncion

Funcion tIndex <- tui_getIdInput
	Definir tIndex Como Numero;
	tIndex = 0;
FinFuncion

Funcion TProperty <- tui_getTitle(tui_frame)
	Definir TProperty Como Texto;//id_input
	TProperty = linearCollection_getElement_toString(tui_frame, tui_getIdTitle());
FinFuncion

Funcion TProperty <- tui_getSize(tui_frame) 
	Definir TProperty Como Texto;
	TProperty = linearCollection_getElement_toString(tui_frame, tui_getIdSize());
FinFuncion

Funcion TProperty <- tui_getColor(tui_frame)
	Definir TProperty Como Texto;
	TProperty = linearCollection_getElement_toString(tui_frame,  tui_getIdColor());
FinFuncion

Funcion TProperty <- tui_getInput(tui_frame)
	Definir TProperty Como Texto;//id_store
	TProperty = linearCollection_getFirst_ToString(tui_frame);
FinFuncion

Funcion TProperty <- tui_getStore(tui_frame)
	Definir TProperty Como Texto;
	TProperty = linearCollection_getLast_ToString(tui_frame);
FinFuncion

Funcion tComponent_result <- tui_getStore_Tcomponent(tui_frame, name_tcomponent)
	Definir tComponent_result, store_tcomponent Como Texto;	
	store_tcomponent  = tui_getStore(tui_frame);
	tComponent_result = tui_getStore_tComponent_force(store_tcomponent, name_tcomponent);
FinFuncion

Funcion tComponent_result <- tui_getStore_tComponent_force(store_tcomponent, name_tcomponent)
	Definir tComponent_result Como Texto;
	tComponent_result = collectionStorageCells_getData_byCell_toString(store_tcomponent, name_tcomponent);
FinFuncion

Funcion inputs_TUI <- tui_getInputOptions(tui_frame)
	Definir inputs_TUI, input_inner Como Texto;
	input_inner = tui_getInput(tui_frame);
	inputs_TUI = collectionStorageCells_getSeparateString(input_inner);
FinFuncion

Funcion user_input <- tui_GetUser_Input_message(tui_frame, message, TYPE)
	Si tui_IsInterface_Valid(tui_frame) Entonces 
		Segun TYPE Hacer
			caso TYPE_BOOLEAN(): Definir user_input Como Logico;
			caso TYPE_INT(): Definir user_input Como Numero;
			caso TYPE_FLOAT(): Definir user_input Como Real;
			De Otro Modo: Definir user_input Como Texto;
		FinSegun
		user_input = user_input_options_separator_message(tui_getInputOptions(tui_frame), symbol_Separator(), message, TYPE);
	SiNo
		error_message_Function("tui_GetUser_Input_message(tui_frame, message, TYPE)","Its not a TUI interface");
		user_input = value_getNullType(TYPE);
	FinSi
FinFuncion

Funcion user_input <- tui_GetUser_Input(tui_frame, TYPE)
	Si tui_IsInterface_Valid(tui_frame) Entonces 
		Segun TYPE Hacer
			caso TYPE_BOOLEAN(): Definir user_input Como Logico;
			caso TYPE_INT(): Definir user_input Como Numero;
			caso TYPE_FLOAT(): Definir user_input Como Real;
			De Otro Modo: Definir user_input Como Texto;
		FinSegun
		user_input = user_input_options_separator(tui_getInputOptions(tui_frame), symbol_Separator(), TYPE);
	SiNo
		error_message_Function("tui_GetUser_Input(tui_frame, TYPE)","Its not a TUI interface");
		user_input = value_getNullType(TYPE);
	FinSi
FinFuncion
//----[ SETTERS ]----------------------------------------------------<#>
Funcion tui_result <- tui_setSize(tui_frame, Wx, Wy) 
	Definir tui_result, size_string Como Texto;
	size_string = tui_ParsePointXY_ToString(Wx, Wy);
	tui_result  = __private_tui_set(tui_frame,  tui_getIdSize(), size_string);
FinFuncion

Funcion tui_result <- tui_setTitle(tui_frame, title)
	Definir tui_result Como Texto;
	tui_result = __private_tui_set(tui_frame,  tui_getIdTitle(), title);
FinFuncion

Funcion tui_result <- tui_setColor(tui_frame, color)
	Definir tui_result Como Texto;
	tui_result = __private_tui_set(tui_frame,  tui_getIdColor(), color);
FinFuncion

Funcion tui_result <- __private_tui_setStore(tui_frame, store_collection)
	Definir tui_result Como Texto;
	tui_result = __private_tui_set(tui_frame,  tui_getIdStore(), store_collection);
FinFuncion

Funcion tui_result <- __private_tui_setInput(tui_frame, input_collection)
	Definir tui_result Como Texto;
	tui_result = __private_tui_set(tui_frame,  tui_getIdInput(), setInput);
FinFuncion

Funcion tui_result <- __private_tui_set(tui_frame, id_set, value_string)
	Definir tui_result Como Texto;
	tui_result = linearCollection_SetElement_ToString(tui_frame, id_set, value_string);
FinFuncion
//----[ SETTERS_TCOMPONENT ]-----------------------------------------<#>
Funcion tui_result <- tui_tComponent_setTProperty_text(tui_frame, name_tcomponent, value_string) 
	Definir tui_result Como Texto;
	tui_result =  tui_tComponent_setTProperty(tui_frame, name_tcomponent, TProperty_text(), value_string);
FinFuncion

Funcion tui_result <- tui_tComponent_setTProperty_input(tui_frame, name_tcomponent, value_string) 
	Definir tui_result Como Texto;
	tui_result =  tui_tComponent_setTProperty(tui_frame, name_tcomponent, TProperty_input(), value_string);
FinFuncion

Funcion tui_result <- tui_tComponent_setTProperty_value(tui_frame, name_tcomponent, value, TYPE) 
	Definir tui_result Como Texto;
	tui_result =  tui_tComponent_setTProperty_value_ByString(tui_frame, name_tcomponent, value_TypeToString(value, TYPE));
FinFuncion

Funcion tui_result <- tui_tComponent_setTProperty_value_ByString(tui_frame, name_tcomponent, value_string) 
	Definir tui_result Como Texto;
	tui_result =  tui_tComponent_setTProperty(tui_frame, name_tcomponent, TProperty_value(), value_string);
FinFuncion

Funcion tui_result <- tui_tComponent_setTProperty_position_ByString(tui_frame, name_tcomponent, value_string) 
	Definir tui_result Como Texto;
	tui_result =  tui_tComponent_setTProperty(tui_frame, name_tcomponent, TProperty_position(), value_string);
FinFuncion

Funcion tui_result <- tui_tComponent_setTProperty_position(tui_frame, name_tcomponent, x0, y0) 
	Definir tui_result, point_String Como Texto;
	point_String = tui_ParsePointXY_ToString(x0, y0);
	tui_result =  tui_tComponent_setTProperty(tui_frame, name_tcomponent, TProperty_position(), point_String);
FinFuncion

Funcion tui_result <- tui_tComponent_setTProperty_position_TwoPoints(tui_frame, name_tcomponent, x0, y0, x1, y1) 
	Definir tui_result, points_String Como Texto;
	points_String = tui_ParseTwoPointsXY_ToString(x0, y0, x1, y1);
	tui_result =  tui_tComponent_setTProperty(tui_frame, name_tcomponent, TProperty_position(), points_String);
FinFuncion

Funcion tui_result <- tui_tComponent_setTProperty(tui_frame, name_tcomponent, TProperty_simpleName, value_string) 
	Definir tui_result, tui_store, tcomponent_target, tcomponent_result Como Texto;
	tui_store = tui_getStore(tui_frame);
	tcomponent_target = collectionStorageCells_getData_byCell_toString(tui_store, name_tcomponent);
	Segun TProperty_simpleName Hacer
		Caso TProperty_input():
			tcomponent_result = tComponent_setTProperty_input(tcomponent_target, value_string);
		Caso TProperty_position():
			tcomponent_result = tComponent_setTProperty_position_ByString(tcomponent_target, value_string);
		Caso TProperty_text():
			tcomponent_result = tComponent_setTProperty_text(tcomponent_target, value_string);
		Caso TProperty_value():
			tcomponent_result = tComponent_setTProperty_value_ByString(tcomponent_target, value_string);
		De Otro Modo:
			tcomponent_result = tComponent_setTProperty(tcomponent_target, TProperty_Component, value_string);
	FinSegun
	tui_result = tui_store_addTComponent_force(tui_frame, tui_store, name_tcomponent, tcomponent_result);
FinFuncion
//----[ ADD ]------------------------------------------------------------------------<#>
Funcion tui_input <- tui_input_add(tui_frame, input_string)
	Definir tui_input, input_inner Como Texto;
	input_inner = tui_getInput(tui_frame);
	input_inner = collectionCells_setterDynamic_add(input_inner, input_string);
	tui_input   = __private_tui_setInput(tui_frame, input_inner);
FinFuncion

Funcion tui_result <- tui_store_addTComponent(tui_frame, name_tcomponent, tcomponent)
	Definir tui_result, tui_store Como Texto;
	tui_store  = tui_getStore(tui_frame);
	tui_result = tui_store_addTComponent_force(tui_frame, tui_store, name_tcomponent, tcomponent);
FinFuncion

Funcion tui_result <- tui_store_addTComponent_force(tui_frame, tui_store, name_tcomponent, tcomponent)
	Definir tui_result Como Texto;
	tui_store  = collectionStorageCells_add_setter_byString(tui_store, name_tcomponent, tcomponent);
	tui_result = __private_tui_setStore(tui_frame, tui_store);
FinFuncion

Funcion tui_result <- tui_store_addTComponent_input(tui_frame, name_tcomponent, tComponent_target)
	Definir tui_result, tui_input Como Texto;
	tui_input = tui_getInput(tui_frame);
	tui_result = tui_store_addTComponent_input_force(tui_frame, name_tcomponent, tComponent_target, tui_input);
FinFuncion

Funcion tui_result <- tui_store_addTComponent_input_force(tui_frame, name_tcomponent, tComponent_target, tui_input)
	Definir tui_result, input_Tcomponent Como Texto;
	input_Tcomponent = tComponent_getTProperty_input(tComponent_target);
	si collectionStorage_Exist_ByString(tui_input, input_Tcomponent) Entonces
		tui_result = tui_frame;
		error_message_Function("tui_store_addTComponent_input_force(tui, name, tcomponent)","exist input");
	SiNo
		tui_result = tui_store_addTComponent(tui_frame, name_tcomponent, tComponent_target);
		tui_result = tui_input_add(tui_result, input_Tcomponent);
	FinSi
FinFuncion
//----[ GETTERS_TCOMPONENT ]-----------------------------------------<#>
Funcion tui_result <- tui_addTComponent(tui_frame, name_tcomponent, tComponent_target)
	Definir tui_result Como Texto;
	si tComponent_IsTcomponent(tComponent_target) Entonces
		si tComponent_HasInput(tComponent_target) Entonces
			tui_result = tui_store_addTComponent_input(tui_frame, name_tcomponent, tComponent_target);
		SiNo
			tui_result = tui_store_addTComponent(tui_frame, name_tcomponent, tComponent_target);
		FinSi
	SiNo
		tui_result = tui_frame;
		error_message_Function("tui_addTComponent","Its not a TUI interface");
	FinSi
FinFuncion

Funcion tui_newTcomponent <- tui_addTComponent_newButton(tui_frame, name_tcomponent, text, input_string, x0, y0)
	Definir tui_newTcomponent, Tbutton Como Texto;
	tui_newTcomponent = tui_frame;
	Si tui_IsInterface_Valid(tui_frame) Entonces
		Tbutton = tComponent_newButton(text, input_string, x0, y0);
		tui_newTcomponent = tui_store_addTComponent_input(tui_newTcomponent, name_tcomponent, Tbutton);
	SiNo
		error_message_Function("tui_addTComponent_newButton()", "Its not a TUI interface");
	FinSi
FinFuncion

Funcion tui_newTcomponent <- tui_addTComponent_newLabel(tui_frame, name_tcomponent, text, x0, y0)
	Definir tui_newTcomponent, Tlabel Como Texto;
	tui_newTcomponent = tui_frame;
	Si tui_IsInterface_Valid(tui_frame) Entonces
		Tlabel = tComponent_newLabel(text, x0, y0);
		tui_newTcomponent = tui_addTComponent(tui_newTcomponent, name_tcomponent, Tlabel);
	SiNo
		error_message_Function("tui_addTComponent_newLabel()", "Its not a TUI interface");
	FinSi
FinFuncion

Funcion tui_newTcomponent <- tui_addTComponent_newHorizontalRuler(tui_frame, name_tcomponent, x0, y0, value)
	Definir tui_newTcomponent, THorizontal Como Texto;
	tui_newTcomponent = tui_frame;
	Si tui_IsInterface_Valid(tui_frame) Entonces
		THorizontal= tComponent_newHorizontalRuler(x0, y0, value);
		tui_newTcomponent = tui_addTComponent(tui_newTcomponent, name_tcomponent, THorizontal);
	SiNo
		error_message_Function("tui_addTComponent_newHorizontalRuler()", "Its not a TUI interface");
	FinSi
FinFuncion

Funcion tui_newTcomponent <- tui_addTComponent_newVerticalRuler(tui_frame, name_tcomponent, x0, y0, value)
	Definir tui_newTcomponent, TVertical Como Texto;
	tui_newTcomponent = tui_frame;
	Si tui_IsInterface_Valid(tui_frame) Entonces
		TVertical = tComponent_newVerticalRuler(x0, y0, value);
		tui_newTcomponent = tui_addTComponent(tui_newTcomponent, name_tcomponent, TVertical);
	SiNo
		error_message_Function("tui_addTComponent_newVerticalRuler()", "Its not a TUI interface");
	FinSi
FinFuncion

Funcion tui_newTcomponent <- tui_addTComponent_newPanel(tui_frame, name_tcomponent, x0, y0, x1, y1)
	Definir tui_newTcomponent, TPanel Como Texto;
	tui_newTcomponent = tui_frame;
	Si tui_IsInterface_Valid(tui_frame) Entonces
		TPanel = tComponent_newPanel(x0, y0, x1, y1);
		tui_newTcomponent = tui_addTComponent(tui_newTcomponent, name_tcomponent, TPanel);
	SiNo
		error_message_Function("tui_addTComponent_newPanel()", "Its not a TUI interface");
	FinSi
FinFuncion

Funcion tui_newTcomponent <- tui_addTComponent_newSpriteString(tui_frame, name_tcomponent, spriteString_struct, sprite_Effect, x0, y0)
	Definir tui_newTcomponent, TSprite Como Texto;
	tui_newTcomponent = tui_frame;
	Si tui_IsInterface_Valid(tui_frame) Entonces
		TSprite = __private_tComponent_ForcerdnewSpriteString(spriteString_struct, sprite_effect, x0, y0);
		tui_newTcomponent = tui_addTComponent(tui_newTcomponent, name_tcomponent, TSprite);
	SiNo
		error_message_Function("tui_addTComponent_newPanel()", "Its not a TUI interface");
	FinSi
FinFuncion
//----[ tui_TOCANVAS ]----------------------------------------------------<#>
Funcion new_canvas <- tui_ToCanvas(tui_frame)
	Definir new_canvas, Wsize, store_tcomponents, canvas Como Texto;
	Definir Wx, Wy, index_separator Como Numero;
	Si tui_IsInterface_Valid(tui_frame) Entonces 
		Wsize = tui_getSize(tui_frame);
		index_separator = string_indexOf(Wsize, symbol_Separator_Simple());
		Wx = string_ToNum(string_substring(Wsize, 0, index_separator));
		Wy = string_ToNum(string_substring_from(Wsize, increment(index_separator)));
		store_tcomponents = tui_getStore(tui_frame);
		canvas = canvas_new_WithPixel(Wx,Wy, " ");
		new_canvas = __private_canvas_DrawlinearCollection_Tcomponent(canvas, Wx, Wy, store_tcomponents);
	SiNo
		error_message_Function("tui_Tocanvas(tui_frame)","Its not a TUI interface");
	FinSi
FinFuncion

Funcion new_canvas <- __private_canvas_DrawlinearCollection_Tcomponent(canvas, Cx, Cy, struct_storage)
	Definir new_canvas, sequential_data, sequential_lengths Como Texto;
	Definir index_lengthArea, index_dataArea, index_endData Como Entero;
	Definir count_size, cell_length, right_startData Como Entero;
	index_endData = string_lastIndexOf(struct_storage, symbol_metaData());
	index_lengthArea    = increment(string_indexOf(struct_storage, symbol_lengthArea()));
	index_dataArea      = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
	count_size          = collectionCells_getSize(struct_storage);
	cell_length         = collectionStorageCells_getCellLength(struct_storage);
	right_startData     = decrement_step(index_endData, count_size * cell_length);
	sequential_lengths  = string_substring(struct_storage, index_lengthArea, index_dataArea);
	sequential_data     = string_substring(struct_storage, increment(index_dataArea), right_startData);
	new_canvas = __private_toCanvas_bySequential_data(canvas, Cx, Cy, sequential_data, sequential_lengths);
FinFuncion

Funcion new_canvas <- __private_toCanvas_bySequential_data(canvas, Cx, Cy, sequential_data, sequential_lengths)
	Definir new_canvas, num_carry, Char_Current, data_Current Como Texto;
	Definir i, index_Tcomponent, index_tComponent_Dec, length_value Como Numero;
	Definir length_Stringsummations Como Numero;
	Definir IsNumber Como Logico;
	num_carry 	     = "";
	i				 = 0;
	length_Stringsummations  = string_Length(sequential_lengths);
	index_Tcomponent	    = string_Length(sequential_data);
	new_canvas = canvas;
	si string_Length(sequential_data) < 1 Entonces
		i = increment(length_Stringsummations);
	FinSi
	Mientras i <= length_Stringsummations Hacer
		Char_Current = char_At(sequential_lengths, i);
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(num_carry, Char_Current);
		FinSi
		Si !IsNumber & !string_isEmpty(num_carry) | number_isEquals(i, length_Stringsummations) Entonces
			length_value = string_ToNum(num_carry);
			si length_value > 0 Entonces
				index_tComponent_Dec = decrement_step(index_Tcomponent, length_value);
				data_Current 	     = string_substring(sequential_data, index_tComponent_Dec, index_Tcomponent);
				new_canvas  		 = canvas_DrawTComponent(new_canvas, Cx, Cy, data_Current);
				index_Tcomponent     = index_tComponent_Dec;
			SiNo
				error_message_Function("__private_toCanvas_bySequential_data()","size tcomponent length < 1");
			FinSi
			num_carry      		 = "";// clear
		FinSi
		i = increment(i);
	FinMientras
FinFuncion
//----[ DELETE ]---------------------------------------------------------------------<#>
Funcion tui_result <- tui_store_deleteTComponent(tui_frame, name_tcomponent) 
	Definir tui_result, store_tcomponents Como Texto;
	store_tcomponents = tui_getStore(tui_frame);
	tui_result        = tui_store_deleteTComponent_force(tui_frame, store_tcomponents, name_tcomponent);
FinFuncion

Funcion tui_result <- tui_store_deleteTComponent_force(tui_frame, store_tcomponents, name_tcomponent) 
	Definir tui_result, store_result Como Texto;
	store_result = collectionStorageCells_delete_byString(store_tcomponents, name_tcomponent);
	tui_result   = __private_tui_setStore(tui_frame, store_result);
FinFuncion

Funcion tui_result <- tui_input_delete(tui_frame, input_target)
	Definir tui_result, tui_input Como Texto;
	tui_input  = tui_getInput(tui_frame);
	tui_result = tui_input_delete_force(tui_frame, tui_input, input_target);
FinFuncion

Funcion tui_result <- tui_input_delete_force(tui_frame, input_tui, input_target) 
	Definir tui_result, tui_input_result Como Texto;
	tui_input_result = collectionCells_setter_delete_byString(input_tui, input_target);
	tui_result       = __private_tui_setInput(tui_result, tui_input_result);
FinFuncion

Funcion tui_result <- tui_store_deleteTComponent_input(tui_frame, name_tcomponent) 
	Definir tui_result, store_tcomponents Como Texto;
	store_tcomponents = tui_getStore(tui_frame);
	tui_result        = tui_store_deleteTComponent_input_force(tui_frame, store_tcomponents, name_tcomponent);
FinFuncion

Funcion tui_result <- tui_store_deleteTComponent_input_force(tui_frame, store_tcomponents, name_tcomponent) 
	Definir tui_result, tui_input, tComponent_target, tComponent_input Como Texto;
	tComponent_target = tui_getStore_tComponent_force(store_tcomponent, name_tcomponent);
	tComponent_input  = tComponent_getTProperty_input(tComponent_target);
	tui_result        = tui_input_delete(tui_frame, tComponent_input);
	tui_result        = tui_store_deleteTComponent_force(tui_result, store_tcomponents, name_tcomponent);
FinFuncion

Funcion tui_result <- tui_deleteTcomponent(tui_frame, name_tcomponent) 
	Definir tui_result, store_tcomponents, tComponent_target Como Texto;
	store_tcomponents = tui_getStore(tui_frame);
	tComponent_target = tui_getStore_tComponent_force(store_tcomponents, name_tcomponent);
	si tComponent_IsTcomponent(tComponent_target) Entonces
		si tComponent_HasInput(tComponent_target) Entonces
			tui_result = tui_store_deleteTComponent_force(tui_frame, store_tcomponents, name_tcomponent);
		SiNo
			tui_result = tui_store_deleteTComponent_force(tui_frame, store_tcomponents, name_tcomponent);
		FinSi
	SiNo
		tui_result = tui_frame;
		error_message_Function("tui_addTComponent","Its not a Tcomponent valid");
	FinSi	
FinFuncion
//----[ BOOLEANS ]----------------------------------------------------<#>
Funcion Exist_input <- tui_Input_Exist(tui_frame, input_string)
	Definir Exist_input, tui_input Como Logico;
	tui_input = tui_getInput(tui_frame);
	Exist_input = tui_Input_Exist_force(tui_frame, tui_input, input_string);
FinFuncion

Funcion Exist_input <- tui_Input_Exist_force(tui_frame, tui_input, input_string)
	Definir Exist_input, input_inner Como Logico;
	input_inner = tui_getInput(tui_frame);
	Exist_input = collectionCells_setter_constains(input_inner, input_string);
FinFuncion

Funcion isTUI <- tui_IsInterface_Valid(interface_string)
	Definir isTUI Como Logico;
	isTUI = string_isEquals(collection_getNameCollection(interface_string), tui_TYPE_TFRAME());
FinFuncion
//----[ PARSE_POINT ]----------------------------------------------------<#>
Funcion tComponent_Point <- tui_ParsePointXY_ToString(x0, y0)
	Definir tComponent_Point Como Texto;	
	tComponent_Point = string_append_withSeparator(num_ToString(x0), num_ToString(y0), symbol_Separator_Simple());
FinFuncion

Funcion tComponent_Point_Full <- tui_ParseTwoPointsXY_ToString(x0, y0, x1, y1)
	Definir tComponent_Point, tComponent_Point2, tComponent_Point_Full Como Texto;
	tComponent_Point = tui_ParsePointXY_ToString(x0, y0);
	tComponent_Point2 = tui_ParsePointXY_ToString(x1, y1);
	tComponent_Point_Full = string_append_withSeparator(tComponent_Point, tComponent_Point2, symbol_Separator());
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion TYPE <- tui_TYPE_TFRAME
	Definir TYPE Como Texto;
	TYPE = "TUI";
FinFuncion

Funcion TYPE <- tui_TYPE_TSTORE
	Definir TYPE Como Texto;
	TYPE = "[ tStore ]";
FinFuncion

Funcion TYPE <- tui_TYPE_TINPUT
	Definir TYPE Como Texto;
	TYPE = "[ tInput ]";
FinFuncion

Funcion TYPE <- tui_TYPE_TCOMPONENT
	Definir TYPE Como Texto;
	TYPE = "tComponent";
FinFuncion
///%%%%%[ TCOMPONENT.............. ]%%%%%%%[   #TCO    ]%%%%%%%%%%%%%%%%%%
Funcion tComponent_Build <- tComponent_new(simple_name, x0, y0)
	Definir tComponent_Build, tComponent_position Como Texto;
	tComponent_position = tui_ParsePointXY_ToString(x0, y0);
	tComponent_Build = collectionStorageCells_new(tui_TYPE_TCOMPONENT(), TYPE_STRING(), TYPE_STRING());
	tComponent_Build = collectionStorageCells_add_byString(tComponent_Build , TProperty_position(), tComponent_position);
	tComponent_Build = collectionStorageCells_add_byString(tComponent_Build , TProperty_simpleName(), simple_name);
FinFuncion
//----[ ADD_PROPERTY ]--------------------------------------------------------------<#>
Funcion tComponent_Build <- tComponent_addTPropertyInput(tcomponent, input)
	Definir tComponent_Build Como Texto;
	tComponent_Build = tComponent_addTProperty(tcomponent, TProperty_input(), input);
FinFuncion

Funcion tComponent_Build <- tComponent_addTPropertyText(tcomponent, text)
	Definir tComponent_Build Como Texto;
    tComponent_Build = tComponent_addTProperty(tcomponent, TProperty_text(), text);
FinFuncion

Funcion tComponent_Build <- tComponent_addTPropertyValue(tcomponent, value)
	Definir tComponent_Build Como Texto;
	tComponent_Build = tComponent_addTProperty(tcomponent, TProperty_value(), value);
FinFuncion

Funcion tComponent_Build <- tComponent_addTProperty(tcomponent, TProperty, value)
	Definir tComponent_Build Como Texto;
    tComponent_Build = collectionStorageCells_add_byString(tcomponent, TProperty, value);
FinFuncion
//----[ BOOLEANS ]----------------------------------------------------<#>
Funcion isTUI <- tComponent_IsTcomponent(interface_string)
	Definir isTUI Como Logico;
	isTUI = string_isEquals(collection_getNameCollection(interface_string), tui_TYPE_TCOMPONENT());
FinFuncion

Funcion isTUI <- tComponent_matchSimpleName(tComponent_target, simpleName_Tcomponent)
	Definir isTUI Como Logico;
	isTUI = string_isEquals(tComponent_getTProperty_simpleName(tComponent_target), simpleName_Tcomponent);
FinFuncion

Funcion THasInput <- tComponent_HasInput(tcomponent)
	Definir THasInput Como Logico;
	THasInput = collectionStorageCells_constainsCell(tcomponent, TProperty_input());
FinFuncion
//----[ GETTERS ]----------------------------------------------------<#>
Funcion TProperty <- tComponent_getTProperty_position(tComponent_target)
	Definir TProperty Como Texto;
	TProperty = tComponent_getTProperty(tComponent_target, TProperty_position());
FinFuncion

Funcion TProperty <- tComponent_getTProperty_simpleName(tComponent_target)
	Definir TProperty Como Texto;
	TProperty = tComponent_getTProperty(tComponent_target, TProperty_simpleName());
FinFuncion

Funcion TProperty <- tComponent_getTProperty_value(tComponent_target)
	Definir TProperty Como Texto;
	TProperty = tComponent_getTProperty(tComponent_target, TProperty_value());
FinFuncion

Funcion TProperty <- tComponent_getTProperty_input(tComponent_target)
	Definir TProperty Como Texto;
	TProperty = tComponent_getTProperty(tComponent_target, TProperty_input());
FinFuncion

Funcion TProperty <- tComponent_getTProperty_text(tComponent_target)
	Definir TProperty Como Texto;
	TProperty = tComponent_getTProperty(tComponent_target, TProperty_text());
FinFuncion

Funcion TProperty <- tComponent_getTProperty(tComponent_target, type_TProperty)
	Definir TProperty Como Texto;
	TProperty = collectionStorageCells_getData_byCell_toString(tComponent_target, type_TProperty);
FinFuncion
//----[ SETTERS ]----------------------------------------------------<#>
Funcion new_TComponent <- tComponent_setTProperty(Tcomponent, TProperty_Component, value_string) 
	Definir new_TComponent Como Texto;
	new_TComponent = collectionStorageCells_add_setter_byString(Tcomponent, TProperty_Component, value_string);
FinFuncion

Funcion new_TComponent <- tComponent_setTProperty_text(Tcomponent, value_string) 
	Definir new_TComponent Como Texto;
	new_TComponent = tComponent_setTProperty(Tcomponent, TProperty_text(), value_string);
FinFuncion

Funcion new_TComponent <- tComponent_setTProperty_input(Tcomponent, value_string) 
	Definir new_TComponent Como Texto;
	new_TComponent = tComponent_setTProperty(Tcomponent, TProperty_input(), value_string);
FinFuncion

Funcion new_TComponent <- tComponent_setTProperty_value_ByString(Tcomponent, value_string) 
	Definir new_TComponent Como Texto;
	new_TComponent = tComponent_setTProperty(Tcomponent, TProperty_value(), value_string);
FinFuncion

Funcion new_TComponent <- tComponent_setTProperty_value(Tcomponent, value_type, TYPE) 
	Definir new_TComponent Como Texto;
	new_TComponent = tComponent_setTProperty(Tcomponent, TProperty_value(), value_TypeToString(value_type, TYPE));
FinFuncion

Funcion new_TComponent <- tComponent_setTProperty_position_TwoPoints(Tcomponent, x0, y0, x1, y1) 
	Definir new_TComponent Como Texto;
	tComponent_Points = tui_ParseTwoPointsXY_ToString(x0, y0, x1, y1);
	new_TComponent = tComponent_setTProperty_position_ByString(Tcomponent, tComponent_Points);
FinFuncion

Funcion new_TComponent <- tComponent_setTProperty_position(Tcomponent, x0, y0) 
	Definir new_TComponent Como Texto;
	new_TComponent = tComponent_setTProperty_position_ByString(Tcomponent, tui_ParsePointXY_ToString(x0, y0));
FinFuncion

Funcion new_TComponent <- tComponent_setTProperty_position_ByString(Tcomponent, value_string) 
	Definir new_TComponent Como Texto;
	new_TComponent = tComponent_setTProperty(Tcomponent, TProperty_position(), value_string);
FinFuncion
//----[ new ]------------------------------------------------------------------------<#>
Funcion newTButton <- tComponent_newButton(text, input_string, x0, y0)
	Definir newTButton Como Texto;
	newTButton = tComponent_new(tComponent_TYPE_BUTTON(), x0, y0);
	newTButton = tComponent_addTPropertyInput(newTButton, input_string);
	newTButton = tComponent_addTPropertyText(newTButton, text);
FinFuncion

Funcion newTComponent <- tComponent_newLabel(text, x0, y0)
	Definir newTComponent Como Texto;
	newTComponent = tComponent_new(tComponent_TYPE_LABEL(), x0, y0);
	newTComponent = tComponent_addTPropertyText(newTComponent, text);
FinFuncion

Funcion newTComponent <- tComponent_newHorizontalRuler(x0, y0, width)
	Definir newTComponent Como Texto;
	newTComponent = tComponent_new(tComponent_TYPE_HORIZONTAL_RULER(), x0, y0);
	newTComponent = tComponent_addTPropertyValue(newTComponent, num_ToString(width));
FinFuncion

Funcion newTComponent <- tComponent_newVerticalRuler(x0, y0, height)
	Definir newTComponent Como Texto;
	newTComponent = tComponent_new(tComponent_TYPE_VERTICAL_RULER(), x0, y0);
	newTComponent = tComponent_addTPropertyValue(newTComponent, num_ToString(height));
FinFuncion

Funcion newTComponent <- tComponent_newPanel(x0, y0, x1, y1)
	Definir newTComponent, pos_panel, pos_panel_down, pos_final Como Texto;
	newTComponent = tComponent_new(tComponent_TYPE_PANEL(), x0, y0);
	pos_panel = tComponent_getTProperty_position(newTComponent);
	pos_panel_down = tui_ParsePointXY_ToString(x1, y1);
	pos_final = string_append_withSeparator(pos_panel, pos_panel_down, symbol_Separator());
	newTComponent = tComponent_setTProperty_position_ByString(newTComponent, pos_final);
FinFuncion

Funcion newTComponent <- tComponent_newSpriteString(string_Sprite, sprite_effect, x0, y0)
	Definir newTComponent, pos_panel Como Texto;
	si spriteString_isSpriteValid(string_Sprite) Entonces
		newTComponent = __private_tComponent_ForcerdnewSpriteString(string_Sprite, sprite_effect, x0, y0);
	SiNo
		newTComponent = tComponent_newLabel("<ERROR_sprite_STRING>", x0, y0);
		error_message_Function("tComponent_newSpriteString(sprite, separator, x, y)", "sprite not is TYPE_SPRITESTRING() [use spriteString_new()]");
	FinSi
FinFuncion

Funcion newTComponent <- __private_tComponent_ForcerdnewSpriteString(string_Sprite, sprite_effect, x0, y0)
	Definir newTComponent, pos_panel Como Texto;
	newTComponent = tComponent_new(tComponent_TYPE_SPRITE_STRING(), x0, y0);
	newTComponent = tComponent_addTPropertyText(newTComponent, string_Sprite);
	newTComponent = tComponent_addTPropertyValue(newTComponent, sprite_effect);
FinFuncion
//----[ DRAW_TCOMPONENT ]------------------------------------------------------------<#>
Funcion canvas_Result <- canvas_DrawtComponent_Button(canvas, Cx, Cy, Tbutton)
	Definir canvas_Result, pos_Tbutton, text_Tbutton Como Texto;
	Definir index_separator, x0, y0 Como Numero;
	canvas_Result = canvas;
	si tComponent_IsTcomponent(Tbutton) Entonces
		pos_Tbutton = tComponent_getTProperty_position(Tbutton);
		text_Tbutton = tComponent_getTProperty_text(Tbutton);
		index_separator = string_indexOf(pos_Tbutton, symbol_Separator_Simple());
		x0 = string_ToNum(string_substring(pos_Tbutton, 0, index_separator));
		y0 = string_ToNum(string_substring_from(pos_Tbutton, increment(index_separator)));
		canvas_Result =  canvas_DrawButton(canvas, Cx, Cy, text_Tbutton, x0, y0);
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawtComponent_Label(canvas, Cx, Cy, Tlabel)
	Definir canvas_Result, pos_Tlabel, text_Tlabel Como Texto;
	Definir index_separator, x0, y0 Como Numero;
	canvas_Result = canvas;
	si tComponent_IsTcomponent(Tlabel) Entonces
		pos_Tlabel = tComponent_getTProperty_position(Tlabel);
		index_separator = string_indexOf(pos_Tlabel, symbol_Separator_Simple());
		x0 = string_ToNum(string_substring(pos_Tlabel, 0, index_separator));
		y0 = string_ToNum(string_substring_from(pos_Tlabel, increment(index_separator)));
		text_Tlabel = tComponent_getTProperty_text(Tlabel);
		canvas_Result = canvas_DrawText(canvas_Result, Cx, Cy, text_Tlabel, x0, y0);
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawtComponent_HorizontalRuler(canvas, Cx, Cy, THrzRuler)
	Definir canvas_Result, pos_Thrz_ruler Como Texto;
	Definir index_separator, x0, y0, width_hr Como Numero;
	canvas_Result = canvas;
	si tComponent_IsTcomponent(THrzRuler) Entonces
		pos_Thrz_ruler = tComponent_getTProperty_position(THrzRuler);
		index_separator = string_indexOf(pos_Thrz_ruler, symbol_Separator_Simple());
		x0 = string_ToNum(string_substring(pos_Thrz_ruler, 0, index_separator));
		y0 = string_ToNum(string_substring_from(pos_Thrz_ruler, increment(index_separator)));
		width_hr = string_ToNum(tComponent_getTProperty_value(THrzRuler));
		canvas_Result = canvas_DrawLine_Horizontal(canvas_Result, Cx, Cy, x0, y0, width_hr);
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawtComponent_VerticalRuler(canvas, Cx, Cy, TVrtRuler)
	Definir canvas_Result, pos_Tvrz_ruler Como Texto;
	Definir index_separator, x0, y0, height_vrz Como Numero;
	canvas_Result = canvas;
	si tComponent_IsTcomponent(TVrtRuler) Entonces
		pos_Tvrz_ruler = tComponent_getTProperty_position(TVrtRuler);
		index_separator = string_indexOf(pos_Tvrz_ruler, symbol_Separator_Simple());
		x0 = string_ToNum(string_substring(pos_Tvrz_ruler, 0, index_separator));
		y0 = string_ToNum(string_substring_from(pos_Tvrz_ruler, increment(index_separator)));
		height_vrz = string_ToNum(tComponent_getTProperty_value(TVrtRuler));
		canvas_Result = canvas_DrawLine_Vertical(canvas_Result, Cx, Cy, x0, y0, height_vrz);
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawtComponent_Panel(canvas, Cx, Cy, TPanel)
	Definir canvas_Result, pos_Tpanel Como Texto;
	Definir index_separator, index_separator_down, index_separatorPos Como Numero;
	Definir x0, y0, width, height Como Numero;
	canvas_Result = canvas;
	si tComponent_IsTcomponent(TPanel) Entonces
		pos_Tpanel = tComponent_getTProperty_position(TPanel);
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

Funcion canvas_Result <- canvas_DrawtComponent_SpriteString(canvas, Cx, Cy, TSprite)
	Definir canvas_Result, pos_TSprite, SpriteString, sprite_Effect Como Texto;
	Definir x0, y0, index_separator Como Numero;
	canvas_Result = canvas;
	si tComponent_IsTcomponent(TSprite) Entonces
		pos_TSprite = tComponent_getTProperty_position(TSprite);
		index_separator = string_indexOf(pos_TSprite, symbol_Separator_Simple());
		x0 = string_ToNum(string_substring(pos_TSprite, 0, index_separator));
		y0 = string_ToNum(string_substring_from(pos_TSprite, increment(index_separator)));
		SpriteString = tComponent_getTProperty_text(TSprite);
		sprite_Effect = tComponent_getTProperty_value(TSprite);
		canvas_Result = __private_canvas_DrawspriteString_sprite_effect(canvas, Cx, Cy, SpriteString, x0, y0, pixel_clear(), sprite_Effect);
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawTComponent(canvas, Cx, Cy, Tcomponent)
	Definir canvas_Result, simple_name Como Texto;
	simple_name = tComponent_getTProperty_simpleName(tcomponent);
	Segun simple_name Hacer
		caso tComponent_TYPE_BUTTON():
			canvas_Result = canvas_DrawtComponent_Button(canvas, Cx, Cy, Tcomponent);
		caso tComponent_TYPE_LABEL():
			canvas_Result = canvas_DrawtComponent_Label(canvas, Cx, Cy, Tcomponent);
		caso tComponent_TYPE_HORIZONTAL_RULER():
			canvas_Result = canvas_DrawtComponent_HorizontalRuler(canvas, Cx, Cy, Tcomponent);
		caso tComponent_TYPE_VERTICAL_RULER():
			canvas_Result = canvas_DrawtComponent_VerticalRuler(canvas, Cx, Cy, Tcomponent);
		caso tComponent_TYPE_PANEL():
			canvas_Result = canvas_DrawtComponent_Panel(canvas, Cx, Cy, Tcomponent);
		caso tComponent_TYPE_SPRITE_STRING():
			canvas_Result = canvas_DrawtComponent_SpriteString(canvas, Cx, Cy, Tcomponent);
		De Otro Modo:
			canvas_Result = canvas;
	FinSegun
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion symbol_area <- symbol_TComponent
	Definir symbol_area Como Texto;
	symbol_area = "";//001C
FinFuncion
//....[ property ]......................................................................
Funcion tcomponent <- TProperty_position
	Definir tcomponent Como Texto;
	tcomponent = "[position]";
FinFuncion

Funcion tcomponent <- TProperty_text
	Definir tcomponent Como Texto;
	tcomponent = "[text]";
FinFuncion

Funcion tcomponent <- TProperty_value
	Definir tcomponent Como Texto;
	tcomponent = "[value]";
FinFuncion

Funcion tcomponent <- TProperty_input
	Definir tcomponent Como Texto;
	tcomponent = "[input]";
FinFuncion

Funcion tcomponent <- TProperty_simpleName
	Definir tcomponent Como Texto;
	tcomponent = "[simple_name]";
FinFuncion

Funcion tcomponent <- TProperty_visible
	Definir tcomponent Como Texto;
	tcomponent = "[visible]";
FinFuncion
//....[ tComponent_type ]...............................................................
Funcion tComponent_Type <- tComponent_TYPE_BUTTON
	Definir tComponent_Type Como Texto;
	tComponent_Type = "@Tbutton@";
FinFuncion

Funcion tComponent_Type <- tComponent_TYPE_LABEL
	Definir tComponent_Type Como Texto;
	tComponent_Type = "@Tlabel@";
FinFuncion

Funcion tComponent_Type <- tComponent_TYPE_HORIZONTAL_RULER
	Definir tComponent_Type Como Texto;
	tComponent_Type = "@THorizontalRuler@";
FinFuncion

Funcion tComponent_Type <- tComponent_TYPE_VERTICAL_RULER
	Definir tComponent_Type Como Texto;
	tComponent_Type = "@TVerticalRuler@";
FinFuncion

Funcion tComponent_Type <- tComponent_TYPE_PANEL
	Definir tComponent_Type Como Texto;
	tComponent_Type = "@TPanel@";
FinFuncion

Funcion tComponent_Type <- tComponent_TYPE_SPRITE_STRING
	Definir tComponent_Type Como Texto;
	tComponent_Type = "@TSpriteString@";
FinFuncion
///%%%%%[ VEC..................... ]%%%%%%%[   #VEC    ]%%%%%%%%%%%%%%%%%%
// ------------------- NULL FunctionS
///%%%%%[ ASCII/HASH.............. ]%%%%%%%[   #ASC    ]%%%%%%%%%%%%%%%%%%
//----[ PARSE ]----------------------------------------------------<#>
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
	Mientras !ascii_IsCategory_index(char, i) Hacer
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
//----[ GETTERS ]----------------------------------------------------<#>
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
	ControlSymbols = "	";//TAP BL LF
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
//----[ IS_CATEGORY ]----------------------------------------------------<#>
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
//----[ GETCONTENT ]----------------------------------------------------<#>
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
		result_String = string_substring(text_input, start_position, increment(end_position));
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
            i = increment(i);
        FinSi
    FinMientras
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
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
///%%%%%[ END_CODE................ ]%%%%%%%[    ++0    ]%%%%%%%%%%%%%%%%%%
Funcion message_duration(struct_localTime)
	Definir time_Total, time_message Como Texto;
	time_Total 	  = color_setColorText(localTime_ToString(struct_localTime), COLOR_CYAN());
	time_message  = color_setColorText("::: execution time ::: format(hh:mm:ss) ::: ", COLOR_BLUE());
	println(string_append(time_message, time_Total));
FinFuncion

Algoritmo run_code
	Definir duration_Timer, localTime_Start, localTime_End Como Texto;
	localTime_Start = localTime_Now();
	clear_Console();
	//sandbox_development();
	main();
	localTime_End = localTime_now();
	duration_Timer = duration_between(localTime_Start, localTime_End);
	message_duration(duration_Timer);
FinAlgoritmo
///%%%%%[ ........................ ]%%%%%%%[    ---    ]%%%%%%%%%%%%%%%%%%