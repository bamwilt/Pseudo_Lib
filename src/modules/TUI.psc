Algoritmo MODULE_TUI
FinAlgoritmo
///%%%%%[ TUI..................... ]%%%%%%%[   #TUI    ]%%%%%%%%%%%%%%%%%%%%
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
	stores_Tcomponents = storageCellsCollection_new(tui_TYPE_TSTORE(), TYPE_STRING(), TYPE_STRING());
	input_Tcomponents  = cellsCollection_new(tui_TYPE_TINPUT(), TYPE_STRING(), 1);
	Tposition   = tui_ParsePointXY_ToString(Wx, Wy);
	tui_frame  = linearCollection_addFirst(tui_frame, stores_Tcomponents);//index:4
	tui_frame  = linearCollection_addFirst(tui_frame, color_window);//index:3
	tui_frame  = linearCollection_addFirst(tui_frame, Tposition);//index:2
	tui_frame  = linearCollection_addFirst(tui_frame, title);//index:1
	tui_frame  = linearCollection_addFirst(tui_frame, input_Tcomponents);//index:0
FinFuncion
//----[ DISPLAY ]----------------------------------------------------<#>
Funcion tui_display(tui_frame)
	Definir Wx, Wy, index_separator Como Numero;
	Definir Wsize, window_view, title, color Como Texto;
	Si tui_IsInterface_Valid(tui_frame) Entonces 
		Wsize = tui_getSize(tui_frame);
		index_separator = string_indexOf(Wsize, symbol_Separator_Simple());
		Wx = string_toNumber(string_substring(Wsize, 0, index_separator));
		Wy = string_toNumber(string_substring_from(Wsize, math_increment(index_separator)));
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
	tComponent_result = storageCellsCollection_getData_byCell_toString(store_tcomponent, name_tcomponent);
FinFuncion

Funcion inputs_TUI <- tui_getInputOptions(tui_frame)
	Definir inputs_TUI, input_inner Como Texto;
	input_inner = tui_getInput(tui_frame);
	inputs_TUI = storageCellsCollection_getSeparateString(input_inner);
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
	tcomponent_target = storageCellsCollection_getData_byCell_toString(tui_store, name_tcomponent);
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
	input_inner = cellsCollection_setterDynamic_add(input_inner, input_string);
	tui_input   = __private_tui_setInput(tui_frame, input_inner);
FinFuncion

Funcion tui_result <- tui_store_addTComponent(tui_frame, name_tcomponent, tcomponent)
	Definir tui_result, tui_store Como Texto;
	tui_store  = tui_getStore(tui_frame);
	tui_result = tui_store_addTComponent_force(tui_frame, tui_store, name_tcomponent, tcomponent);
FinFuncion

Funcion tui_result <- tui_store_addTComponent_force(tui_frame, tui_store, name_tcomponent, tcomponent)
	Definir tui_result Como Texto;
	tui_store  = storageCellsCollection_add_setter_byString(tui_store, name_tcomponent, tcomponent);
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
		Wx = string_toNumber(string_substring(Wsize, 0, index_separator));
		Wy = string_toNumber(string_substring_from(Wsize, math_increment(index_separator)));
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
	index_lengthArea    = math_increment(string_indexOf(struct_storage, symbol_lengthArea()));
	index_dataArea      = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
	count_size          = cellsCollection_getSize(struct_storage);
	cell_length         = storageCellsCollection_getCellLength(struct_storage);
	right_startData     = math_minus(index_endData, count_size * cell_length);
	sequential_lengths  = string_substring(struct_storage, index_lengthArea, index_dataArea);
	sequential_data     = string_substring(struct_storage, math_increment(index_dataArea), right_startData);
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
		i = math_increment(length_Stringsummations);
	FinSi
	Mientras i <= length_Stringsummations Hacer
		Char_Current = char_At(sequential_lengths, i);
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(num_carry, Char_Current);
		FinSi
		Si !IsNumber & !string_isEmpty(num_carry) | number_isEquals(i, length_Stringsummations) Entonces
			length_value = string_toNumber(num_carry);
			si length_value > 0 Entonces
				index_tComponent_Dec = math_minus(index_Tcomponent, length_value);
				data_Current 	     = string_substring(sequential_data, index_tComponent_Dec, index_Tcomponent);
				new_canvas  		 = canvas_DrawTComponent(new_canvas, Cx, Cy, data_Current);
				index_Tcomponent     = index_tComponent_Dec;
			SiNo
				error_message_Function("__private_toCanvas_bySequential_data()","size tcomponent length < 1");
			FinSi
			num_carry      		 = "";// clear
		FinSi
		i = math_increment(i);
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
	store_result = storageCellsCollection_delete_byString(store_tcomponents, name_tcomponent);
	tui_result   = __private_tui_setStore(tui_frame, store_result);
FinFuncion

Funcion tui_result <- tui_input_delete(tui_frame, input_target)
	Definir tui_result, tui_input Como Texto;
	tui_input  = tui_getInput(tui_frame);
	tui_result = tui_input_delete_force(tui_frame, tui_input, input_target);
FinFuncion

Funcion tui_result <- tui_input_delete_force(tui_frame, input_tui, input_target) 
	Definir tui_result, tui_input_result Como Texto;
	tui_input_result = cellsCollection_setter_delete_byString(input_tui, input_target);
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
	Exist_input = cellsCollection_setter_constains(input_inner, input_string);
FinFuncion

Funcion isTUI <- tui_IsInterface_Valid(interface_string)
	Definir isTUI Como Logico;
	isTUI = string_isEquals(collection_getNameCollection(interface_string), tui_TYPE_TFRAME());
FinFuncion
//----[ PARSE_POINT ]----------------------------------------------------<#>
Funcion tComponent_Point <- tui_ParsePointXY_ToString(x0, y0)
	Definir tComponent_Point Como Texto;	
	tComponent_Point = string_append_withSeparator(number_toString(x0), number_toString(y0), symbol_Separator_Simple());
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
///=====[ DEPENDENCIES ]=====[  ///   ]=====================================
//--[ARRAY]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion str_array <- array_ofstring_separator(array, Size, separator, type)
	Definir str_array Como Texto;
	Definir i Como Numero;
	str_array = "";
	i=0;
	Size = math_decrement(Size);
	Mientras i < Size Hacer
		str_array = string_append(str_array, value_TypeToString(array[i], type));
		str_array = string_append(str_array, separator);
		i=math_increment(i);
	FinMientras
	str_array = string_append(str_array, value_TypeToString(array[i], type));
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

//--[ASCI]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result_String <- asci_getPrefix_alphabetic(text_input)
	Definir result_String Como Texto;
	result_String = asci_getPrefix_alphabetic_fromIndex(text_input, 0);
FinFuncion

Funcion result_String <- asci_getPrefix_alphabetic_fromIndex(text_input, start_position)
    Definir result_String Como Texto;
	result_String = ascii_getPrefix_Category_fromIndex(text_input, start_position, ascii_ALPHABETIC());
FinFuncion

//--[ASCII]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion isType <- ascii_IsNumberSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '0', '9');//48-57
FinFuncion

Funcion iSinRangue <- ascii_isInRangue(char, char_start, char_end)
	Definir iSinRangue Como Logico;
	iSinRangue = (char_start <= char & char <= char_end);
FinFuncion

Funcion result_String <- ascii_getPrefix_Numbers_fromIndex(text_input, start_position)
    Definir result_String Como Texto;
    result_String = ascii_getPrefix_Category_fromIndex(text_input, start_position, ascii_NUMBER());
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

Funcion ascii_category <- ascii_NUMBER
    Definir ascii_category Como Texto; 
    ascii_category = "NUMBER";
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

//--[BOOLEAN]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion text <- boolean_ToString(boolean)	
	Definir text Como Texto;
	text = if_else(boolean, "true", "false");
FinFuncion

//--[CANVAS]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion canvas_displayWindow_monoColor(canvas, Cx, Cy, title, color_window)
	canvas_displayWindow_color(canvas, Cx, Cy, title, color_window, COLOR_CYAN());
FinFuncion

Funcion canvas <- canvas_new_WithPixel(CWx, CWy, pixel_BackGround)
	Definir i Como Numero;
	Definir canvas, canvas_x Como Texto;
	canvas_x = canvas_Row_WithText(pixel_BackGround, CWx);
	Para i=1 Hasta CWy Con Paso 1 Hacer
		canvas = string_append(canvas, canvas_x);
	FinPara
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

Funcion canvas_displayWindow_color(canvas, Cx, Cy, title, color_window, color_title)
	Definir end_line, title_bar como Texto;
	canvas = canvas_addColumn_withPixel(canvas, Cx, Cy, "?");
	Cx = math_increment(Cx);
	canvas = canvas_addColumn_atStart_withPixel(canvas, Cx, Cy, "?");
	Cx = math_increment(Cx);
	title_bar = __private_window_getTitleBar_color(title, Cx, color_window, color_title);
	canvas_display(title_bar, __private_window_calcTitleBarColorLength(Cx, color_window, color_title), 3);
	canvas_display_MonoColor(canvas, Cx, Cy, color_window);
	end_line = canvas_Row_WithText_toBorders("?", Cx, "`");
	native_println(color_setcolorText(end_line, color_window));
FinFuncion

Funcion row_x <- canvas_Row_WithText(text, repeats)
	Definir row_x Como Texto;
	row_x = string_repeatText(text, repeats);
FinFuncion

