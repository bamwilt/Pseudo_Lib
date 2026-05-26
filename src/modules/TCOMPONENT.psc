Algoritmo MODULE_TCOMPONENT
	// Test call disabled: tComponent_new() requires arguments
	// TODO: add valid arguments for standalone execution
FinAlgoritmo
///%%%%%[ TCOMPONENT.......................... ]%%%%%%%[   #TCO    ]%%%%%%%%%%%%%%%%%%%%

Funcion tComponent_Build <- tComponent_new(simple_name, x0, y0)
	Definir tComponent_Build, tComponent_position Como Texto;
	tComponent_position = tui_ParsePointXY_ToString(x0, y0);
	tComponent_Build = storageCellsCollection_new(tui_TYPE_TCOMPONENT(), TYPE_STRING(), TYPE_STRING());
	tComponent_Build = storageCellsCollection_add_byString(tComponent_Build , TProperty_position(), tComponent_position);
	tComponent_Build = storageCellsCollection_add_byString(tComponent_Build , TProperty_simpleName(), simple_name);
FinFuncion

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
    tComponent_Build = storageCellsCollection_add_byString(tcomponent, TProperty, value);
FinFuncion

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
	THasInput = storageCellsCollection_constainsCell(tcomponent, TProperty_input());
FinFuncion

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
	TProperty = storageCellsCollection_getData_byCell_toString(tComponent_target, type_TProperty);
FinFuncion

Funcion new_TComponent <- tComponent_setTProperty(Tcomponent, TProperty_Component, value_string) 
	Definir new_TComponent Como Texto;
	new_TComponent = storageCellsCollection_add_setter_byString(Tcomponent, TProperty_Component, value_string);
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
	newTComponent = tComponent_addTPropertyValue(newTComponent, number_toString(width));
FinFuncion

Funcion newTComponent <- tComponent_newVerticalRuler(x0, y0, height)
	Definir newTComponent Como Texto;
	newTComponent = tComponent_new(tComponent_TYPE_VERTICAL_RULER(), x0, y0);
	newTComponent = tComponent_addTPropertyValue(newTComponent, number_toString(height));
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

Funcion symbol_area <- symbol_TComponent
	Definir symbol_area Como Texto;
	symbol_area = "";//001C
FinFuncion

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

///==========[DEPENDECES]=============================================
//---[ native_ (#NAV) ]--------------------------------------------------------------------

Funcion result_string <- native_number_ToString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion

Funcion native_println(text)
	Escribir text;
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
//---[ string_ (#STR) ]--------------------------------------------------------------------

Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
FinFuncion

Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion

Funcion result_string <- string_NULL
	Definir result_string Como Texto;
	result_string = "";
FinFuncion

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
FinFuncion

Funcion result_string <- string_insert(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, false);
FinFuncion

Funcion num <- string_length(text)
	Definir num Como Numero;
	num = native_string_length(text);
FinFuncion

Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Numero;
	result = string_indexOf_fromIndex(text, text_match, 0);
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

Funcion result <- string_lastIndexOf(text, text_match)//< ---
	Definir result Como Numero;
	result = string_lastindexOf_fromIndex(text, text_match, native_string_length(text));
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

Funcion strSubs <- string_substring(result_string, start, end)
	Definir strSubs, str_data Como Texto;
	Definir end_substring Como Entero;
	message_validateIndexRange("string_substring", result_string, start, end);
	end_substring = math_max_int( math_minus(end, 1), 0);
	str_data = native_string_substring(result_string, start, end_substring);
	strSubs = if_else(number_isEquals(start, end), "", str_data);
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

Funcion boolean <- string_isEmpty(text)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(text, "");
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

Funcion result_str <- string_delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_delete", text, start, end);
	start_Str = string_substring(text, 0, start);//Hello <-]
	end_Str = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
FinFuncion

Funcion result_string <- string_fit_end(text, text_pad)
	Definir result_string, res_pad Como Texto;
	Definir pad_length Como Entero;
	pad_length		= native_string_length(text_pad);
	result_string   = string_pad_limitEnd(text, text_pad, pad_length);
	result_string	= string_substring(result_string, 0, pad_length);
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

