Algoritmo MODULE_CANVAS
	Escribir pixel_Qr_plain();
FinAlgoritmo
///%%%%%[ CANVAS.............................. ]%%%%%%%[   #CAN    ]%%%%%%%%%%%%%%%%%%%%

Funcion pixel <- pixel_Qr_plain
	Definir pixel Como Texto;
	pixel = "  ";
FinFuncion

Funcion pixel <- pixel_Qr_clear
	Definir pixel Como Texto;
	pixel = "??";
FinFuncion

Funcion size_version <- canvas_getSizeVersionQr(version)
	Definir size_version Como Entero;
	size_version = math_sum(21, (math_decrement(version) * 4));
FinFuncion

Funcion canvas_Qr <- Qr_getBase(version, outer_margin)
	Definir canvas_Qr Como Texto;
	Definir size_version, size_x, size_y, outer_margin_norm Como Numero;
	Definir start_draw_x, start_draw_y, pattern_width, pattern_height Como Numero;
	size_version    = canvas_getSizeVersionQr(version);
	outer_margin_norm = outer_margin * string_Length(pixel_Qr_plain());
	size_y          = math_sum(size_version, outer_margin_norm);
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
	end_draw_x        = math_minus(size_x, start_draw_x);
	end_draw_y        = math_minus(size_y, start_draw_y);
	sprite_position   = Qr_getSpritePositionPattern();
	position_right_x  = math_minus(end_draw_x, pattern_width);
	position_bottom_y = math_minus(end_draw_y, pattern_height);
	position_point = math_sum(math_sum(start_draw_x, pattern_width), string_Length(pixel_Qr_plain()));
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
	length_line     = math_minus(size_x, (pattern_width * 2));
	length_line     = math_minus(length_line, (length_pixel * 4));
	length_line     = math_truncate(length_line / length_pixel);
	origin_timing_x = math_sum(math_sum(start_draw_x, pattern_width), length_pixel);
	origin_timing_y = math_sum(math_sum(start_draw_y, pattern_height), length_pixel_y);
	canvas_result = canvas_Qr;
	i = 0;
	Mientras i < length_line Hacer
		Si math_module(i, 2) == 0 Entonces
			pixel_current = pixel_Qr_Plain();
		SiNo
			pixel_current = pixel_Qr_clear();
		FinSi
		canvas_result = canvas_DrawPoint_withPixel(canvas_result, size_x, size_y, math_sum(origin_timing_x, i * length_pixel), pattern_height, pixel_current);
		canvas_result = canvas_DrawPoint_withPixel(canvas_result, size_x, size_y, pattern_width, math_sum(origin_timing_y, i * length_pixel_y), pixel_current);
		i = math_increment(i);
	FinMientras
FinFuncion

Funcion canvas <- canvas_new(CWx, CWy)
	Definir canvas Como Texto;
	canvas = canvas_new_WithPixel(CWx, CWy, pixel_clear());
FinFuncion

Funcion canvas <- canvas_new_WithPixel(CWx, CWy, pixel_BackGround)
	Definir i Como Numero;
	Definir canvas, canvas_x Como Texto;
	canvas_x = canvas_Row_WithText(pixel_BackGround, CWx);
	Para i=1 Hasta CWy Con Paso 1 Hacer
		canvas = string_append(canvas, canvas_x);
	FinPara
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

Funcion canvas_displayWindow(canvas, Cx, Cy, title)
	canvas_displayWindow_monoColor(canvas, Cx, Cy, title, COLOR_GREEN());
FinFuncion

Funcion canvas_displayWindow_monoColor(canvas, Cx, Cy, title, color_window)
	canvas_displayWindow_color(canvas, Cx, Cy, title, color_window, COLOR_CYAN());
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

Funcion length_colors <- __private_window_calcTitleBarColorLength(width_titleBar, color_bar, color_title)
	Definir length_colors, length_decorator, length_titleDecorator, length_padding Como Entero;
	length_titleDecorator = string_Length(color_title);
	length_decorator = string_Length(color_bar);
	length_padding = math_sum((length_decorator * 2), length_titleDecorator);
	length_colors = math_sum(width_titleBar,  length_padding);
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