Funcion canvas_Result <- canvas_DrawtComponent_Button(canvas, Cx, Cy, Tbutton)
	Definir canvas_Result, pos_Tbutton, text_Tbutton Como Texto;
	Definir index_separator, x0, y0 Como Numero;
	canvas_Result = canvas;
	si tComponent_IsTcomponent(Tbutton) Entonces
		pos_Tbutton = tComponent_getTProperty_position(Tbutton);
		text_Tbutton = tComponent_getTProperty_text(Tbutton);
		index_separator = string_indexOf(pos_Tbutton, symbol_Separator_Simple());
		x0 = string_toNumber(string_substring(pos_Tbutton, 0, index_separator));
		y0 = string_toNumber(string_substring_from(pos_Tbutton, math_increment(index_separator)));
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
		x0 = string_toNumber(string_substring(pos_Tlabel, 0, index_separator));
		y0 = string_toNumber(string_substring_from(pos_Tlabel, math_increment(index_separator)));
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
		x0 = string_toNumber(string_substring(pos_Thrz_ruler, 0, index_separator));
		y0 = string_toNumber(string_substring_from(pos_Thrz_ruler, math_increment(index_separator)));
		width_hr = string_toNumber(tComponent_getTProperty_value(THrzRuler));
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
		x0 = string_toNumber(string_substring(pos_Tvrz_ruler, 0, index_separator));
		y0 = string_toNumber(string_substring_from(pos_Tvrz_ruler, math_increment(index_separator)));
		height_vrz = string_toNumber(tComponent_getTProperty_value(TVrtRuler));
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
		x0 = string_toNumber(string_substring(pos_Tpanel, 0, index_separator));
		y0 = string_toNumber(string_substring(pos_Tpanel, math_increment(index_separator), index_separatorPos));
		width = string_toNumber(string_substring(pos_Tpanel, math_increment(index_separatorPos), index_separator_down));
		height = string_toNumber(string_substring_from(pos_Tpanel, math_increment(index_separator_down)));
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
		x0 = string_toNumber(string_substring(pos_TSprite, 0, index_separator));
		y0 = string_toNumber(string_substring_from(pos_TSprite, math_increment(index_separator)));
		SpriteString = tComponent_getTProperty_text(TSprite);
		sprite_Effect = tComponent_getTProperty_value(TSprite);
		canvas_Result = __private_canvas_DrawspriteString_sprite_effect(canvas, Cx, Cy, SpriteString, x0, y0, pixel_clear(), sprite_Effect);
	FinSi
FinFuncion

Funcion canvas_result <- canvas_addColumn_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addColumns_withPixel(canvas, CWx, CWy, 1, pixel);
FinFuncion

Funcion canvas_result <- canvas_addColumn_atStart_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addColumns_atStart_withPixel(canvas, CWx, CWy, 1, pixel);
FinFuncion

Funcion canvas_display(canvas, CWx, CWy)
	canvas_display_MonoColor(canvas, CWx, CWy, "");
FinFuncion

Funcion canvas_display_MonoColor(canvas, CWx, CWy, color)
	Definir i, slice_start, slice_end Como Numero;
	Definir canvas_array, DrawX Como Texto;
	Dimension canvas_array[CWy];
	para i=0 Hasta math_decrement(CWy) con paso 1 Hacer
		slice_start = canvas_getIndex(0, i, CWx);
		slice_end 	= canvas_getIndex(0, math_increment(i), CWx);
		DrawX		= string_substring(canvas, slice_start, slice_end);
		canvas_array[i] = DrawX;
	FinPara	
	println_array_color(canvas_array, CWy, color);
FinFuncion

Funcion row_x <- canvas_Row_WithText_toBorders(text, repeats, border)
	Definir row_x, row_line Como Texto;
	Definir repeats_norm Como Entero;
	repeats_norm = math_max_int(math_minus(repeats, 2), 0);
	row_line = string_repeatText(text, repeats_norm);
    row_x = string_append_withSeparator(border, border, row_line);
FinFuncion

Funcion canvas_Result <- canvas_DrawButton(canvas, Cx, Cy, text, x0, y0)
	Definir canvas_Result Como Texto;
	Definir x1, y1, length_Text, xt, yt Como Numero;
	canvas_Result = canvas;
	length_Text = string_Length(text);
	xt = math_increment(x0);
	yt = math_increment(y0);
	x1 = math_sum(xt, math_increment(length_Text));
	y1 = math_increment(yt);
	canvas_Result = canvas_DrawRectangle_whitPixels_Full(canvas_Result, Cx, Cy, "_","?", "|", "|", x0, y0, x1, y1);
	canvas_Result = canvas_DrawText(canvas_Result, Cx, Cy, text, xt, yt);
	canvas_Result = canvas_DrawRectanglePoint(canvas_Result, Cx, Cy, " ", x0, y0, math_decrement(x1), y1);
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

Funcion canvas_Result <- canvas_DrawLine_Horizontal(canvas, Cx, Cy, x0, y0, width)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas_DrawLine_Horizontal_withPixel(canvas, Cx, Cy, x0, y0, width, "_");
FinFuncion

Funcion canvas_Result <- canvas_DrawLine_Vertical(canvas, Cx, Cy, x0, y0, height)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas_DrawLine_Vertical_withPixel(canvas, Cx, Cy, x0, y0, height,  "?");
FinFuncion

Funcion canvas_Result <- canvas_DrawPanel(canvas, Cx, Cy, x0, y0, width, height)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas;
	canvas_Result  = canvas_DrawLine_Vertical(canvas_Result, Cx, Cy, x0, y0, height);
	canvas_Result = canvas_DrawLine_Vertical(canvas_Result, Cx, Cy, math_decrement(width), y0, height);
	canvas_Result = canvas_DrawLine_Horizontal(canvas_Result, Cx, Cy, x0, y0, width);
	height = math_decrement(height);
	canvas_Result = canvas_DrawLine_Horizontal(canvas_Result, Cx, Cy, x0, height, width);
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, x0, y0, ".");
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, x0, height, "`");
	width = math_decrement(width);
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, width, y0, ".");
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, width, height, "`");
FinFuncion

Funcion canvas_result <- canvas_addColumns_withPixel(canvas, CWx, CWy, num_columns, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addColumns_ofIndex_withPixel(canvas, CWx, CWy, num_columns, 0, pixel);
FinFuncion

Funcion canvas_result <- canvas_addColumns_atStart_withPixel(canvas, CWx, CWy, num_columns, pixel)
	Definir canvas_result Como Texto;
	canvas_result = canvas_addColumns_ofIndex_withPixel(canvas, CWx, CWy, num_columns, CWx, pixel);
FinFuncion

Funcion index_canvas <- canvas_getIndex(x0, y0, CWx)
	Definir index_canvas Como Numero;
	index_canvas= x0+(y0*CWx);
FinFuncion

Funcion canvas_rectangle <- canvas_DrawRectangle_whitPixels_Full(canvas, Cx, Cy, pixel_H, pixel_H1, pixel_V, pixel_V1, x0, y0, x1, y1)
    Definir canvas_rectangle Como Texto;
	canvas_rectangle = canvas;
	canvas_rectangle = canvas_DrawLine_whitPixel(canvas_rectangle, Cx, Cy, pixel_V,  x0, y0, x0, y1);//left
	canvas_rectangle = canvas_DrawLine_whitPixel(canvas_rectangle, Cx, Cy, pixel_V1, math_decrement(x1), y0, math_decrement(x1), y1);//Right
	canvas_rectangle = canvas_DrawLine_whitPixel(canvas_rectangle, Cx, Cy, pixel_H,  x0, y0, x1, y0);//top
    canvas_rectangle = canvas_DrawLine_whitPixel(canvas_rectangle, Cx, Cy, pixel_H1, x0, y1, x1, y1);//botton
FinFuncion

Funcion canvas_Result <- canvas_DrawRectanglePoint(canvas, Cx, Cy, pixel, x0, y0, x1, y1)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas;
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, x0, y0, pixel);
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, x0, y1, pixel);
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, x1, y0, pixel);
	canvas_Result = canvas_DrawPoint_withPixel(canvas_Result, Cx, Cy, x1, y1, pixel);
FinFuncion

Funcion canvas_Result <- canvas_DrawLine_Horizontal_withPixel(canvas, Cx, Cy, x0, y0, width, pixel)
	Definir canvas_Result, horizontalLine_String Como Texto;
	canvas_Result = canvas;
	si width > 0 Entonces
		horizontalLine_String  = string_repeatText(Pixel, width);
		canvas_Result = canvas_DrawText(canvas_Result, Cx, Cy, horizontalLine_String, x0, y0);
	FinSi
FinFuncion

Funcion canvas_Result <- canvas_DrawLine_Vertical_withPixel(canvas, Cx, Cy, x0, y0, height, pixel)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas;
	si height > 0 Entonces
		canvas_Result = canvas_DrawLine_whitPixel(canvas_Result, Cx, Cy, pixel, x0, y0, x0, math_sum(y0, height));
	FinSi
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

Funcion canvas_result <- canvas_addColumns_ofIndex_withPixel(canvas, CWx, CWy, num_columns, x_start, pixel)
	Definir canvas_result, text_extra Como Texto;
	Definir i, x_insert Como Numero;
	canvas_result = canvas;
	text_extra = canvas_Row_WithText(pixel, num_columns);
	x_insert = math_rangeLimit_Int(x_start, 0, CWx);
	i = math_decrement(Cwy);
	Mientras i >= 0 Hacer
		canvas_result = string_insert(canvas_result, text_extra, canvas_getIndex(x_insert, i, CWx));
		i = math_decrement(i);
	FinMientras
FinFuncion

Funcion canvas_line <- canvas_DrawLine_whitPixel(canvas, CWx, CWy, pixel_symb,  x0, y0, x1, y1)
    Definir canvas_line Como Texto;
    Definir Cx, Cy, xi, yi, xi_rec, yi_rec, x_, y_, error Como Entero;
	
    Cx = x1 - x0;//2-10=-8
    Cy = y1 - y0;//3-10=-7
	
    xi = if_else(Cx >= 0, 1, -1);// -1
    yi = if_else(Cy >= 0, 1, -1);// -1
	
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
            x_ = math_sum(x_, xi);//10+ -1
            y_ = math_sum(y_, yi);//10+ -1
            error = error + 2 * (Cy - Cx);// 9 + (2*(7-8)) = 9+ -2 = 7
        SiNo
            x_ = math_sum(x_, xi_rec);
            y_ = math_sum(y_, yi_rec);
            error = error + 2 * Cy;
        FinSi
    FinMientras
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