Funcion result_string <- string_pad_limitEnd(text, text_pad, pad_length)
	Definir result_string, res_pad Como Texto;
	Definir text_length, res_length Como Entero;
	text_length		= native_string_length(text);
	res_length      = math_min_Int(text_length, pad_length);
	res_pad         = string_substring(text_pad, res_length, pad_length);
	result_string	= string_insert(text, res_pad, text_length);
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

Funcion TYPE <- TYPE_STRING
	Definir TYPE Como Texto;
	TYPE = "string";
FinFuncion

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

Funcion numDec <- math_minus(num, value)
	Definir numDec Como Numero;
	numDec = num - value;
FinFuncion

Funcion numInc <- math_increment(num)
	Definir numInc Como Numero;
	numInc = num + 1;
FinFuncion

Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
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

Funcion num_abs <- math_abs(num)
	Definir num_abs Como Numero;
	num_abs = if_else(num < 0, math_negated(num), num);
FinFuncion

Funcion num_Negate <- math_negated(num)
	Definir num_Negate Como Numero;
	num_Negate = -1 * num;
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

Funcion error_message_Function(method, message)
	error_message(string_append_withSeparator(method, message, "//"));
FinFuncion

Funcion error_message(message)
	native_println(symbol_Escape() + "31m[ERROR] // " + message + ".");
FinFuncion

Funcion exection_Error(message_Error)
	Definir error_int Como Entero;
	log_ERROR(message_Error);
	error_int = string_NULL();
FinFuncion

Funcion result <- if_else(condition, result, result2)
	Si !(condition) Entonces
		result = result2;
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

Funcion string_Increment <- value_modify_StringNumber(string_number, num_sum)
	Definir string_Increment Como Texto;
	string_Increment = number_toString(math_sum(string_toNumber(string_number), num_sum));
FinFuncion
//---[ collection_ (#CLL) ]----------------------------------------------------------------

Funcion name_Collection <- collection_getNameCollection(collection)
	Definir name_Collection Como Texto;
	name_Collection = asci_getPrefix_alphabetic(collection);
FinFuncion

Funcion result_string <- symbol_Separator
	Definir result_string Como Texto;
	result_string = "";//001F
FinFuncion

Funcion result_string <- symbol_Separator_Simple
	Definir result_string Como Texto;
	result_string = ",";
FinFuncion

Funcion index_TypeArea <- collection_getIndex_typeArea(struct_Collection)
	Definir index_TypeArea Como Numero;
	index_TypeArea = string_indexOf(struct_Collection, symbol_typeArea());
FinFuncion

Funcion symbol_area <- symbol_lengthArea
    Definir symbol_area Como Texto;
    symbol_area = "";
FinFuncion

Funcion type_area <- collection_getContent_Between_Symbols(collection, symbol_start, symbol_end)
	Definir Type_property, type_area Como Texto;
	Definir index_start, index_end, index_check Como Numero;
	index_start = math_increment(string_indexOf(collection, symbol_start));
	index_end = string_indexOf_fromIndex(collection, symbol_end, index_start);
	type_area = string_substring(collection, index_start, index_end);
FinFuncion

Funcion symbol_area <- symbol_typeArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001D
FinFuncion

Funcion type_area <- collection_getContent_Between_lastSymbols(collection, symbol_start, symbol_end)
	Definir Type_property, type_area Como Texto;
	Definir index_start, index_end, index_check Como Numero;
	index_end = string_LastindexOf(collection, symbol_end);
	index_start = math_increment(string_LastindexOf_fromIndex(collection, symbol_start, index_end));
	type_area = string_substring(collection, index_start, index_end);
FinFuncion

Funcion symbol_area <- symbol_metaData
	Definir symbol_area Como Texto;
	symbol_area = "";//001E
FinFuncion

Funcion result_string <- symbol_ExtraData
	Definir result_string Como Texto;
	result_string = "";//0003
FinFuncion

Funcion symbol_area <- symbol_dataArea
	Definir symbol_area Como Texto;
	symbol_area = "";
FinFuncion

Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion

Funcion index_MetaData <- collection_getIndex_metaData(struct_Collection)
	Definir index_MetaData Como Numero;
	index_MetaData = string_lastIndexOf(struct_Collection, symbol_metaData());
FinFuncion

Funcion collection_result <- collection_updateRange(struct_collection, index_start, index_end, data_string)
	Definir collection_result Como Texto;
	collection_result = string_delete(struct_collection, index_start, index_end);
	collection_result = string_insert(collection_result, data_string, index_start);