Funcion title_string <- __private_window_getTitleBar(title, width_titleBar)
	Definir title_string, top_bar, button_bar, center_bar Como Texto;
	title_string  = __private_window_getTitleBar_color(title, width_titleBar, "", "");
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

Funcion sprite_canvas <- canvas_toSpriteString(canvas, Cx, Cy)
	Definir sprite_canvas, metaData_length, length_line Como Texto;
	Definir index_MetaData Como Entero;
	sprite_canvas   = linearCollection_new(tComponent_TYPE_SPRITE_STRING(), TYPE_STRING());
	length_line     = number_toString(Cx);
	sprite_canvas   = linearCollection_addLast(sprite_canvas, length_line);
	index_MetaData  = string_LastIndexOf(sprite_canvas, symbol_metaData());
	sprite_canvas   = string_insert(sprite_canvas, canvas, index_MetaData);
	metaData_length = string_repeatText(string_append(symbol_Separator(), length_line), Cy);
	index_MetaData  = math_increment(string_LastIndexOf(sprite_canvas, symbol_metaData()));
	sprite_canvas   = string_insert(sprite_canvas, metaData_length, index_MetaData);
	sprite_canvas   = linearCollection_update_numElement(sprite_canvas, Cy);
FinFuncion

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
			current_y = math_increment(current_y);
		FinMientras
	FinSi
FinFuncion

Funcion row_x <- canvas_Row_WithText_toBorders(text, repeats, border)
	Definir row_x, row_line Como Texto;
	Definir repeats_norm Como Entero;
	repeats_norm = math_max_int(math_minus(repeats, 2), 0);
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

Funcion canvas_result <- canvas_removeColumns_count(canvas, CWx, CWy, num_columns, x_start)
	Definir canvas_result Como Texto;
	Definir i, x_remove, index_row Como Numero;
	canvas_result = canvas;
	x_remove = math_rangeLimit_Int(x_start, 0, CWx);
	Para i = math_decrement(CWy) Hasta 0 Con Paso math_decrement(0) Hacer
		index_row = canvas_getIndex(x_remove, i, CWx);
		canvas_result = string_delete(canvas_result, index_row, math_sum(index_row, num_columns));
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

Funcion canvas_result <- canvas_removeRows_count(canvas, CWx, CWy, num_rows, isTop)
	Definir canvas_result Como Texto;
	Definir total_chars, start_delete Como Numero;
	total_chars = CWx * num_rows;
	start_delete = if_else(isTop, 0, math_minus(CWx * CWy, total_chars));
	canvas_result = string_delete(canvas, start_delete, math_sum(start_delete, total_chars));
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