Funcion canvas_Sprite <- canvas_DrawSprite_Array(canvas, Cx, Cy, x0, y0, array_sprite, size)	
	Definir canvas_Sprite Como Texto;
	Definir i Como Numero;
	canvas_Sprite = canvas;
	size = size;
	i = 0;
	Mientras i < size & math_sum(i, y0) < Cy Hacer
		canvas_Sprite = canvas_DrawText(canvas_Sprite,Cx, Cy, array_sprite[i], x0, y0+i);
		i = math_increment(i);
	FinMientras
FinFuncion

Funcion canvas_Sprite <- canvas_Drawsprite_Cutout(canvas, Cx, Cy, x0, y0, array_sprite, size)	
	Definir canvas_Sprite Como Texto;
	canvas_Sprite = canvas_Drawsprite_Trimmed(canvas, Cx, Cy, x0, y0, array_sprite, size, " ");
FinFuncion

Funcion canvas_Sprite <- canvas_Drawsprite_Trimmed(canvas, Cx, Cy, x0, y0, array_sprite, size, symbol_Trimmed)	
	Definir canvas_Sprite, canvas_background Como Texto;
	Definir i, index_interruption, index_Crop Como Numero;
	Mientras i < size & math_sum(i, y0) < Cy Hacer
		array_sprite[i] = string_Strip_Right(array_sprite[i], symbol_Trimmed);
		index_interruption = string_FindInterruption_Left(array_sprite[i], symbol_Trimmed);
		index_Crop = canvas_getIndex(x0, math_sum(y0, i), Cx);
		canvas_background  = string_substring(canvas, index_Crop, math_sum(index_Crop, index_interruption));
		array_sprite[i]  = string_insert_withReplace(array_sprite[i], canvas_Background, 0);
		i = math_increment(i);
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
	Mientras i < size & math_sum(i, y0) < Cy Hacer
		array_sprite[i] = string_TextReverse_Caracters(array_sprite[i], array_symbol, size_symb);
		i = math_increment(i);
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
    array_symbol[8] = "_";array_symbol[9] = "?";
	Dimension array_column_invert[size];
	Mientras i < size & math_sum(i, y0) < Cy Hacer
		array_column_invert[i] = string_TextReverse_Caracters(array_sprite[math_minus(size, math_increment(i))], array_symbol, size_symb);
		i = math_increment(i);
	FinMientras
	canvas_Sprite = canvas_Drawsprite_Cutout(canvas, Cx, Cy, x0, y0, array_column_invert, size);
FinFuncion

//--[CELL]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion MODE <- CELL_SETTER_DYNAMIC
	Definir MODE Como Texto;
	MODE = "mode_setterDynamic";
FinFuncion

Funcion MODE <- CELL_FIXED
	Definir MODE Como Texto;
	MODE = "mode_fixed";
FinFuncion

Funcion MODE <- CELL_SETTER
	Definir MODE Como Texto;
	MODE = "mode_setter";
FinFuncion

Funcion MODE <- CELL_DYNAMIC
	Definir MODE Como Texto;
	MODE = "mode_dynamic";
FinFuncion

//--[CELLSCOLLECTION]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion new_cellsCollection <- cellsCollection_new(struct_name, TYPE, fixed_Length)
	Definir new_cellsCollection Como Texto;
	new_cellsCollection = String_append(struct_name, symbol_cell_length());
	new_cellsCollection = String_append(new_cellsCollection, cellsCollection_setNormCellLength(fixed_Length));
	new_cellsCollection = String_append(new_cellsCollection, symbol_typeArea());
	new_cellsCollection = String_append(new_cellsCollection, TYPE);
	new_cellsCollection = String_append(new_cellsCollection, symbol_dataArea());
	new_cellsCollection = String_append(new_cellsCollection, symbol_extraData());
	new_cellsCollection = String_append(new_cellsCollection, "0");
FinFuncion

Funcion result_cells <- cellsCollection_setterDynamic_add(struct_cells, element)
	Definir result_cells, TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_cells);
	result_cells = cellsCollection_setterDynamic_add_byType(struct_cells, element, TYPE);
FinFuncion

Funcion size_dataBlock <- cellsCollection_getSize(struct_name)
	Definir size_dataBlock Como Entero;	
	size_dataBlock = linearCollection_getSize(struct_name);
FinFuncion

Funcion result_cells <- cellsCollection_setter_delete_byString(struct_cells, value_string)
	Definir result_cells Como Texto;
	Definir index_target Como Entero;
	index_target = cellsCollection_setter_getIndex_byString(struct_cells, value_string);
	si !number_isEquals(index_target, number_NULL()) Entonces
		result_cells = cellsCollection_delete_byIndex(struct_cells, index_target);
	FinSi
FinFuncion

Funcion constains_string <- cellsCollection_setter_constains(struct_cells, element_string)
	Definir constains_string Como Logico;
	constains_string = cellsCollection_setter_getIndex_byString(struct_cells, element_string) >= 0;
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

Funcion cells_index <- cellsCollection_calcule_indexBlock_atEnd(index_end, index_search, cell_length)
	Definir cells_index Como Entero;
	cells_index = math_minus(index_end, (index_search * cell_length));
FinFuncion

Funcion result_cells <- cellsCollection_setterDynamic_add_byType(struct_cells, element, TYPE)
	Definir result_cells, element_string Como Texto;
	element_string = value_TypeToString(element, TYPE);
	result_cells = cellsCollection_setterDynamic_add_byString(struct_cells, element_string);
FinFuncion

Funcion index_cell <- cellsCollection_setter_getIndex_byString(struct_cells, element_string)
	Definir index_cell, cells_size Como Entero;
	cells_size = cellsCollection_getSize(struct_cells);
	index_cell <- cellsCollection_setter_getIndex_byString_inRange(struct_cells, element_string, 0, cells_size);
FinFuncion

Funcion result_cells <- cellsCollection_delete_byIndex(struct, index)
	Definir result_cells Como Texto;
	Definir index_dataArea, cells_size, cell_length Como Entero;
	result_cells = struct_cells;
	cells_size = cellsCollection_getSize(result_cells);
	si Collection_IndexIsValid(cells_size, index) Entonces
		cell_length = cellsCollection_getCellLength(result_cells);
		index_dataArea    = math_increment(String_indexOf(result_cells, symbol_dataArea()));
		result_cells     = cellsCollection_delete_byIndex_force(struct, index, index_dataArea, cell_length);
		result_cells     = linearCollection_decrement_numElement(result_cells);
	SiNo
		error_message_Function("cellsCollection_delete_byIndex(struct, index)", "index invalid");
	FinSi
FinFuncion

Funcion min_fixed <- cellsCollection_getMinFixed
	Definir min_fixed Como Entero;
	min_fixed = 1;
FinFuncion

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

Funcion result_cells <- cellsCollection_setterDynamic_add_byString(struct_cells, element_string)
	Definir result_cells Como Texto;
	si cellsCollection_setter_constains(struct_cells, element_string) Entonces
		result_cells = struct_cells;
	SiNo
		result_cells = cellsCollection_Dynamic_add_byString(struct_cells, element_string);
	FinSi
FinFuncion

Funcion isChanged <- cellsCollection_isChanged(struct_cell, last_length)
	Definir isChanged Como Logico;
	isChanged = (string_Length(struct_cell) > last_length);
FinFuncion

Funcion index_cell <- cellsCollection_setter_getIndex_byString_inRange(struct_cells, element_string, index_start, index_end)
	Definir index_cell, cell_length, index_startData Como Entero;
	cell_length = cellsCollection_getCellLength(struct_cells);
	index_startData = cellsCollection_getStartData(struct_cells);
	index_cell  = cellsCollection_setter_getIndex_byString_inRange_force(struct_cells, element_string, index_start, index_end, index_startData, cell_length);
FinFuncion

Funcion cell_length <- cellsCollection_getCellLength(struct_cells)
	Definir cell_length, index_symbol_cell Como Entero;	
	Definir cell_length_String Como Texto;
	index_symbol_cell  = string_indexOf(struct_cells, symbol_cell_length());
	index_symbol_cell  = math_increment(index_symbol_cell);
	cell_length_String = ascii_getPrefix_Numbers_fromIndex(struct_cells, index_symbol_cell);
	cell_length        = string_toNumber(cell_length_String);
FinFuncion

Funcion result_cells <- cellsCollection_delete_byIndex_force(struct_cells, index, index_start, cell_length)
	Definir result_cells Como Texto;
	Definir cells_index, cells_index_end, cells_size Como Entero;
	result_cells = struct_cells;
	cells_index     = cellsCollection_calcule_indexBlock(index_start, index, cell_length);
	cells_index_end = math_sum(cells_index, cell_length);
	result_cells    = string_delete(result_cells, cells_index, cells_index_end);
FinFuncion

Funcion element_cells <- cellsCollection_String_normalizedToBlockLegth(element_string, cell_length)
	Definir element_cells Como Texto;
	element_cells = string_fit_end(element_string, String_repeatText(cellsCollection_symbol_null(), cell_length));
FinFuncion

Funcion result_string <- cellsCollection_clear_cellString(element_string, cell_length)
	Definir result_string Como Texto;
	Definir index_clear Como Entero;
	index_clear = cellsCollection_indexOf_clearData(element_string, cell_length);
	result_string = string_substring(element_string, 0, index_clear);
FinFuncion

Funcion result_cells <- cellsCollection_Dynamic_add_byString(struct_cells, element_string)
	Definir result_cells Como Texto;
	Definir index_dataArea, cell_length, cells_size Como Entero;
	result_cells  = struct_cells;
	cell_length  = cellsCollection_getCellLength(result_cells);
	index_dataArea = cellsCollection_getStartData(struct_cells);
	cells_size    = cellsCollection_getSize(result_cells);
	result_cells  =  cellsCollection_Dynamic_add_byString_force(struct_cells, element_string, index_dataArea, cells_size, cell_length);
	result_cells  = linearCollection_increment_numElement(result_cells);