FinFuncion

Funcion symbol_areaContent <- collection_replaceRange_between_lastSymbols(collection, data_String, symbol_start, symbol_end)
    Definir symbol_areaContent Como Texto;
    Definir index_start, index_end Como Numero;
    index_end = string_LastindexOf(collection, symbol_end);
    index_start = math_increment(string_LastindexOf_fromIndex(collection, symbol_start, index_end));
    symbol_areaContent = collection_replaceRange(collection, data_String, index_start, index_end);
FinFuncion

Funcion collection_out <- collection_replaceRange(collection, data_String, index_start, index_end)
    Definir collection_out Como Texto;
    collection_out = string_delete(collection, index_start, index_end);
    collection_out = string_Insert(collection_out, data_String, index_start);
FinFuncion
//---[ managerData_ (#MDA) ]---------------------------------------------------------------

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
//---[ linearCollection_ (#LCL) ]----------------------------------------------------------

Funcion index_extraData <- linearCollection_getIndex_ExtraData(struct_LinearCollection)
	Definir index_extraData Como Numero;
	index_extraData = string_lastIndexOf(struct_LinearCollection, symbol_extraData());
FinFuncion

Funcion collection_result <- linearCollection_increment_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, 1);
FinFuncion

Funcion Size_int <- linearCollection_getSize(struct_Collection)
	Definir Size_int Como Numero;
	Size_int = string_toNumber(string_substring_from(struct_Collection, math_increment(linearCollection_getIndex_EndMetaData(struct_Collection))));
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

Funcion End_index <- linearCollection_getIndex_EndMetaData(struct_Collection)
	Definir End_index Como Numero;
	End_index = string_lastIndexOf(struct_Collection, symbol_ExtraData());
FinFuncion
//---[ collectionStorage_ (#CST) ]---------------------------------------------------------

Funcion value_string <- collectionStorage_get_toString_force(struct_storage, index_getter, index_endData)
	Definir value_string Como Texto;
	Definir index_lengthArea, index_dataArea Como Numero;
	Definir sequential_data, sequential_lengths Como Texto;
	index_lengthArea    = math_increment(string_indexOf(struct_storage, symbol_lengthArea()));
	index_dataArea      = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
	sequential_lengths  = string_substring(struct_storage, index_lengthArea, index_dataArea);
	sequential_data     = string_substring(struct_storage, math_increment(index_dataArea), index_endData);
	value_string        = managerData_get_toString(sequential_data, sequential_lengths, index_getter);
FinFuncion

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

Funcion result_storage <- collectionStorage_add_byString_force(struct_storage, value_string, index_lenght, index_data)
	Definir result_storage, length_value Como Texto;
	Definir index_dataArea, index_lengthArea Como Numero;
	length_value   = string_append(symbol_Separator(), number_toString(string_Length(value_string)));
	result_storage     = string_insert(struct_storage, value_string, index_data);
	result_storage     = string_insert(result_storage, length_value, index_lenght);
FinFuncion

Funcion result_storage <- collectionStorage_modify_byString(struct_storage, value_string, index_modify)
	Definir result_storage, sequential_data, sequential_lengths, sequential_package Como Texto;
	Definir collection_size, index_lengthArea, index_dataArea, index_metaData Como Numero;
	collection_size = collectionStorage_getSize(struct_storage);
	si collection_size >= 1 Entonces
		index_lengthArea   = math_increment(string_indexOf(struct_storage, symbol_lengthArea()));
		index_dataArea     = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
		index_metaData     = collection_getIndex_metaData(struct_storage);
		sequential_lengths = string_substring(struct_storage, index_lengthArea, index_dataArea);
		sequential_data    = string_substring(struct_storage, math_increment(index_dataArea), index_metaData);
		sequential_package = managerData_modify(sequential_data, sequential_lengths, index_modify, value_string, true());
		result_storage     = collection_updateRange(struct_storage, index_lengthArea, index_metaData, sequential_package);
	SiNo
		result_storage     = struct_storage;
	FinSi
FinFuncion

Funcion num_Keys <- collectionStorage_getSize(struct_storage)
	Definir num_Keys Como Numero;
	num_Keys       = linearCollection_getSize(struct_storage);
FinFuncion
//---[ cellsCollection_ (#CCO) ]-----------------------------------------------------------