Funcion canvas_move <- canvas_moveContent_top_nPositions_withPixel(canvas, CWx, CWy, pixel, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_addRows_withPixel(canvas, CWx, CWy, n_positions, pixel);
	canvas_move = canvas_removeRows_atStart(canvas_move, CWx, math_sum(CWy, n_positions), n_positions);
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottom_nPositions_withPixel(canvas, CWx, CWy, pixel, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_addRows_atStart_withPixel(canvas, CWx, CWy, n_positions, pixel);
	canvas_move = canvas_removeRows(canvas_move, CWx, math_sum(CWy, n_positions), n_positions);
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

Funcion canvas_move <- canvas_moveContent_Left_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_addColumns_withPixel(canvas, CWx, CWy, n_positions, pixel);
	canvas_move = canvas_removeColumns_atStart(canvas_move, math_sum(CWx, n_positions), CWy, n_positions);
FinFuncion

Funcion canvas_move <- canvas_moveContent_Right_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_addColumns_atStart_withPixel(canvas, CWx, CWy, n_positions, pixel);
	canvas_move = canvas_removeColumns(canvas_move, math_sum(CWx, n_positions), CWy, n_positions);
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

Funcion canvas_result <- canvas_resize_count_withPixel(canvas, CWx, CWy, num_rows, num_columns, isTop, isLeft, pixel)
	Definir canvas_result Como Texto;
	Definir new_CWx Como Numero;
	canvas_result = canvas_addColumns_ofIndex_withPixel(canvas, CWx, CWy, num_columns, isLeft, pixel);
	new_CWx = math_sum(CWx, num_columns);
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
	canvas_rectangle = canvas_DrawLine_whitPixel(canvas_rectangle, Cx, Cy, pixel_V1, math_decrement(x1), y0, math_decrement(x1), y1);//Right
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
    s = if_else(string_isEquals(letter, "x"), 1, -1);
    c = ((2 * pixel_index) / Dc - 1) * s;
FinFuncion

Funcion pixel_index <- __private_Noramalized_toPixel(Dc, norm_index, letter)
	Definir pixel_index Como Numero;
	norm_index = norm_index * if_else(string_isEquals(letter, "x"), 1, -1);
	pixel_index = math_min_Int(math_truncate((Dc * 0.5) * (1 + norm_index)), math_decrement(Dc));
FinFuncion

Funcion canvas_result <- canvas_drawCanvas(canvas, Cx, Cy, canvas_draw, Cx2, Cy2, x0, y0)
	Definir canvas_result, DrawX Como Texto;
	Definir i, slice_start, slice_end, x_draw, y_draw Como Numero;
	canvas_result = canvas;
	i = 0;
	x_draw = math_sum(Cx2, x0);
	Mientras i < Cy2 & y_draw < Cy Hacer
		y_draw = math_sum(y0, i);
		slice_start = canvas_getIndex(0, i, Cx2);
		slice_end 	= canvas_getIndex(0, math_increment(i), Cx2);
		DrawX		= string_substring(canvas_draw, slice_start, slice_end);
		canvas_result  = canvas_drawText(canvas_result, Cx, Cy, DrawX, x0, y_draw);
		i = math_increment(i);
	FinMientras
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
	canvas_Result = canvas_DrawLine_Vertical_withPixel(canvas, Cx, Cy, x0, y0, height,  "?");
FinFuncion

Funcion canvas_Result <- canvas_DrawLine_Vertical_withPixel(canvas, Cx, Cy, x0, y0, height, pixel)
	Definir canvas_Result Como Texto;
	canvas_Result = canvas;
	si height > 0 Entonces
		canvas_Result = canvas_DrawLine_whitPixel(canvas_Result, Cx, Cy, pixel, x0, y0, x0, math_sum(y0, height));
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

///==========[DEPENDECES]=============================================
//---[ native_ (#NAV) ]--------------------------------------------------------------------

Funcion native_println(text)
	Escribir text;
FinFuncion

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

Funcion num_module <- native_math_module(number1, number2)
	Definir num_module Como Numero;
	num_module = number1 MOD number2;
FinFuncion
//---[ string_ (#STR) ]--------------------------------------------------------------------

Funcion num <- string_length(text)
	Definir num Como Numero;
	num = native_string_length(text);
FinFuncion

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
FinFuncion

Funcion strSubs <- string_substring(result_string, start, end)
	Definir strSubs, str_data Como Texto;
	Definir end_substring Como Entero;
	message_validateIndexRange("string_substring", result_string, start, end);
	end_substring = math_max_int( math_minus(end, 1), 0);
	str_data = native_string_substring(result_string, start, end_substring);
	strSubs = if_else(number_isEquals(start, end), "", str_data);
FinFuncion

Funcion result_string <- string_insert(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, false);
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

Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
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

Funcion result <- string_lastIndexOf(text, text_match)//< ---
	Definir result Como Numero;
	result = string_lastindexOf_fromIndex(text, text_match, native_string_length(text));
FinFuncion

Funcion result_str <- string_delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_delete", text, start, end);
	start_Str = string_substring(text, 0, start);//Hello <-]
	end_Str = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
FinFuncion

Funcion result_string <- string_insert_withReplace(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, true);
FinFuncion

Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
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

Funcion strSubs <- string_substring_from(result_string, start)
	Definir strSubs Como Texto;
	Definir end_substring Como Entero;
	end_substring = native_string_length(result_string);
	strSubs = string_substring(result_string, start, end_substring);
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

Funcion result_str <- string_delete_From(text, start)
	Definir result_str Como Texto;
	result_str = string_delete(text, start, native_string_length(text));
FinFuncion

Funcion result_string <- __private_string_insert_general(text, text_insert, index, isReplace)
	Definir result_string, before, after Como Texto;
	Definir index_after Como Entero;
	before        = string_substring(text, 0, index);
	index_after   = math_sum(index, if_else(isReplace, native_string_length(text_insert), 0));
	after         = string_substring_from(text, math_min_int(index_after, native_string_length(text)));
	result_string = string_append_withSeparator(before, after, text_insert);
FinFuncion

Funcion index_interruption <- string_FindInterruption_Right(text, strip_symbol)
	Definir index_interruption Como Entero;
    index_interruption = native_string_length(text);
    Mientras index_interruption > 0 & string_isEquals(char_At(text, math_decrement(index_interruption)), strip_symbol) Hacer
        index_interruption = math_decrement(index_interruption);
    FinMientras
FinFuncion

Funcion result_string <- char_At(text, index)
	Definir result_string Como Texto;
	Definir end_substring, text_length Como Entero;
	text_length   = native_string_length(text);
	end_substring = math_min_int(math_increment(index), text_length);
	result_string = string_substring(text, index, end_substring);
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

Funcion boolean <- char_isNumber(char)
	Definir boolean Como Logico;
	boolean = ascii_IsNumberSymbols(char);
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

Funcion result_string <- string_NULL
	Definir result_string Como Texto;
	result_string = "";
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

Funcion result_string <- string_fit_end(text, text_pad)
	Definir result_string, res_pad Como Texto;
	Definir pad_length Como Entero;
	pad_length		= native_string_length(text_pad);
	result_string   = string_pad_limitEnd(text, text_pad, pad_length);
	result_string	= string_substring(result_string, 0, pad_length);
FinFuncion

Funcion result_string <- string_pad_limitEnd(text, text_pad, pad_length)
	Definir result_string, res_pad Como Texto;
	Definir text_length, res_length Como Entero;
	text_length		= native_string_length(text);
	res_length      = math_min_Int(text_length, pad_length);
	res_pad         = string_substring(text_pad, res_length, pad_length);
	result_string	= string_insert(text, res_pad, text_length);
FinFuncion
//---[ array_ (#ARR) ]---------------------------------------------------------------------

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
//---[ print_ (#PRN) ]---------------------------------------------------------------------

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

Funcion Num <- number_NULL
	Definir Num Como Numero;
	Num = -1;
FinFuncion
//---[ math_ (#MAT) ]----------------------------------------------------------------------

Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion

Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
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

Funcion numDec <- math_minus(num, value)
	Definir numDec Como Numero;
	numDec = num - value;
FinFuncion

Funcion module <- math_module(dividend, divisor)
	Definir module Como Numero;// module = a-floor(a/b)*b
	divisor = math_max_float(divisor, 1);
	module = dividend - math_truncate(dividend/divisor) * divisor;
FinFuncion

Funcion numInc <- math_increment(num)
	Definir numInc Como Numero;
	numInc = num + 1;
FinFuncion

Funcion num_abs <- math_abs(num)
	Definir num_abs Como Numero;
	num_abs = if_else(num < 0, math_negated(num), num);
FinFuncion

Funcion result <- math_max_int(value, limit)
	Definir result Como Entero;	
	result = __private_math_choose(value, limit, true());
FinFuncion

Funcion result <- math_rangeLimit_Int(value, limit_min, limit_max)
	Definir result Como Numero;
	result = math_max_Int(limit_min, math_min_int(limit_max, value));
FinFuncion

Funcion result <- math_min_int(value, limit)
	Definir result Como Entero;
	result = __private_math_choose(value, limit, false());
FinFuncion

Funcion result <- math_max_Float(value, limit)
	Definir result Como Real;
	result = __private_math_choose(value, limit, true());
FinFuncion

Funcion num_Negate <- math_negated(num)
	Definir num_Negate Como Numero;
	num_Negate = -1 * num;
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

Funcion text <- boolean_ToString(boolean)	
	Definir text Como Texto;
	text = if_else(boolean, "true", "false");
FinFuncion
//---[ if_ (#CDT) ]------------------------------------------------------------------------

Funcion error_message_Function(method, message)
	error_message(string_append_withSeparator(method, message, "//"));
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

Funcion error_message(message)
	native_println(symbol_Escape() + "31m[ERROR] // " + message + ".");
FinFuncion

Funcion exection_Error(message_Error)
	Definir error_int Como Entero;
	log_ERROR(message_Error);
	error_int = string_NULL();
FinFuncion
//---[ COLOR_ (#COL) ]---------------------------------------------------------------------

Funcion color <- COLOR_GREEN
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(2);
FinFuncion

Funcion color <- COLOR_CYAN
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(6);
FinFuncion

Funcion text_Color <- color_setColorText(text, color)
	Definir text_Color Como Texto;
	text_Color = string_append(color, text);
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

Funcion color <- COLOR_RED
	Definir color Como Texto;
	color =  COLOR_getcolor_forIndex(1);
FinFuncion
//---[ value_ (#VAL) ]---------------------------------------------------------------------

Funcion string_Increment <- value_modify_StringNumber(string_number, num_sum)
	Definir string_Increment Como Texto;
	string_Increment = number_toString(math_sum(string_toNumber(string_number), num_sum));
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
//---[ collection_ (#CLL) ]----------------------------------------------------------------

Funcion symbol_area <- symbol_metaData
	Definir symbol_area Como Texto;
	symbol_area = "";//001E
FinFuncion

Funcion result_string <- symbol_Separator
	Definir result_string Como Texto;
	result_string = "";//001F
FinFuncion

Funcion result_string <- symbol_Separator_Simple
	Definir result_string Como Texto;
	result_string = ",";
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

Funcion result_string <- symbol_ExtraData
	Definir result_string Como Texto;
	result_string = "";//0003
FinFuncion

Funcion symbol_area <- symbol_dataArea
	Definir symbol_area Como Texto;
	symbol_area = "";
FinFuncion

Funcion name_Collection <- collection_getNameCollection(collection)
	Definir name_Collection Como Texto;
	name_Collection = asci_getPrefix_alphabetic(collection);
FinFuncion

Funcion symbol_area <- symbol_typeArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001D
FinFuncion

Funcion type_area <- collection_getContent_TypeArea(collection)
	Definir type_area Como Texto;
	type_area =  collection_getContent_TypeArea_End_Of_Text(collection, symbol_dataArea());
FinFuncion

Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion

Funcion index_DataArea <- collection_getIndex_dataArea(struct_Collection)
	Definir index_DataArea Como Numero;
	index_DataArea = string_IndexOf(struct_Collection, symbol_dataArea());
FinFuncion

Funcion type_area <- collection_getContent_TypeArea_End_Of_Text(collection, text_end)
	Definir type_area Como Texto;
	type_area = collection_getContent_Between_Symbols(collection, symbol_typeArea(), text_end);
FinFuncion

Funcion index_MetaData <- collection_getIndex_metaData(struct_Collection)
	Definir index_MetaData Como Numero;
	index_MetaData = string_lastIndexOf(struct_Collection, symbol_metaData());
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

Funcion symbol_area <- symbol_lengthArea
    Definir symbol_area Como Texto;
    symbol_area = "";
FinFuncion

Funcion collection_result <- collection_updateRange(struct_collection, index_start, index_end, data_string)
	Definir collection_result Como Texto;
	collection_result = string_delete(struct_collection, index_start, index_end);
	collection_result = string_insert(collection_result, data_string, index_start);
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

Funcion new_LinearColletion <- linearCollection_new(struct_Collection, TYPE)
	Definir new_LinearColletion Como Texto;
	new_LinearColletion = string_append_withSeparator(collection_new(struct_Collection, TYPE), "0", symbol_ExtraData());
FinFuncion

Funcion collection_result <- linearCollection_addLast(struct_Collection, Element)
	Definir collection_result, TYPE Como Texto;
	TYPE = linearCollection_GetType(struct_Collection);
	collection_result = linearCollection_addLast_ByType(struct_Collection, Element, TYPE);
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

Funcion type_result <- linearCollection_GetType(struct_Collection)
	Definir type_result Como Texto;
	type_result = collection_getContent_TypeArea(struct_Collection);
FinFuncion

Funcion collection_result <- linearCollection_addLast_ByType(struct_Collection, Element, TYPE)
	Definir collection_result, element_String Como Texto;// (C, B, A/1;2;3)
	element_String = value_TypeToString(Element, TYPE);//"Z";
	collection_result = linearCollection_addLast_ByString(struct_Collection, element_String);
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

Funcion collection_result <- linearCollection_addLast_ByString(struct_Collection, element_String)
	Definir collection_result, element_Length_str Como Texto;// (C, B, A/1;2;3)
	Definir index_DataArea, index_MetaData Como Numero;//last  (->:<-)
	collection_result = struct_Collection;
	element_Length_str = string_append(symbol_Separator(), number_toString(string_Length(element_String)));//, 4
	index_MetaData = collection_getIndex_metaData(struct_Collection);
	collection_result = string_insert(collection_result, element_Length_str, math_increment(index_MetaData));
	collection_result = string_insert(collection_result, element_String, index_MetaData);//(C, B, A, Z/4;1;2;3)
	collection_result = linearCollection_increment_numElement(collection_result);
FinFuncion

Funcion End_index <- linearCollection_getIndex_EndMetaData(struct_Collection)
	Definir End_index Como Numero;
	End_index = string_lastIndexOf(struct_Collection, symbol_ExtraData());
FinFuncion

Funcion collection_result <- linearCollection_decrement_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, -1);
FinFuncion

Funcion collection_result <- linearCollection_SetElement(struct_Collection, index_element, new_value)
	Definir collection_result, TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_Collection);
	collection_result = linearCollection_SetElement_ToType(struct_Collection, index_element, new_value, TYPE);