FinFuncion

Funcion index_startData <- cellsCollection_getStartData(struct_cells)
	Definir index_startData Como Entero;
	index_startData = math_increment(collection_getIndex_dataArea(struct_cells));
FinFuncion

Funcion cells_index <- cellsCollection_calcule_indexBlock(index_start, index_search, cell_length)
	Definir cells_index Como Entero;
	cells_index = math_sum(index_start, (index_search * cell_length));
FinFuncion

Funcion symbol <- cellsCollection_symbol_null
	Definir symbol Como Texto;
	symbol = "";
FinFuncion

Funcion index_clear <- cellsCollection_indexOf_clearData(dataBlock, cell_length)
	Definir index_clear Como Entero;
	Definir current_char Como Texto;
	Definir no_found Como Logico;
	index_clear = cell_length;
	no_found = true();
	Mientras (index_clear > 0) & no_found Hacer
		current_char = char_At(dataBlock, math_decrement(index_clear));
		Si String_isEquals(current_char, cellsCollection_symbol_null()) Entonces
			index_clear = math_decrement(index_clear);
		Sino
			no_found = false();
		FinSi
	FinMientras
FinFuncion

Funcion result_cells <- cellsCollection_Dynamic_add_byString_force(struct_cells, element_string, index_start, index_insert, cell_length)
	Definir result_cells Como Texto;
	Definir element_length Como Entero;
	result_cells  = struct_cells;
	element_length = String_length(element_string);
	result_cells  = cellsCollection_Dynamic_ensureCapacity(struct_cells, cell_length, element_length);
	cell_length  = math_max_Int(cell_length, element_length);
	result_cells  = cellsCollection_add_byString_force(result_cells, element_string, index_start, index_insert, cell_length);
FinFuncion

Funcion result_cells <- cellsCollection_Dynamic_ensureCapacity(struct_cells, cell_length, required_length)
	Definir result_cells Como Texto;
	result_cells = struct_cells;
	si required_length > cell_length Entonces
		result_cells = cellsCollection_Dynamic_reSize(result_cells, required_length);
	FinSi
FinFuncion

Funcion result_cells <- cellsCollection_add_byString_force(struct_cells, element_string, index_start, index_insert, cell_length)
	Definir result_cells Como Texto;
	Definir cells_index, cells_size Como Entero;
	result_cells = struct_cells;
	element_string = cellsCollection_String_normalizedToBlockLegth(element_string, cell_length);
	cells_index = cellsCollection_calcule_indexBlock(index_start, index_insert, cell_length);
	result_cells = String_insert(result_cells, element_string, cells_index);
FinFuncion

Funcion result_cells <- cellsCollection_Dynamic_reSize(struct_cells, new_fixed_Length)
	Definir result_cells Como Texto;
	Definir cells_size Como Entero;
	result_cells = struct_cells;
	cells_size   = cellsCollection_getSize(result_cells);
	result_cells = cellsCollection_Dynamic_reSize_inRange(result_cells, new_fixed_Length, 0, cells_size);
	result_cells = cellsCollection_Dynamic_UpdateLength(result_cells, new_fixed_Length);
FinFuncion

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

Funcion result_cells <- cellsCollection_Dynamic_reSize_inRange(struct_cells, new_fixed_Length, index_start, index_end)
	Definir result_cells Como Texto;
	Definir cell_length, index_endData, index_startData Como Entero;
	result_cells = struct_cells;
	cell_length = cellsCollection_getCellLength(result_cells);
	index_startData = cellsCollection_getStartData(result_cells);
	index_endData = cellsCollection_calcule_indexBlock(index_startData, index_end, cell_length);
	result_cells = cellsCollection_Dynamic_reSize_inRange_force(result_cells, new_fixed_Length, index_start, index_end, index_endData, cell_length);
FinFuncion

Funcion result_cells <- cellsCollection_Dynamic_UpdateLength(struct_cells, new_fixed_length)
	Definir result_cells, fixed_length Como Texto;
	Definir start_fixed, end_fixed Como Entero;
	start_fixed = math_increment(string_indexOf(struct_cells, symbol_cell_length()));
	end_fixed   = math_increment(ascii_getEndIndex_Category(struct_cells, start_fixed, ascii_NUMBER()));
	fixed_length = number_toString(new_fixed_length);
	result_cells = collection_replaceRange(struct_cells, fixed_length, start_fixed, end_fixed);
FinFuncion

//--[CHAR]-- -- -- -- -- -- -- -- -- -- -- -- -- --
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

//--[COLLECTION]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion name_Collection <- collection_getNameCollection(collection)
	Definir name_Collection Como Texto;
	name_Collection = asci_getPrefix_alphabetic(collection);
FinFuncion

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

Funcion index_DataArea <- collection_getIndex_dataArea(struct_Collection)
	Definir index_DataArea Como Numero;
	index_DataArea = string_IndexOf(struct_Collection, symbol_dataArea());
FinFuncion

Funcion index_MetaData <- collection_getIndex_metaData(struct_Collection)
	Definir index_MetaData Como Numero;
	index_MetaData = string_lastIndexOf(struct_Collection, symbol_metaData());
FinFuncion

Funcion type_area <- collection_getContent_TypeArea(collection)
	Definir type_area Como Texto;
	type_area =  collection_getContent_TypeArea_End_Of_Text(collection, symbol_dataArea());
FinFuncion

Funcion index_TypeArea <- collection_getIndex_typeArea(struct_Collection)
	Definir index_TypeArea Como Numero;
	index_TypeArea = string_indexOf(struct_Collection, symbol_typeArea());
FinFuncion

Funcion index_isValid <- Collection_IndexIsValid(struct_Size, index_element)
	Definir index_isValid Como Logico;
	index_isValid = (index_element >= 0 & index_element < struct_Size );
FinFuncion

Funcion type_area <- collection_getContent_Between_Symbols(collection, symbol_start, symbol_end)
	Definir Type_property, type_area Como Texto;
	Definir index_start, index_end, index_check Como Numero;
	index_start = math_increment(string_indexOf(collection, symbol_start));
	index_end = string_indexOf_fromIndex(collection, symbol_end, index_start);
	type_area = string_substring(collection, index_start, index_end);
FinFuncion

Funcion type_area <- collection_getContent_Between_lastSymbols(collection, symbol_start, symbol_end)
	Definir Type_property, type_area Como Texto;
	Definir index_start, index_end, index_check Como Numero;
	index_end = string_LastindexOf(collection, symbol_end);
	index_start = math_increment(string_LastindexOf_fromIndex(collection, symbol_start, index_end));
	type_area = string_substring(collection, index_start, index_end);
FinFuncion

Funcion collection_result <- collection_updateRange(struct_collection, index_start, index_end, data_string)
	Definir collection_result Como Texto;
	collection_result = string_delete(struct_collection, index_start, index_end);
	collection_result = string_insert(collection_result, data_string, index_start);
FinFuncion

Funcion type_area <- collection_getContent_TypeArea_End_Of_Text(collection, text_end)
	Definir type_area Como Texto;
	type_area = collection_getContent_Between_Symbols(collection, symbol_typeArea(), text_end);
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

//--[COLLECTIONSTORAGE]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result_storage <- collectionStorage_Exist_ByString(struct_storage, key)
	Definir result_storage Como Logico;
	result_storage = collectionStorage_GetInnerId_ByString(struct_storage, key) >= 0;
FinFuncion

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

Funcion innerIndex <- collectionStorage_GetInnerId_ByString(struct_storage, key)
    Definir innerIndex Como Numero;
    Definir index_dataArea, count_size Como Numero;
    innerIndex     = number_NULL();
    count_size     = collectionStorage_getSize(struct_storage);
    Si count_size > 0 Entonces
        innerIndex    = __private_collectionStorage_SearchIdKey(struct_storage, key, count_size);
    FinSi
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

//--[COLOR]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion color <- COLOR_GREEN
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(2);
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

Funcion color <- COLOR_CYAN
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(6);
FinFuncion

Funcion text_Color <- color_setColorText(text, color)
	Definir text_Color Como Texto;
	text_Color = string_append(color, text);
FinFuncion

Funcion color <- COLOR_RED
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(1);
FinFuncion

//--[DUALCELLSCOLLECTION]-- -- -- -- -- -- -- -- -- -- -- -- -- --
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

Funcion separate_string <- dualCellsCollection_getSeparateString_right(struct_cells)
	Definir separate_string, data_string Como Texto;
	Definir start_data, end_data, count_size, cell_length Como Numero;
	count_size  = dualCellsCollection_getSize(struct_cells);
	cell_length = dualCellsCollection_getCellLength_right(struct_cells);
	end_data    = dualCellsCollection_getEndData(struct_cells);
	start_data  = cellsCollection_calcule_indexBlock_atEnd(end_data, count_size, cell_length);
	data_string = string_substring(struct_cells, start_data, end_data);
	separate_string = managerData_getSeparateString_cells(data_string, count_size, cell_length);
FinFuncion

Funcion size_dataBlock <- dualCellsCollection_getSize(struct_cells)
	Definir size_dataBlock Como Entero;
	size_dataBlock = cellsCollection_getSize(struct_cells);
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

Funcion index_cell <- dualCellsCollection_setter_getIndex_right(struct_cells, value_search)
	Definir TYPE, string_search Como Texto; 
	Definir index_cell Como Entero;
	TYPE          = dualCellsCollection_getType_right(struct_cells);
	string_search = value_TypeToString(value_search, TYPE);
	index_cell    = dualCellsCollection_setter_getIndex_right_byString(struct_cells, string_search);
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