Funcion size_dataBlock <- cellsCollection_getSize(struct_name)
	Definir size_dataBlock Como Entero;	
	size_dataBlock = linearCollection_getSize(struct_name);
FinFuncion

Funcion cells_index <- cellsCollection_calcule_indexBlock_atEnd(index_end, index_search, cell_length)
	Definir cells_index Como Entero;
	cells_index = math_minus(index_end, (index_search * cell_length));
FinFuncion

Funcion length_result <- cellsCollection_setNormCellLength(fixed_Length)
	Definir length_result Como Texto;
    Definir length_valid, min_length Como Entero;
	min_length = cellsCollection_getMinFixed();
    length_valid = fixed_Length;
    Si length_valid < min_length Entonces
        error_message_function("cellsCollection_setNormCellLength(fixed_Length)", "fixed_Length < 1");
        length_valid = min_length;
    FinSi
	length_result = number_toString(length_valid);
FinFuncion

Funcion isChanged <- cellsCollection_isChanged(struct_cell, last_length)
	Definir isChanged Como Logico;
	isChanged = (string_Length(struct_cell) > last_length);
FinFuncion

Funcion min_fixed <- cellsCollection_getMinFixed
	Definir min_fixed Como Entero;
	min_fixed = 1;
FinFuncion

Funcion element_cells <- cellsCollection_String_normalizedToBlockLegth(element_string, cell_length)
	Definir element_cells Como Texto;
	element_cells = string_fit_end(element_string, String_repeatText(cellsCollection_symbol_null(), cell_length));
FinFuncion

Funcion symbol <- cellsCollection_symbol_null
	Definir symbol Como Texto;
	symbol = "";
FinFuncion
//---[ cellsCollection_dynamic_ (#CCD) ]---------------------------------------------------

Funcion result_cells <- cellsCollection_Dynamic_reSize_inRange_force(struct_cells, new_fixed_Length, index_start, index_end, index_endData, cell_length)
	Definir result_cells Como Texto;
	Definir  diff Como Entero;
	diff = math_minus(new_fixed_Length, cell_length);
	result_cells = struct_cells;
	Si diff > 0 Entonces
		result_cells = __private_cellsCollection_Dynamic_applyPadding(result_cells, diff, index_endData, index_start, index_end, cell_length);
	FinSi
	Si diff < 0 Entonces
		diff = math_abs(diff);
		result_cells = __private_cellsCollection_Dynamic_applyCropping(result_cells, diff, index_endData, index_start, index_end, cell_length);
	FinSi
FinFuncion

Funcion result_Padding <- __private_cellsCollection_Dynamic_applyPadding(struct_cells, amount, index_endData, index_start, index_end, cell_length)
	Definir result_Padding, padding_null Como Texto;
	Definir current_pos, i Como Entero;
	result_Padding = struct_cells;
	padding_null = string_repeatText(cellsCollection_symbol_Null(), amount);
	i = index_start;
	Mientras i < index_end Hacer
		current_pos = cellsCollection_calcule_indexBlock_atEnd(index_endData, i, cell_length);
		result_Padding = String_Insert(result_Padding, padding_null, current_pos);
		i = math_increment(i);
	FinMientras
FinFuncion

Funcion result_cells <- __private_cellsCollection_Dynamic_applyCropping(struct_cells, amount, index_endData, index_start, index_end, cell_length)
	Definir result_cells Como Texto;
	Definir current_pos, i Como Entero;
	result_cells = struct_cells;
	i = index_start;
	Mientras i < index_end Hacer
		current_pos = cellsCollection_calcule_indexBlock_atEnd(index_endData, i, cell_length);
		result_cells = string_delete(result_cells, math_minus(current_pos, amount), current_pos);
		i = math_increment(i);
	FinMientras
FinFuncion
//---[ cellsCollection_setter_ (#CCS) ]----------------------------------------------------

Funcion index_cell <- cellsCollection_setter_getIndex_byString_inRange_force(struct_cells, element_string, index_start, index_end, index_data, cell_length)
	Definir index_cell, i, current_pos, next_pos Como Entero;
	Definir current_data Como Texto;
	element_string = cellsCollection_String_normalizedToBlockLegth(element_string, cell_length);
	index_cell = number_NULL();
	i = index_start;
	current_pos = index_data;
	Mientras i < index_end Hacer
		next_pos = math_sum(current_pos, cell_length);
		current_data = String_Substring(struct_cells, current_pos, next_pos);
		Si string_isEquals(element_string, current_data) Entonces
			index_cell = i;
			i = index_end;
		FinSi
		current_pos = math_sum(current_pos, cell_length);
		i = math_increment(i);
	FinMientras