FinFuncion

Funcion collection_result <- linearCollection_increment_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, 1);
FinFuncion

Funcion Size_int <- linearCollection_getSize(struct_Collection)
	Definir Size_int Como Numero;
	Size_int = string_toNumber(string_substring_from(struct_Collection, math_increment(linearCollection_getIndex_EndMetaData(struct_Collection))));
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

Funcion collection_result <- linearCollection_SetElement_ToType(struct_Collection, index_element, new_value, TYPE)
	Definir collection_result, value_string Como Texto;
	value_string = value_TypeToString(new_value, TYPE);
	collection_result = linearCollection_SetElement_ToString(struct_Collection, index_element, value_string);
FinFuncion

Funcion struct_IsEmpty <- linearCollection_isEmpty(struct_Collection)
	Definir struct_IsEmpty Como Logico;
	struct_IsEmpty = (linearCollection_getSize(struct_Collection) < 1);
FinFuncion

Funcion collection_result <- linearCollection_SetElement_ToString(struct_Collection, index_element, value_string)
	Definir collection_result, element_String Como Texto;
	collection_result = __private_linearCollection_ModifyElement(struct_Collection, index_element, value_string);
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
//---[ cellsCollection_ (#CCO) ]-----------------------------------------------------------

Funcion size_dataBlock <- cellsCollection_getSize(struct_name)
	Definir size_dataBlock Como Entero;	
	size_dataBlock = linearCollection_getSize(struct_name);