Funcion result_cells <- dualCellsCollection_Dynamic_reSize_right_force(struct_cells, new_fixed_Length, index_endData, cells_size, cell_length)
	Definir result_cells Como Texto;
	result_cells = cellsCollection_Dynamic_reSize_inRange_force(struct_cells, new_fixed_Length, 0, cells_size, index_endData, cell_length);	
	result_cells = dualCellsCollection_UpdateLength_right(result_cells, new_fixed_Length);
FinFuncion

Funcion result_cells <- dualCellsCollection_UpdateLength_right(struct_cells, new_fixed_Length)
	Definir result_cells Como Texto;
	result_cells = collection_replaceRange_between_lastSymbols(struct_cells, number_toString(new_fixed_Length), symbol_metaData(), symbol_ExtraData());
FinFuncion

//--[ERROR]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion error_message_Function(method, message)
	error_message(string_append_withSeparator(method, message, "//"));
FinFuncion

Funcion error_message(message)
	native_println(symbol_Escape() + "31m[ERROR] // " + message + ".");
FinFuncion

//--[EXECTION]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion exection_Error(message_Error)
	Definir error_int Como Entero;
	log_ERROR(message_Error);
	error_int = string_NULL();
FinFuncion

//--[FALSE]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion boolean <- false
	Definir boolean Como Logico;
	boolean = Falso;
FinFuncion

//--[FLOAT]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result_string <- float_ToString(num)
	Definir result_string Como Texto;
	result_string = native_number_toString(num);
	Si !string_isNumber_float(result_string) Entonces
		exection_Error(string_append("Error de tipado Float: ", result_string));
	FinSi
FinFuncion

//--[GENERAL]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion newTComponent <- __private_tComponent_ForcerdnewSpriteString(string_Sprite, sprite_effect, x0, y0)
	Definir newTComponent, pos_panel Como Texto;
	newTComponent = tComponent_new(tComponent_TYPE_SPRITE_STRING(), x0, y0);
	newTComponent = tComponent_addTPropertyText(newTComponent, string_Sprite);
	newTComponent = tComponent_addTPropertyValue(newTComponent, sprite_effect);
FinFuncion

Funcion user_input <- __private_user_input_options_separator(user_input_obtained, options_text, separator, TYPE)
	user_input_obtained = if(string_struct_contains(user_input_obtained, options_text, separator), user_input_obtained, TYPE_STRING());
	Segun TYPE Hacer
		caso TYPE_BOOLEAN(): Definir user_input Como Logico;
		caso TYPE_INT(): Definir user_input Como Numero;
		caso TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = value_stringToType(user_input_obtained, TYPE);
FinFuncion

Funcion collection_result <- __private_linearCollection_ModifyElement(struct_linearCollection, index_modify, value_string)
	Definir collection_result, sequential_package, sequential_lengths, sequential_data Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData Como Numero;
	index_Data 		   = math_increment(string_indexOf(struct_linearCollection, symbol_dataArea()));
	index_ExtraData    = string_LastindexOf(struct_linearCollection, symbol_ExtraData());
	index_MetaData	   = string_LastindexOf_fromIndex(struct_linearCollection, symbol_metaData(), index_ExtraData);
	sequential_data    = string_substring(struct_linearCollection, index_Data, index_MetaData);
	sequential_lengths = string_substring(struct_linearCollection, math_increment(index_MetaData), index_ExtraData);
	sequential_package = managerData_modify(sequential_data, sequential_lengths, index_modify, value_string, false());
	collection_result = collection_updateRange(struct_linearCollection, index_Data, index_ExtraData, sequential_package);
FinFuncion

Funcion boolean <- __private_isEquals_general(value1, value2)
	Definir boolean Como Logico;
	boolean = (value1 == value2);
FinFuncion

Funcion result_cells <- __private_dualCellsCollection_delete_right(struct_cells, index, cell_length)
	Definir result_cells Como Texto;
	Definir index_endData, cells_index, cells_index_end Como Entero;
	result_cells     = struct_cells;
	index_endData    = dualCellsCollection_getEndData(result_cells);
	cells_index_end  = cellsCollection_calcule_indexBlock_atEnd(index_endData, index, cell_length);
	cells_index      = math_minus(cells_index_end, cell_length);
	result_cells     = string_delete(result_cells, cells_index, cells_index_end);
FinFuncion

Funcion result_storage <- __private_collectionStorage_deleteIndexed(struct_storage, index_lengthArea, index_target, count_size)
	Definir result_storage, sequential_data, sequential_lengths, sequential_package Como Texto;
    Definir index_dataArea, index_metaData Como Numero;
	result_storage = struct_storage;
    Si count_size > 0 Entonces
		index_dataArea     = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
		index_metaData	   = string_indexOf_fromIndex(struct_storage, symbol_metaData(), index_dataArea);
		sequential_lengths = string_substring(struct_storage, index_lengthArea, index_dataArea);
		sequential_data    = string_substring(struct_storage, math_increment(index_dataArea), index_metaData);
        sequential_package = managerData_modify(sequential_data, sequential_lengths, index_target, string_NULL(), true());
        result_storage     =  collection_updateRange(result_storage, index_lengthArea, index_metaData, sequential_package);
		result_storage     = linearCollection_decrement_numElement(result_storage);
    FinSi
FinFuncion

Funcion color <- __private_color_getcolor_or_style_forIndex(index)
	Definir color Como Texto;
	color = string_append_withSeparator(symbol_Escape(), "m", number_toString(index));
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

Funcion titlebar <- __private_window_getTitleBar_color(title, width_titleBar, color_bar, color_title)
	Definir titlebar, top_bar, button_bar, center_bar, padding_end Como Texto;
	Definir title_color, top_color, button_color, center_color Como Texto;
	Definir center_width, top_width, res_width Como Entero;
	top_bar       = canvas_Row_WithText_toBorders("_", width_titleBar, ".");
	center_bar	  = __private_window_titleBar_getCenterBar(title, width_titleBar);
	button_bar    = canvas_Row_WithText_toBorders("?", width_titleBar, "?");
	top_color     = color_setColorText(top_bar, color_bar);//...
	button_color  = color_setColorText(button_bar, color_bar);
	center_color  = center_bar;
	center_color  = string_insert(center_color, color_title, 1);
	center_color  = string_insert(center_color, color_bar, math_decrement(string_Length(center_color)));
	center_color  = color_setColorText(center_color, color_bar);
	top_width     = string_Length(top_color);
	center_width  = string_Length(center_color);
	res_width     = math_abs(math_minus(center_width, top_width));
	padding_end   = string_repeatText(" ", res_width);
	si center_width >= top_width Entonces
		top_color    = string_append(top_color, padding_end);
		button_color = string_append(button_color, padding_end);
	SiNo
		center_color = string_append(center_color, padding_end);
	FinSi
	titlebar = string_append_withSeparator(top_color, button_color, center_color);
FinFuncion

Funcion length_colors <- __private_window_calcTitleBarColorLength(width_titleBar, color_bar, color_title)
	Definir length_colors, length_decorator, length_titleDecorator, length_padding Como Entero;
	length_titleDecorator = string_Length(color_title);
	length_decorator = string_Length(color_bar);
	length_padding = math_sum((length_decorator * 2), length_titleDecorator);
	length_colors = math_sum(width_titleBar,  length_padding);
FinFuncion

Funcion key_id <- __private_collectionStorage_SearchIdKey(struct_storage, key_string, collection_size)
	Definir key_id, index_lengthArea, index_dataArea, index_metaData Como Numero;
	Definir result_storage, sequential_data, sequential_lengths Como Texto;
	si collection_size >= 1 Entonces
		index_lengthArea        = math_increment(string_indexOf(struct_storage, symbol_lengthArea()));
		index_dataArea       = string_indexOf_fromIndex(struct_storage, symbol_dataArea(), index_lengthArea);
		index_metaData 	= string_indexOf_fromIndex(struct_storage, symbol_metaData(), index_dataArea);
		sequential_lengths     = string_substring(struct_storage, index_lengthArea, index_dataArea);
		sequential_data           = string_substring(struct_storage, math_increment(index_dataArea), index_metaData);
		key_id				= managerData_getInnerIndex(sequential_data, sequential_lengths, collection_size, key_string);
	SiNo
		key_id = number_NULL();
	FinSi
FinFuncion

Funcion canvas_Sprite <- __private_canvas_DrawspriteString_sprite_effect(canvas, Cx, Cy, spriteString_struct, x0, y0, symbol_Trimmed, sprite_effect)
	Definir canvas_Sprite, sequential_lengths, sequential_data Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData, size_Sprite Como Numero;
	size_Sprite 	 = spriteString_getHeight(spriteString_struct);
	spriteString_struct = linearCollection_DeleteFirst(spriteString_struct);
	index_Data 		 = math_increment(string_indexOf(spriteString_struct, symbol_dataArea()));
	index_ExtraData  = string_LastindexOf(spriteString_struct, symbol_ExtraData());
	index_MetaData   = string_LastindexOf_fromIndex(spriteString_struct, symbol_metaData(), index_ExtraData);
	sequential_data		 = string_substring(spriteString_struct, index_Data, index_MetaData);
	sequential_lengths  = string_substring(spriteString_struct, math_increment(index_MetaData), index_ExtraData);
	canvas_Sprite 	 = __private_Canvas_RenderSpriteString(canvas, Cx, Cy, sequential_data, sequential_lengths,  size_Sprite, symbol_Trimmed, x0, y0, sprite_effect);
FinFuncion

Funcion result_string <- __private_string_insert_general(text, text_insert, index, isReplace)
	Definir result_string, before, after Como Texto;
	Definir index_after Como Entero;
	before        = string_substring(text, 0, index);
	index_after   = math_sum(index, if_else(isReplace, native_string_length(text_insert), 0));
	after         = string_substring_from(text, math_min_int(index_after, native_string_length(text)));
	result_string = string_append_withSeparator(before, after, text_insert);
FinFuncion