FinFuncion
//---[ collectionDualCells_ (#DCC) ]-------------------------------------------------------

Funcion MODE <- CELL_DYNAMIC
	Definir MODE Como Texto;
	MODE = "mode_dynamic";
FinFuncion

Funcion index_cell <- dualCellsCollection_setter_getIndex_right(struct_cells, value_search)
	Definir TYPE, string_search Como Texto; 
	Definir index_cell Como Entero;
	TYPE          = dualCellsCollection_getType_right(struct_cells);
	string_search = value_TypeToString(value_search, TYPE);
	index_cell    = dualCellsCollection_setter_getIndex_right_byString(struct_cells, string_search);
FinFuncion

Funcion TYPE <- dualCellsCollection_getType_right(struct_cells)
	Definir TYPE Como Texto;//
	TYPE = collection_getContent_Between_Symbols(struct_cells, symbol_cell_type(), symbol_typeArea());
FinFuncion

Funcion cell_length <- dualCellsCollection_getCellLength_right(struct_cells)
	Definir cell_length Como Entero;	
	Definir cells_length_String Como Texto;
	cells_length_String = collection_getContent_Between_lastSymbols(struct_cells, symbol_metaData(), symbol_extraData());
	cell_length    = string_toNumber(cells_length_String);
FinFuncion

Funcion index_endData <- dualCellsCollection_getEndData(struct_cells)
	Definir index_endData Como Entero;
	index_endData = String_lastIndexof(struct_cells, symbol_metaData());
FinFuncion

Funcion MODE <- CELL_SETTER_DYNAMIC
	Definir MODE Como Texto;
	MODE = "mode_setterDynamic";
FinFuncion

Funcion symbol <- symbol_cell_type
	Definir symbol Como Texto;
	symbol = "";
FinFuncion

Funcion isValidLength <- dualCellsCollection_validateFixedLength_Mode(element_string, cell_length, MODE, direction)
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
	si mode_isFixed & !dualCellsCollection_validateFixedLength(element_string, cell_length) Entonces
		error_message_Function("dualCellsCollection_validateFixedLength_Mode()", string_append(direction, " :: element exceeds cells size"));
		isValidLength = false();
	FinSi
FinFuncion

Funcion size_dataBlock <- dualCellsCollection_getSize(struct_cells)
	Definir size_dataBlock Como Entero;
	size_dataBlock = cellsCollection_getSize(struct_cells);
FinFuncion

Funcion result_cells <- dualCellsCollection_mode_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length, MODE)
	Definir result_cells Como Texto;
	segun MODE Hacer
		caso CELL_FIXED():
			result_cells = dualCellsCollection_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
		caso CELL_SETTER():
			result_cells = dualCellsCollection_setter_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
		caso CELL_DYNAMIC():
			result_cells = dualCellsCollection_Dynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
		caso CELL_SETTER_DYNAMIC():
			result_cells = dualCellsCollection_setterDynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
		De Otro Modo:
			error_message_Function("dualCellsCollection_mode_add_byString_left_force(cells, element, Istart, Iinsert, lengthCell, mode)", string_append("[right] mode not exist: ", MODE));
			result_cells = struct_cells;
	FinSegun
FinFuncion

Funcion index_cell <- dualCellsCollection_setter_getIndex_right_byString(struct_cells, element_string)
	Definir index_cell, element_length, cell_length Como Entero;
	element_length = string_length(element_string);
	cell_length = dualCellsCollection_getCellLength_right(struct_cells);
	si (element_length > cell_length) Entonces
		index_cell = number_NULL();
	SiNo
		index_cell = dualCellsCollection_setter_getIndex_right_byString_force(struct_cells, element_string, cell_length);	
	FinSi
FinFuncion

Funcion MODE <- CELL_FIXED
	Definir MODE Como Texto;
	MODE = "mode_fixed";
FinFuncion

Funcion MODE <- CELL_SETTER
	Definir MODE Como Texto;
	MODE = "mode_setter";
FinFuncion

