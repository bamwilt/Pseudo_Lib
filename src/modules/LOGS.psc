Algoritmo MODULE_LOGS
	// Test call disabled: log_WARNING() requires arguments
	// TODO: add valid arguments for standalone execution
FinAlgoritmo
///%%%%%[ LOGS................................ ]%%%%%%%[   #LOG    ]%%%%%%%%%%%%%%%%%%%%

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
	native_println(string_append(SELECTED_COLOR, message));
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
//---[ string_ (#STR) ]--------------------------------------------------------------------

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
FinFuncion

Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion
//---[ int_ (#NUM) ]-----------------------------------------------------------------------

Funcion result_string <- number_toString(num)
	Definir result_string Como Texto;
	result_string = native_number_ToString(num);
FinFuncion
//---[ math_ (#MAT) ]----------------------------------------------------------------------

Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion
//---[ if_ (#CDT) ]------------------------------------------------------------------------

Funcion error_message_Function(method, message)
	error_message(string_append_withSeparator(method, message, "//"));
FinFuncion

Funcion error_message(message)
	native_println(symbol_Escape() + "31m[ERROR] // " + message + ".");
FinFuncion
//---[ COLOR_ (#COL) ]---------------------------------------------------------------------

Funcion color <- COLOR_YELLOW
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(3);
FinFuncion

Funcion color <- COLOR_WHITE
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(7);
FinFuncion

Funcion color <- COLOR_RED
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(1);
FinFuncion

Funcion color <- COLOR_BLUE
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(4);
FinFuncion

Funcion color <- COLOR_CYAN
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(6);
FinFuncion

Funcion color <- COLOR_MAGENTA
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(5);
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