Funcion center_bar <- __private_window_titleBar_getCenterBar(title, width_titleBar)
	Definir center_bar, buttons, title_area, side_space Como Texto;
	Definir side_left, side_right, center_content Como Texto;
	Definir usable_width, title_maximum_length, padding Como Entero;
	Definir length_sides, buttons_length Como Entero;
	buttons = "- ? ?";
	buttons_length = string_length(buttons);
	side_space = " ";
	Si width_titleBar < 4 Entonces
		side_space = "";
	FinSi
	side_left = string_append("?", side_space);
	side_right = string_append(side_space, "?");
	length_sides = string_length(string_append(side_left, side_right));
	usable_width = math_max_Int(0, math_minus(width_titleBar, length_sides));
	Si usable_width < buttons_length Entonces
		title_area = "";
		buttons = string_substring(buttons, math_minus(buttons_length, usable_width), buttons_length);
	SiNo
		title_maximum_length = math_minus(usable_width, math_increment(buttons_length));
		title_area = string_fit_toRange(title, 0, title_maximum_length);
		padding = math_minus(title_maximum_length, string_length(title_area));
		title_area = string_append(title_area, string_repeatText(" ", padding));
		title_area = string_append(title_area, " ");
	FinSi
	center_content = string_append(title_area, buttons);
	center_bar = string_append_withSeparator(side_left, side_right, center_content);
FinFuncion

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
			length_value = string_toNumber(num_carry);
			num_range_inc = math_sum(num_range, length_value);
			current_data  = string_substring(sequential_data, num_range, num_range_inc);
			array_sprite[count_line] = current_data;
			count_line = math_increment(count_line);
			num_carry       = "";// clear
			num_range       = num_range_inc;
		FinSi
		i = math_increment(i);
	FinMientras
	canvas_Sprite = Canvas_ApplyRenderEffect(canvas, Cx, Cy, x0, y0, array_sprite, size_Sprite, symbol_Trimmed, sprite_effect);
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

Funcion __private_general_log(message, start_tag, SELECTED_COLOR)
	message = string_append(start_tag, message);
	native_println(string_append(SELECTED_COLOR, message));
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

//--[GET]-- -- -- -- -- -- -- -- -- -- -- -- -- --
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

//--[IF]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result <- if_else(condition, result, result2)
	Si !(condition) Entonces
		result = result2;
	FinSi	
FinFuncion

Funcion result <- if(condition, result, TYPE)
	Si !(condition) Entonces
		result = value_getNullType(TYPE);
	FinSi
FinFuncion

//--[INTERGER]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result_string <- interger_ToString(num)
	Definir result_string Como Texto;
	result_string = native_number_toString(num);
	Si !string_isNumber_int(result_string) Entonces
		exection_Error(string_append("Error de tipado Interger: ", result_string));
	FinSi
FinFuncion

//--[LINEARCOLLECTION]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion new_LinearColletion <- linearCollection_new(struct_Collection, TYPE)
	Definir new_LinearColletion Como Texto;
	new_LinearColletion = string_append_withSeparator(collection_new(struct_Collection, TYPE), "0", symbol_ExtraData());
FinFuncion

Funcion collection_result <- linearCollection_addFirst(struct_Collection, Element)
	Definir collection_result, TYPE Como Texto;
	TYPE = linearCollection_GetType(struct_Collection);
	collection_result = linearCollection_addFirst_ByType(struct_Collection, Element, TYPE);
FinFuncion

Funcion element_String <- linearCollection_getElement_toString(struct_linearCollection, index_element)
	Definir element_String, sequential_package, sequential_lengths, sequential_data Como Texto;
	Definir index_Data, index_MetaData, index_ExtraData Como Numero;
	Si linearCollection_IndexIsValid(struct_linearCollection, index_element) Entonces
		index_Data 		  = math_increment(string_indexOf(struct_linearCollection, symbol_dataArea()));
		index_ExtraData   = string_LastindexOf(struct_linearCollection, symbol_ExtraData());
		index_MetaData	  = string_LastindexOf_fromIndex(struct_linearCollection, symbol_metaData(), index_ExtraData);
		sequential_data 		  = string_substring(struct_linearCollection, index_Data, index_MetaData);
		sequential_lengths   = string_substring(struct_linearCollection, math_increment(index_MetaData), index_ExtraData);
		element_String 	  = managerData_get_toString(sequential_data, sequential_lengths, index_element);
	SiNo
		error_message_Function("linearCollection_getElement_toString", string_append("index_element no is valid Size:", number_toString(linearCollection_getSize(struct_linearCollection))));
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
		index_DataArea = math_increment(collection_getIndex_dataArea(struct_Collection));// (C B A/, 1, 2, 3)
		property_ = string_lastIndexOf(struct_Collection, symbol_Separator());
		element_Length = string_toNumber(string_substring(struct_Collection, math_increment(property_), index_EndMetaData));
		element_String = string_substring(struct_Collection, index_DataArea, math_sum(index_DataArea, element_Length));
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
		index_MetaData = math_sum(collection_getIndex_metaData(struct_Collection), length_separator);
		property_ = string_indexOf_fromIndex(struct_Collection, symbol_Separator(), math_increment(index_MetaData));
		property_ = if_else(property_ > 0, property_, Index_EndMetaData);
		element_Length = string_toNumber(string_substring(struct_Collection, math_increment(index_MetaData), property_));
		index_MetaData = math_minus(index_MetaData, length_separator);
		element_String = string_substring(struct_Collection, math_minus(index_MetaData, element_Length), index_MetaData);
	FinSi
FinFuncion

Funcion collection_result <- linearCollection_SetElement_ToString(struct_Collection, index_element, value_string)
	Definir collection_result, element_String Como Texto;
	collection_result = __private_linearCollection_ModifyElement(struct_Collection, index_element, value_string);
FinFuncion

Funcion type_result <- linearCollection_GetType(struct_Collection)
	Definir type_result Como Texto;
	type_result = collection_getContent_TypeArea(struct_Collection);
FinFuncion

Funcion collection_result <- linearCollection_addFirst_ByType(struct_Collection, Element, TYPE)
	Definir collection_result, element_String Como Texto;// (C, B, A/1;2;3)
	element_String = value_TypeToString(Element, TYPE);//"Z"
	collection_result = linearCollection_addFirst_byString(struct_Collection, element_String);
FinFuncion

Funcion index_isValid <- linearCollection_IndexIsValid(struct_Collection, index_element)
	Definir index_isValid Como Logico;
	Definir struct_Size Como Numero;
	struct_Size   = linearCollection_getSize(struct_Collection);
	index_isValid = Collection_IndexIsValid(struct_Size, index_element);
FinFuncion

Funcion Size_int <- linearCollection_getSize(struct_Collection)
	Definir Size_int Como Numero;
	Size_int = string_toNumber(string_substring_from(struct_Collection, math_increment(linearCollection_getIndex_EndMetaData(struct_Collection))));
FinFuncion

Funcion struct_IsEmpty <- linearCollection_isEmpty(struct_Collection)
	Definir struct_IsEmpty Como Logico;
	struct_IsEmpty = (linearCollection_getSize(struct_Collection) < 1);
FinFuncion

Funcion End_index <- linearCollection_getIndex_EndMetaData(struct_Collection)
	Definir End_index Como Numero;
	End_index = string_lastIndexOf(struct_Collection, symbol_ExtraData());
FinFuncion

Funcion index_extraData <- linearCollection_getIndex_ExtraData(struct_LinearCollection)
	Definir index_extraData Como Numero;
	index_extraData = string_lastIndexOf(struct_LinearCollection, symbol_extraData());
FinFuncion

Funcion collection_result <- linearCollection_addFirst_byString(struct_Collection, element_String)
	Definir collection_result, element_Length_str Como Texto;// (C, B, A/1;2;3)
	Definir index_DataArea, index_MetaData Como Numero;//first  (<-:->)
	element_Length_str = string_append(symbol_Separator(), number_toString(string_Length(element_String)));// , 4
	index_DataArea = collection_getIndex_dataArea(struct_Collection);
	collection_result = string_insert(struct_Collection, element_Length_str, linearCollection_getIndex_EndMetaData(struct_Collection));
	collection_result = string_insert(collection_result, element_String, math_increment(index_DataArea));//(Z, C, B, A/1;2;3;4)		
	collection_result = linearCollection_increment_numElement(collection_result);
FinFuncion

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
	index_ExtraData = math_increment(string_lastIndexOf(struct_List, symbol_ExtraData()));
	num_elements_str = string_substring_from(struct_List, index_ExtraData);
	Si string_isEquals(struct_List, num_elements_str) Entonces
		collection_result = struct_List;
		error_message_Function("linearCollection_update_numElement", "unrecognized data structure ( no exist symbol_ExtraData() or num_Size)");
	SiNo
		collection_result = string_append(string_substring(struct_List, 0, index_ExtraData), value_modify_StringNumber(num_elements_str, num_sum));
	FinSi
FinFuncion

Funcion collection_result <- linearCollection_DeleteFirst(struct_Collection)
	Definir collection_result Como Texto;
	Definir index_DataArea, index_MetaData, property_ Como Numero;
	Definir length_separator, index_EndMetaData, element_Length Como Numero;
	index_EndMetaData = linearCollection_getIndex_EndMetaData(struct_Collection);
	index_DataArea = math_increment(collection_getIndex_dataArea(struct_Collection));// (C B A/, 1, 2, 3)
	property_ = string_lastIndexOf(struct_Collection, symbol_Separator());
	element_Length = string_toNumber(string_substring(struct_Collection, math_increment(property_), index_EndMetaData));
	collection_result = string_delete(struct_Collection, property_, index_EndMetaData);
	collection_result = string_delete(collection_result, index_DataArea, math_sum(index_DataArea, element_Length));
	collection_result = linearCollection_decrement_numElement(collection_result);
FinFuncion

//--[LOG]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion log_ERROR(message)
	__private_general_log(message, "ERROR: ", COLOR_RED());
FinFuncion

//--[MANAGERDATA]-- -- -- -- -- -- -- -- -- -- -- -- -- --
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