Funcion isValidLength <- dualCellsCollection_validateFixedLength(element_string, cell_length)
	Definir isValidLength Como Logico;
	isValidLength = String_length(element_string) <= cell_length;
FinFuncion

Funcion result_cells <- dualCellsCollection_add_byString_right_force(struct_cells, element_string, index_end, index_insert, cell_length)
	Definir result_cells Como Texto;
	Definir cells_index Como Entero;
	result_cells = struct_cells;
	element_string = cellsCollection_String_normalizedToBlockLegth(element_string, cell_length);
	cells_index = cellsCollection_calcule_indexBlock_atEnd(index_end, index_insert, cell_length);
	result_cells = String_insert(result_cells, element_string, cells_index);
FinFuncion

Funcion result_cells <- dualCellsCollection_setter_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length)
	Definir result_cells Como Texto;
	Si dualCellsCollection_setter_constains_right(struct_cells, element_string) Entonces
		result_cells = struct_cells;
	SiNo
		result_cells  = dualCellsCollection_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
	FinSi
FinFuncion

Funcion result_cells <- dualCellsCollection_Dynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length)
	Definir result_cells Como Texto;
	Definir element_length, cells_size Como Entero;
	result_cells  = struct_cells;
	element_length = String_length(element_string);
	cells_size    = cellsCollection_getSize(result_cells);
	result_cells  = dualCellsCollection_Dynamic_ensureCapacity_right_force(struct_cells, cell_length, element_length, index_endData, cells_size);
	si  element_length > cell_length Entonces
		cell_length  =  element_length;
		index_endData = dualCellsCollection_getEndData(result_cells);
	FinSi
	result_cells  = dualCellsCollection_add_byString_right_force(result_cells, element_string, index_endData, index_insert, cell_length);
FinFuncion

Funcion result_cells <- dualCellsCollection_setterDynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length)
	Definir result_cells Como Texto;	
	Si dualCellsCollection_setter_constains_right(struct_cells, element_string) Entonces
		result_cells = struct_cells;
	SiNo
		result_cells = dualCellsCollection_Dynamic_add_byString_right_force(struct_cells, element_string, index_endData, index_insert, cell_length);
	FinSi
FinFuncion

Funcion index_cell <- dualCellsCollection_setter_getIndex_right_byString_force(struct_cells, element_string, cell_length)
	Definir index_cell, index_endData, cells_size, index_startData_right Como Entero;	
	index_endData         = dualCellsCollection_getEndData(struct_cells);
	cells_size           = cellsCollection_getSize(struct_cells);
	index_startData_right = cellsCollection_calcule_indexBlock_atEnd(index_endData, cells_size, cell_length);
	index_cell          = cellsCollection_setter_getIndex_byString_inRange_force(struct_cells, element_string, 0, cells_size, index_startData_right, cell_length);
	si (index_cell >= 0) Entonces
		index_cell = math_minus(math_decrement(cells_size), index_cell);
	FinSi
FinFuncion

Funcion constains_string <- dualCellsCollection_setter_constains_right(struct_cells, element_string)
	Definir constains_string Como Logico;
	constains_string = dualCellsCollection_setter_getIndex_right_byString(struct_cells, element_string) >= 0;
FinFuncion

Funcion result_cells <- dualCellsCollection_Dynamic_ensureCapacity_right_force(struct_cells, cell_length, required_length, index_endData, cells_size)
	Definir result_cells Como Texto;
	result_cells = struct_cells;
	si required_length > cell_length Entonces
		result_cells = dualCellsCollection_Dynamic_reSize_right_force(struct_cells, required_length, index_endData, cells_size, cell_length);
	FinSi
FinFuncion

Funcion result_cells <- dualCellsCollection_Dynamic_reSize_right_force(struct_cells, new_fixed_Length, index_endData, cells_size, cell_length)
	Definir result_cells Como Texto;
	result_cells = cellsCollection_Dynamic_reSize_inRange_force(struct_cells, new_fixed_Length, 0, cells_size, index_endData, cell_length);	
	result_cells = dualCellsCollection_UpdateLength_right(result_cells, new_fixed_Length);
FinFuncion

Funcion result_cells <- dualCellsCollection_UpdateLength_right(struct_cells, new_fixed_Length)
	Definir result_cells Como Texto;
	result_cells = collection_replaceRange_between_lastSymbols(struct_cells, number_toString(new_fixed_Length), symbol_metaData(), symbol_ExtraData());