FinFuncion

Funcion cells_index <- cellsCollection_calcule_indexBlock_atEnd(index_end, index_search, cell_length)
	Definir cells_index Como Entero;
	cells_index = math_minus(index_end, (index_search * cell_length));
FinFuncion

Funcion element_cells <- cellsCollection_String_normalizedToBlockLegth(element_string, cell_length)
	Definir element_cells Como Texto;
	element_cells = string_fit_end(element_string, String_repeatText(cellsCollection_symbol_null(), cell_length));
FinFuncion

Funcion symbol <- cellsCollection_symbol_null
	Definir symbol Como Texto;
	symbol = "";
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

Funcion symbol <- symbol_cell_type
	Definir symbol Como Texto;
	symbol = "";
FinFuncion
//---[ collStorageCells_ (#SCC) ]----------------------------------------------------------

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
//---[ sprite_ (#SPR) ]--------------------------------------------------------------------

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
//---[ tui_ (#TUI) ]-----------------------------------------------------------------------

Funcion pixel <- pixel_clear
	Definir pixel Como Texto;
	pixel =  get_pixel_withIndex(0);
FinFuncion

Funcion pixel <- pixel_plain
	Definir pixel Como Texto;
	pixel = get_pixel_withIndex(1);
FinFuncion

Funcion spriteString_struct <- spriteString_new
	Definir spriteString_struct Como Texto;
	spriteString_struct = linearCollection_new(tComponent_TYPE_SPRITE_STRING(), TYPE_STRING());
	spriteString_struct = linearCollection_addLast(spriteString_struct, "0");