Funcion separated_String <- managerData_getSeparateString_cells(struct_cells, count_size, cell_length)
	Definir separated_String, current_data Como Texto;
	Definir i, current_pos, next_pos Como Entero;
	current_pos   = 0;
	separated_String = "";
	i = 0;
	Mientras i < count_size Hacer
		next_pos         = math_sum(current_pos, cell_length);
		current_data     = String_Substring(struct_cells, current_pos, next_pos);
		current_data     = cellsCollection_clear_cellString(current_data, cell_length);
		separated_String = String_append_withSeparator(separated_String, symbol_separator(), current_data);
		current_pos      = next_pos;
		i = math_increment(i);
	FinMientras
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
		Char_Current = char_At(sequential_lengths, math_minus(length_summations, i));
		IsNumber = char_isNumber(Char_Current);
		Si IsNumber Entonces
			num_carry = string_append(num_carry, Char_Current);
		FinSi
		Si !IsNumber & !string_isEmpty(num_carry) | number_isEquals(i, length_summations) Entonces
			length_value = string_toNumber(num_carry);
			num_range_inc = math_sum(num_range, length_value);
			si number_isEquals(length_value, length_data)  Entonces
				data_Current     = string_substring(sequential_data, num_range, num_range_inc);
				BreakLoop_Data   = !string_isEquals(data_string, data_Current);
			FinSi
			inner_IdData    = math_increment(inner_IdData);
			num_carry       = "";// clear
			num_range       = num_range_inc;
		FinSi
		i = math_increment(i);
	FinMientras
	si BreakLoop_Data Entonces
		inner_IdData   = number_NULL();
	FinSi
FinFuncion

//--[MATH]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion numInc <- math_increment(num)
	Definir numInc Como Numero;
	numInc = num + 1;
FinFuncion

Funcion numDec <- math_minus(num, value)
	Definir numDec Como Numero;
	numDec = num - value;
FinFuncion

Funcion result <- math_max_int(value, limit)
	Definir result Como Entero;	
	result = __private_math_choose(value, limit, true());
FinFuncion

Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion

Funcion result <- math_min_int(value, limit)
	Definir result Como Entero;
	result = __private_math_choose(value, limit, false());
FinFuncion

Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
FinFuncion

Funcion num_abs <- math_abs(num)
	Definir num_abs Como Numero;
	num_abs = if_else(num < 0, math_negated(num), num);
FinFuncion

Funcion num_Negate <- math_negated(num)
	Definir num_Negate Como Numero;
	num_Negate = -1 * num;
FinFuncion