FinFuncion
//---[ collStorageCells_ (#SCC) ]----------------------------------------------------------

Funcion collection_storage <- storageCellsCollection_new(struct_name, TYPE_CELL, TYPE_LINEAR)
	Definir collection_storage Como Texto;
	collection_storage = storageCellsCollection_new_setLengthCell(struct_name, TYPE_CELL, TYPE_LINEAR, 1);
FinFuncion

Funcion result_storage <- storageCellsCollection_add_byString(struct_storage, value_string, data_string)
	Definir result_storage Como Texto;
	result_storage = storageCellsCollection_mode_add_byString(struct_storage, value_string, CELL_DYNAMIC(), data_string);
FinFuncion

Funcion constainsValue <- storageCellsCollection_constainsCell(struct_storageCells, value_search)
	Definir constainsValue Como Logico;
	Definir cell_index Como Entero;
	cell_index = dualCellsCollection_setter_getIndex_right(struct_storageCells, value_search);
	constainsValue = !number_isEquals(cell_index, number_NULL());
FinFuncion

Funcion value_string <- storageCellsCollection_getData_byCell_toString(struct_storageCells, value_search)
	Definir value_string, TYPE, sequential_data, sequential_lengths, string_search Como Texto;
	Definir index_target, index_endData, cells_size, right_startData, cell_length Como Entero;
	Definir index_lengthArea, index_dataArea, index_metaData Como Entero;
	TYPE = dualCellsCollection_getType_right(struct_storageCells);
	string_search         = value_TypeToString(value_search, TYPE);
	cell_length           = dualCellsCollection_getCellLength_right(struct_storageCells);
	index_endData         = dualCellsCollection_getEndData(struct_storageCells);
	cells_size            = cellsCollection_getSize(struct_storageCells);
	right_startData       = cellsCollection_calcule_indexBlock_atEnd(index_endData, cells_size, cell_length);
	index_target          = storageCellsCollection_getCellIndex_force(struct_storageCells, string_search, cells_size, right_startData, cell_length);
	Si (index_target >= 0) Entonces
		value_string = collectionStorage_get_toString_force(struct_storageCells, index_target, right_startData);
	SiNo
		value_string = string_NULL();
	FinSi
FinFuncion

Funcion result_storage <- storageCellsCollection_add_setter_byString(struct_storage, value_string, data_string)
	Definir result_storage Como Texto;
	result_storage = storageCellsCollection_mode_add_byString(struct_storage, value_string, CELL_SETTER_DYNAMIC(), data_string);
FinFuncion

Funcion collection_storage <- storageCellsCollection_new_setLengthCell(struct_name, TYPE_CELL, TYPE_LINEAR, fixed_Length)
	Definir collection_storage, min_fixed, region_width, region_type  Como Texto;
	Definir index_insert Como Entero;
	collection_storage = collectionStorage_new(struct_name, TYPE_LINEAR);
	region_type        = String_append(symbol_cell_type(), TYPE_CELL);
	index_insert       = collection_getIndex_typeArea(collection_storage);
	collection_storage = string_insert(collection_storage, region_type, index_insert);
	index_insert       = linearCollection_getIndex_extraData(collection_storage);
	region_width       = cellsCollection_setNormCellLength(fixed_Length);
	collection_storage = string_insert(collection_storage, region_width, index_insert);
FinFuncion

Funcion result_storage <- storageCellsCollection_mode_add_byString(struct_storageCells, value_string, CELL_MODE, data_string)
	Definir result_storage Como Texto;
	Definir index_endData, cell_length, count_size, index_target Como Entero;
	Definir last_length, right_startData, index_lengthArea Como Entero;
	Definir isValidFixed, isChanged Como Logico;
	result_storage = struct_storageCells;
	cell_length    = storageCellsCollection_getCellLength(result_storage);
	last_length    = string_Length(result_storage);
	isValidFixed   = dualCellsCollection_validateFixedLength_Mode(value_string, cell_length, CELL_MODE, "[RIGHT]");
	si isValidFixed Entonces
		count_size     = dualCellsCollection_getSize(result_storage);
		index_endData  = dualCellsCollection_getEndData(result_storage);
		result_storage = dualCellsCollection_mode_add_byString_right_force(result_storage, value_string, index_endData, count_size, cell_length, CELL_MODE);
	FinSi 
	right_startData = math_minus(index_endData, count_size * cell_length);
	isChanged       = cellsCollection_isChanged(result_storage, last_length);
	si isChanged Entonces
		index_lengthArea = math_increment(string_indexOf(result_storage, symbol_lengthArea()));
		result_storage   = collectionStorage_add_byString_force(result_storage, data_string, index_lengthArea, right_startData);//revisar
		result_storage   = linearCollection_increment_numElement(result_storage);
	FinSi
	Si isValidFixed & !isChanged Entonces
		index_target     = storageCellsCollection_getCellIndex_force(result_storage, value_string, count_size, right_startData, cell_length);
		result_storage   = collectionStorage_modify_byString(result_storage, data_string, index_target);
	FinSi