FinFuncion

Funcion spriteString_newChange <- spriteString_addLine(spriteString_struct, line_String)
	Definir spriteString_newChange Como Texto;
	spriteString_newChange = linearCollection_addLast(spriteString_struct, line_String);
	spriteString_newChange = spriteString_UpdateMaxWidth(spriteString_newChange, line_String);
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

Funcion height_lines <- spriteString_getHeight(spriteString_struct)
	Definir height_lines Como Numero;
	height_lines = spriteString_GetSize(spriteString_struct);
FinFuncion

Funcion TYPE <- tui_TYPE_TCOMPONENT
	Definir TYPE Como Texto;
	TYPE = "tComponent";
FinFuncion

Funcion spriteString_newChange <- spriteString_UpdateMaxWidth(spriteString_struct, line_String)
	Definir spriteString_newChange Como Texto;
	Definir line_length Como Numero;
	line_length = string_Length(line_String);
	spriteString_newChange = spriteString_struct;
	si spriteString_GetWidth(spriteString_newChange) < line_length Entonces
		spriteString_newChange = linearCollection_SetElement(spriteString_newChange, 0, number_toString(line_length));
	FinSi
FinFuncion

Funcion sizeSprite <- spriteString_GetSize(spriteString_struct)
	Definir sizeSprite Como Numero;
	sizeSprite = math_decrement(linearCollection_getSize(spriteString_struct));