Funcion result <- math_rangeLimit_Int(value, limit_min, limit_max)
	Definir result Como Numero;
	result = math_max_Int(limit_min, math_min_int(limit_max, value));
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
Funcion num <- native_string_toNumber(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

Funcion length <- native_string_length(text)
	Definir length Como Numero;
	length = Longitud(text);
FinFuncion

Funcion result_string <- native_number_ToString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion

Funcion native_println(text)
	Escribir text;
FinFuncion

Funcion native_print(text)
	Escribir text Sin Saltar;
FinFuncion

Funcion result_string <- native_string_ToLowerCase(text)
	Definir result_string Como Texto;
	result_string = Minusculas(text);
FinFuncion

Funcion num_module <- native_math_module(number1, number2)
	Definir num_module Como Numero;
	num_module = number1 MOD number2;
FinFuncion

//--[NUMBER]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion boolean <- number_isEquals(num, num2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(num, num2);
FinFuncion

Funcion result_string <- number_toString(num)
	Definir result_string Como Texto;
	result_string = native_number_ToString(num);
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

//--[OBJECT]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result_string <- object_Empty(type_Name)
	Definir result_string Como Texto;
	result_string = object_new(type_Name);
FinFuncion

Funcion object_result <- object_new(name_object)
	Definir object_result Como Texto;
	object_result = linearCollection_new(TYPE_OBJECT(), string_append(name_object, symbol_ExtraData()));
FinFuncion

//--[PIXEL]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion pixel <- pixel_clear
	Definir pixel Como Texto;
	pixel =  get_pixel_withIndex(0);
FinFuncion

//--[PRINT]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion print(text)
	print_byseparator(text, "\n");
FinFuncion

Funcion print_byseparator(text, separator)
	__private_Print_Split(text, separator);
FinFuncion

//--[PRINTLN]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion println(text)
	text = string_append(text, "\n");
	print(text);
FinFuncion

Funcion println_array_color(array, index_array, color)
	Definir i Como Numero;
	para i = 0 Hasta math_decrement(index_array) Hacer
		array[i] = string_append(color, array[i]);
	FinPara
	println_array(array, index_array);
FinFuncion

Funcion println_array(array, index_array)
	Definir i Como Numero;
	para i = 0 Hasta math_decrement(index_array) Hacer
		native_println(array[i]);
	FinPara
FinFuncion

//--[SPRITE]-- -- -- -- -- -- -- -- -- -- -- -- -- --
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

//--[SPRITESTRING]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion height_lines <- spriteString_getHeight(spriteString_struct)
	Definir height_lines Como Numero;
	height_lines = spriteString_GetSize(spriteString_struct);
FinFuncion

Funcion sizeSprite <- spriteString_GetSize(spriteString_struct)
	Definir sizeSprite Como Numero;
	sizeSprite = math_decrement(linearCollection_getSize(spriteString_struct));
FinFuncion

//--[STORAGECELLSCOLLECTION]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion collection_storage <- storageCellsCollection_new(struct_name, TYPE_CELL, TYPE_LINEAR)
	Definir collection_storage Como Texto;
	collection_storage = storageCellsCollection_new_setLengthCell(struct_name, TYPE_CELL, TYPE_LINEAR, 1);
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

Funcion separate_string <- storageCellsCollection_getSeparateString(struct_cells)
	Definir separate_string Como Texto;
	separate_string = dualCellsCollection_getSeparateString_right(struct_cells);
FinFuncion

Funcion result_storage <- storageCellsCollection_add_setter_byString(struct_storage, value_string, data_string)
	Definir result_storage Como Texto;
	result_storage = storageCellsCollection_mode_add_byString(struct_storage, value_string, CELL_SETTER_DYNAMIC(), data_string);
FinFuncion

Funcion cell_length <- storageCellsCollection_getCellLength(struct_storageCells)
	Definir cell_length Como Entero;
	cell_length = dualCellsCollection_getCellLength_right(struct_storageCells);
FinFuncion

Funcion result_storage <- storageCellsCollection_delete_byString(struct_storageCells, string_search)
	Definir result_storage Como Texto;
	Definir right_startData, index_endData, count_size, index_target, cell_length, index_lengthArea, norm_target Como Entero;
	result_storage   = struct_storageCells;
	count_size       = cellsCollection_getSize(result_storage);
	cell_length      = storageCellsCollection_getCellLength(struct_storageCells);
	index_endData    = dualCellsCollection_getEndData(result_storage);
	right_startData  = math_minus(index_endData, count_size * cell_length);
	index_target     = storageCellsCollection_getCellIndex_force(result_storage, string_search, count_size, right_startData, cell_length);
	index_lengthArea = string_indexOf(result_storage, symbol_lengthArea());
	result_storage   = __private_dualCellsCollection_delete_right(result_storage, index_target, cell_length);
	result_storage   = __private_collectionStorage_deleteIndexed(result_storage, index_lengthArea, index_target, count_size);
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

Funcion constainsValue <- storageCellsCollection_constainsCell(struct_storageCells, value_search)
	Definir constainsValue Como Logico;
	Definir cell_index Como Entero;
	cell_index = dualCellsCollection_setter_getIndex_right(struct_storageCells, value_search);
	constainsValue = !number_isEquals(cell_index, number_NULL());
FinFuncion

Funcion result_storage <- storageCellsCollection_add_byString(struct_storage, value_string, data_string)
	Definir result_storage Como Texto;
	result_storage = storageCellsCollection_mode_add_byString(struct_storage, value_string, CELL_DYNAMIC(), data_string);
FinFuncion

//--[STRING]-- -- -- -- -- -- -- -- -- -- -- -- -- --
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

Funcion strSubs <- string_substring(result_string, start, end)
	Definir strSubs, str_data Como Texto;
	Definir end_substring Como Entero;
	message_validateIndexRange("string_substring", result_string, start, end);
	end_substring = math_max_int( math_minus(end, 1), 0);
	str_data = native_string_substring(result_string, start, end_substring);
	strSubs = if_else(number_isEquals(start, end), "", str_data);
FinFuncion

Funcion strSubs <- string_substring_from(result_string, start)
	Definir strSubs Como Texto;
	Definir end_substring Como Entero;
	end_substring = native_string_length(result_string);
	strSubs = string_substring(result_string, start, end_substring);
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

Funcion num <- string_length(text)
	Definir num Como Numero;
	num = native_string_length(text);
FinFuncion

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
FinFuncion

Funcion boolean <- string_isEmpty(text)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(text, "");
FinFuncion

Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
FinFuncion

Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion

Funcion boolean <- string_isNumber(text)
	Definir boolean Como Logico;
	boolean = string_isNumber_int(text) | string_isNumber_float(text);
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

Funcion result_string <- string_NULL
	Definir result_string Como Texto;
	result_string = "";
FinFuncion

Funcion result_string <- string_insert(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, false);
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

Funcion result_str <- string_delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_delete", text, start, end);
	start_Str = string_substring(text, 0, start);//Hello <-]
	end_Str = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
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

Funcion boolean <- string_toBoolean(result_string)
	Definir boolean Como Logico;
	boolean = string_isBoolean_true(result_string);
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
    capacity = math_minus(max_width, index_start);
    Si text_len > capacity Entonces
        text_fit = string_substring(text_fit, 0, capacity);
    FinSi
FinFuncion

Funcion result_string <- string_insert_withReplace(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, true);
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

Funcion result_string <- string_fit_end(text, text_pad)
	Definir result_string, res_pad Como Texto;
	Definir pad_length Como Entero;
	pad_length		= native_string_length(text_pad);
	result_string   = string_pad_limitEnd(text, text_pad, pad_length);
	result_string	= string_substring(result_string, 0, pad_length);
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

Funcion result_string <- string_pad_limitEnd(text, text_pad, pad_length)
	Definir result_string, res_pad Como Texto;
	Definir text_length, res_length Como Entero;
	text_length		= native_string_length(text);
	res_length      = math_min_Int(text_length, pad_length);
	res_pad         = string_substring(text_pad, res_length, pad_length);
	result_string	= string_insert(text, res_pad, text_length);
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

Funcion index_interruption <- string_FindInterruption_Right(text, strip_symbol)
	Definir index_interruption Como Entero;
    index_interruption = native_string_length(text);
    Mientras index_interruption > 0 & string_isEquals(char_At(text, math_decrement(index_interruption)), strip_symbol) Hacer
        index_interruption = math_decrement(index_interruption);
    FinMientras
FinFuncion

//--[SYMBOL]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result_string <- symbol_Separator_Simple
	Definir result_string Como Texto;
	result_string = ",";
FinFuncion

Funcion result_string <- symbol_Separator
	Definir result_string Como Texto;
	result_string = "";//001F
FinFuncion

Funcion symbol_area <- symbol_metaData
	Definir symbol_area Como Texto;
	symbol_area = "";//001E
FinFuncion

Funcion symbol_area <- symbol_lengthArea
    Definir symbol_area Como Texto;
    symbol_area = "";
FinFuncion

Funcion symbol_area <- symbol_dataArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001A
FinFuncion

Funcion result_string <- symbol_ExtraData
	Definir result_string Como Texto;
	result_string = "";//0003
FinFuncion

Funcion symbol <- symbol_cell_length
	Definir symbol Como Texto;
	symbol = "";
FinFuncion

Funcion symbol_area <- symbol_typeArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001D
FinFuncion

Funcion symbol <- symbol_cell_type
	Definir symbol Como Texto;
	symbol = "";
FinFuncion

Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion

//--[TCOMPONENT]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion new_TComponent <- tComponent_setTProperty_input(Tcomponent, value_string) 
	Definir new_TComponent Como Texto;
	new_TComponent = tComponent_setTProperty(Tcomponent, TProperty_input(), value_string);
FinFuncion

Funcion new_TComponent <- tComponent_setTProperty_position_ByString(Tcomponent, value_string) 
	Definir new_TComponent Como Texto;
	new_TComponent = tComponent_setTProperty(Tcomponent, TProperty_position(), value_string);
FinFuncion

Funcion new_TComponent <- tComponent_setTProperty_text(Tcomponent, value_string) 
	Definir new_TComponent Como Texto;
	new_TComponent = tComponent_setTProperty(Tcomponent, TProperty_text(), value_string);
FinFuncion

Funcion new_TComponent <- tComponent_setTProperty_value_ByString(Tcomponent, value_string) 
	Definir new_TComponent Como Texto;
	new_TComponent = tComponent_setTProperty(Tcomponent, TProperty_value(), value_string);
FinFuncion

Funcion new_TComponent <- tComponent_setTProperty(Tcomponent, TProperty_Component, value_string) 
	Definir new_TComponent Como Texto;
	new_TComponent = storageCellsCollection_add_setter_byString(Tcomponent, TProperty_Component, value_string);
FinFuncion

Funcion TProperty <- tComponent_getTProperty_input(tComponent_target)
	Definir TProperty Como Texto;
	TProperty = tComponent_getTProperty(tComponent_target, TProperty_input());
FinFuncion

Funcion isTUI <- tComponent_IsTcomponent(interface_string)
	Definir isTUI Como Logico;
	isTUI = string_isEquals(collection_getNameCollection(interface_string), tui_TYPE_TCOMPONENT());
FinFuncion

Funcion THasInput <- tComponent_HasInput(tcomponent)
	Definir THasInput Como Logico;
	THasInput = storageCellsCollection_constainsCell(tcomponent, TProperty_input());
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

Funcion TProperty <- tComponent_getTProperty(tComponent_target, type_TProperty)
	Definir TProperty Como Texto;
	TProperty = storageCellsCollection_getData_byCell_toString(tComponent_target, type_TProperty);
FinFuncion

Funcion tComponent_Build <- tComponent_new(simple_name, x0, y0)
	Definir tComponent_Build, tComponent_position Como Texto;
	tComponent_position = tui_ParsePointXY_ToString(x0, y0);
	tComponent_Build = storageCellsCollection_new(tui_TYPE_TCOMPONENT(), TYPE_STRING(), TYPE_STRING());
	tComponent_Build = storageCellsCollection_add_byString(tComponent_Build , TProperty_position(), tComponent_position);
	tComponent_Build = storageCellsCollection_add_byString(tComponent_Build , TProperty_simpleName(), simple_name);
FinFuncion

Funcion tComponent_Type <- tComponent_TYPE_BUTTON
	Definir tComponent_Type Como Texto;
	tComponent_Type = "@Tbutton@";
FinFuncion

Funcion tComponent_Build <- tComponent_addTPropertyInput(tcomponent, input)
	Definir tComponent_Build Como Texto;
	tComponent_Build = tComponent_addTProperty(tcomponent, TProperty_input(), input);
FinFuncion

Funcion tComponent_Build <- tComponent_addTPropertyText(tcomponent, text)
	Definir tComponent_Build Como Texto;
    tComponent_Build = tComponent_addTProperty(tcomponent, TProperty_text(), text);
FinFuncion

Funcion tComponent_Type <- tComponent_TYPE_LABEL
	Definir tComponent_Type Como Texto;
	tComponent_Type = "@Tlabel@";
FinFuncion

Funcion tComponent_Type <- tComponent_TYPE_HORIZONTAL_RULER
	Definir tComponent_Type Como Texto;
	tComponent_Type = "@THorizontalRuler@";
FinFuncion

Funcion tComponent_Build <- tComponent_addTPropertyValue(tcomponent, value)
	Definir tComponent_Build Como Texto;
	tComponent_Build = tComponent_addTProperty(tcomponent, TProperty_value(), value);
FinFuncion

Funcion tComponent_Type <- tComponent_TYPE_VERTICAL_RULER
	Definir tComponent_Type Como Texto;
	tComponent_Type = "@TVerticalRuler@";
FinFuncion

Funcion tComponent_Type <- tComponent_TYPE_PANEL
	Definir tComponent_Type Como Texto;
	tComponent_Type = "@TPanel@";
FinFuncion

Funcion TProperty <- tComponent_getTProperty_position(tComponent_target)
	Definir TProperty Como Texto;
	TProperty = tComponent_getTProperty(tComponent_target, TProperty_position());
FinFuncion

Funcion tComponent_Type <- tComponent_TYPE_SPRITE_STRING
	Definir tComponent_Type Como Texto;
	tComponent_Type = "@TSpriteString@";
FinFuncion

Funcion TProperty <- tComponent_getTProperty_simpleName(tComponent_target)
	Definir TProperty Como Texto;
	TProperty = tComponent_getTProperty(tComponent_target, TProperty_simpleName());
FinFuncion

Funcion tComponent_Build <- tComponent_addTProperty(tcomponent, TProperty, value)
	Definir tComponent_Build Como Texto;
    tComponent_Build = storageCellsCollection_add_byString(tcomponent, TProperty, value);
FinFuncion

Funcion TProperty <- tComponent_getTProperty_text(tComponent_target)
	Definir TProperty Como Texto;
	TProperty = tComponent_getTProperty(tComponent_target, TProperty_text());
FinFuncion

Funcion TProperty <- tComponent_getTProperty_value(tComponent_target)
	Definir TProperty Como Texto;
	TProperty = tComponent_getTProperty(tComponent_target, TProperty_value());
FinFuncion

//--[TPROPERTY]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion tcomponent <- TProperty_text
	Definir tcomponent Como Texto;
	tcomponent = "[text]";
FinFuncion

Funcion tcomponent <- TProperty_input
	Definir tcomponent Como Texto;
	tcomponent = "[input]";
FinFuncion

Funcion tcomponent <- TProperty_value
	Definir tcomponent Como Texto;
	tcomponent = "[value]";
FinFuncion

Funcion tcomponent <- TProperty_position
	Definir tcomponent Como Texto;
	tcomponent = "[position]";
FinFuncion

Funcion tcomponent <- TProperty_simpleName
	Definir tcomponent Como Texto;
	tcomponent = "[simple_name]";
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

Funcion TYPE <- TYPE_BOOLEAN
	Definir TYPE Como Texto;
	TYPE = "boolean";
FinFuncion

Funcion TYPE <- TYPE_INT
	Definir TYPE Como Texto;
	TYPE = "int";
FinFuncion

Funcion TYPE <- TYPE_FLOAT
	Definir TYPE Como Texto;
	TYPE = "float";
FinFuncion

Funcion TYPE <- TYPE_OBJECT
	Definir TYPE Como Texto;
	TYPE = "object";
FinFuncion

//--[USER]-- -- -- -- -- -- -- -- -- -- -- -- -- --
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

Funcion user_input <- user_input_options_separator(options_text, separator, TYPE)
	Segun TYPE Hacer
		caso TYPE_BOOLEAN(): Definir user_input Como Logico;
		caso TYPE_INT(): Definir user_input Como Numero;
		caso TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = __private_user_input_options_separator(user_input_String(), options_text, separator, TYPE);
FinFuncion

Funcion user_input <- user_input_String
	Definir user_input Como Texto;
	Leer user_input;
FinFuncion

//--[VALUE]-- -- -- -- -- -- -- -- -- -- -- -- -- --
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

Funcion string_Increment <- value_modify_StringNumber(string_number, num_sum)
	Definir string_Increment Como Texto;
	string_Increment = number_toString(math_sum(string_toNumber(string_number), num_sum));
FinFuncion