FinFuncion

Funcion norm_target <- storageCellsCollection_getCellIndex_force(result_storage, string_search, count_size, right_startData, cell_length)
    Definir norm_target, index_target, search_Length Como Entero;
	Definir index_isInvalid Como Logico;
	search_Length   = string_Length(string_search);
	index_isInvalid = search_Length > cell_length;
	si !index_isInvalid Entonces
		index_target    = cellsCollection_setter_getIndex_byString_inRange_force(result_storage, string_search, 0, count_size, right_startData, cell_length);
		index_isInvalid = number_isEquals(index_target, number_NULL());
	FinSi
	si index_isInvalid Entonces
		norm_target = number_NULL();
	SiNo
		norm_target = math_minus(math_decrement(count_size), index_target);
	FinSi
FinFuncion

Funcion cell_length <- storageCellsCollection_getCellLength(struct_storageCells)
	Definir cell_length Como Entero;
	cell_length = dualCellsCollection_getCellLength_right(struct_storageCells);
FinFuncion
//---[ tui_ (#TUI) ]-----------------------------------------------------------------------

Funcion tComponent_Point <- tui_ParsePointXY_ToString(x0, y0)
	Definir tComponent_Point Como Texto;	
	tComponent_Point = string_append_withSeparator(number_toString(x0), number_toString(y0), symbol_Separator_Simple());
FinFuncion

Funcion TYPE <- tui_TYPE_TCOMPONENT
	Definir TYPE Como Texto;
	TYPE = "tComponent";
FinFuncion

Funcion tComponent_Point_Full <- tui_ParseTwoPointsXY_ToString(x0, y0, x1, y1)
	Definir tComponent_Point, tComponent_Point2, tComponent_Point_Full Como Texto;
	tComponent_Point = tui_ParsePointXY_ToString(x0, y0);
	tComponent_Point2 = tui_ParsePointXY_ToString(x1, y1);
	tComponent_Point_Full = string_append_withSeparator(tComponent_Point, tComponent_Point2, symbol_Separator());
FinFuncion

Funcion isSpriteValid <- spriteString_isSpriteValid(spriteString_struct)
	Definir isSpriteValid Como Logico;
	isSpriteValid = string_isEquals(collection_getNameCollection(spriteString_struct), tComponent_TYPE_SPRITE_STRING());
FinFuncion
//---[ ascii_ (#ASC) ]---------------------------------------------------------------------

Funcion result_String <- asci_getPrefix_alphabetic(text_input)
	Definir result_String Como Texto;
	result_String = asci_getPrefix_alphabetic_fromIndex(text_input, 0);
FinFuncion

Funcion result_String <- asci_getPrefix_alphabetic_fromIndex(text_input, start_position)
    Definir result_String Como Texto;
	result_String = ascii_getPrefix_Category_fromIndex(text_input, start_position, ascii_ALPHABETIC());
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

Funcion ascii_category <- ascii_ALPHABETIC
    Definir ascii_category Como Texto; 
    ascii_category = "ALPHABETIC";
FinFuncion

Funcion isType <- ascii_IsNumberSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '0', '9');//48-57
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

Funcion iSinRangue <- ascii_isInRangue(char, char_start, char_end)
	Definir iSinRangue Como Logico;
	iSinRangue = (char_start <= char & char <= char_end);
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

Funcion isType <- ascii_IsControlSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '', '');//0-31
FinFuncion

Funcion isType <- ascii_IsBasicSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, ' ', '/');//32-47
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