FinFuncion

Funcion length_MaxLine <- spriteString_GetWidth(spriteString_struct)
	Definir length_MaxLine Como Numero;
	length_MaxLine = string_toNumber(linearCollection_getFirst_ToString(spriteString_struct));
FinFuncion
//---[ tComponent_ (#TCO) ]----------------------------------------------------------------

Funcion tComponent_Type <- tComponent_TYPE_SPRITE_STRING
	Definir tComponent_Type Como Texto;
	tComponent_Type = "@TSpriteString@";
FinFuncion

Funcion isTUI <- tComponent_IsTcomponent(interface_string)
	Definir isTUI Como Logico;
	isTUI = string_isEquals(collection_getNameCollection(interface_string), tui_TYPE_TCOMPONENT());
FinFuncion

Funcion TProperty <- tComponent_getTProperty_position(tComponent_target)
	Definir TProperty Como Texto;
	TProperty = tComponent_getTProperty(tComponent_target, TProperty_position());
FinFuncion

Funcion TProperty <- tComponent_getTProperty_text(tComponent_target)
	Definir TProperty Como Texto;
	TProperty = tComponent_getTProperty(tComponent_target, TProperty_text());
FinFuncion

Funcion TProperty <- tComponent_getTProperty_value(tComponent_target)
	Definir TProperty Como Texto;
	TProperty = tComponent_getTProperty(tComponent_target, TProperty_value());
FinFuncion

Funcion TProperty <- tComponent_getTProperty_simpleName(tComponent_target)
	Definir TProperty Como Texto;
	TProperty = tComponent_getTProperty(tComponent_target, TProperty_simpleName());
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

Funcion TProperty <- tComponent_getTProperty(tComponent_target, type_TProperty)
	Definir TProperty Como Texto;
	TProperty = storageCellsCollection_getData_byCell_toString(tComponent_target, type_TProperty);
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

Funcion tcomponent <- TProperty_simpleName
	Definir tcomponent Como Texto;
	tcomponent = "[simple_name]";
FinFuncion
//---[ ascii_ (#ASC) ]---------------------------------------------------------------------

Funcion result_String <- asci_getPrefix_alphabetic(text_input)
	Definir result_String Como Texto;
	result_String = asci_getPrefix_alphabetic_fromIndex(text_input, 0);
FinFuncion

Funcion isType <- ascii_IsNumberSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '0', '9');//48-57
FinFuncion

Funcion result_String <- asci_getPrefix_alphabetic_fromIndex(text_input, start_position)
    Definir result_String Como Texto;
	result_String = ascii_getPrefix_Category_fromIndex(text_input, start_position, ascii_ALPHABETIC());
FinFuncion

Funcion iSinRangue <- ascii_isInRangue(char, char_start, char_end)
	Definir iSinRangue Como Logico;
	iSinRangue = (char_start <= char & char <= char_end);
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
