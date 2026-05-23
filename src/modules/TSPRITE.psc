Algoritmo MODULE_SPRITE
FinAlgoritmo
///%%%%%[ SPRITE.................. ]%%%%%%%[   #SPR    ]%%%%%%%%%%%%%%%%%%%%
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
	length_MaxLine = string_toNumber(linearCollection_getFirst_ToString(spriteString_struct));
FinFuncion

Funcion sizeSprite <- spriteString_GetSize(spriteString_struct)
	Definir sizeSprite Como Numero;
	sizeSprite = math_decrement(linearCollection_getSize(spriteString_struct));
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
		spriteString_newChange = linearCollection_SetElement(spriteString_newChange, 0, number_toString(line_length));
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
    index_end = math_sum(index_start, string_Length(part_modify));
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
		index_end = math_sum(index_start, string_Length(part_modify));
		line_result = string_delete(line_String, index_start, index_end);
		line_result = string_insert(line_result, part_modify, index_start);
		spriteString_newChange = spriteString_setLine(spriteString_newChange, index_line, line_result);
	FinSi
FinFuncion

Funcion spriteString_newChange <- spriteString_writeLine(spriteString_struct, index_line, part_modify, index_start)
    Definir spriteString_newChange, line_String, line_result Como Texto;
    Definir length_line Como Entero;
	Definir indexLineIsValid, indexIsValid Como Logico;
	index_line = math_increment(index_line);
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
	index_Data 		 = math_increment(string_indexOf(spriteString_struct, symbol_dataArea()));
	index_ExtraData  = string_LastindexOf(spriteString_struct, symbol_ExtraData());
	index_MetaData   = string_LastindexOf_fromIndex(spriteString_struct, symbol_metaData(), index_ExtraData);
	sequential_data		 = string_substring(spriteString_struct, index_Data, index_MetaData);
	sequential_lengths  = string_substring(spriteString_struct, math_increment(index_MetaData), index_ExtraData);
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
    index_Data      = math_increment(string_indexOf(sprite_Stripped, symbol_dataArea()));
    index_ExtraData = string_LastindexOf(sprite_Stripped, symbol_ExtraData());
    index_MetaData  = string_LastindexOf_fromIndex(sprite_Stripped, symbol_metaData(), index_ExtraData);
    sequential_data       = string_substring(sprite_Stripped, index_Data, index_MetaData);
    sequential_lengths = string_substring(sprite_Stripped, math_increment(index_MetaData), index_ExtraData);
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
//----[ DRAW_SPRITE ]----------------------------------------------------<#>
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
    array_symbol[8] = "_";array_symbol[9] = "¯";
	Dimension array_column_invert[size];
	Mientras i < size & math_sum(i, y0) < Cy Hacer
		array_column_invert[i] = string_TextReverse_Caracters(array_sprite[math_minus(size, math_increment(i))], array_symbol, size_symb);
		i = math_increment(i);
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

//--[BOOLEAN]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion text <- boolean_ToString(boolean)	
	Definir text Como Texto;
	text = if_else(boolean, "true", "false");
FinFuncion

//--[CANVAS]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion canvas <- canvas_new_WithPixel(CWx, CWy, pixel_BackGround)
	Definir i Como Numero;
	Definir canvas, canvas_x Como Texto;
	canvas_x = canvas_Row_WithText(pixel_BackGround, CWx);
	Para i=1 Hasta CWy Con Paso 1 Hacer
		canvas = string_append(canvas, canvas_x);
	FinPara
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

Funcion index_canvas <- canvas_getIndex(x0, y0, CWx)
	Definir index_canvas Como Numero;
	index_canvas= x0+(y0*CWx);
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

Funcion type_area <- collection_getContent_TypeArea(collection)
	Definir type_area Como Texto;
	type_area =  collection_getContent_TypeArea_End_Of_Text(collection, symbol_dataArea());
FinFuncion

Funcion index_isValid <- Collection_IndexIsValid(struct_Size, index_element)
	Definir index_isValid Como Logico;
	index_isValid = (index_element >= 0 & index_element < struct_Size );
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

Funcion collection_result <- collection_updateRange(struct_collection, index_start, index_end, data_string)
	Definir collection_result Como Texto;
	collection_result = string_delete(struct_collection, index_start, index_end);
	collection_result = string_insert(collection_result, data_string, index_start);
FinFuncion

//--[COLOR]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion text_Color <- color_setColorText(text, color)
	Definir text_Color Como Texto;
	text_Color = string_append(color, text);
FinFuncion

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

Funcion boolean <- __private_isEquals_general(value1, value2)
	Definir boolean Como Logico;
	boolean = (value1 == value2);
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

Funcion result_string <- __private_string_insert_general(text, text_insert, index, isReplace)
	Definir result_string, before, after Como Texto;
	Definir index_after Como Entero;
	before        = string_substring(text, 0, index);
	index_after   = math_sum(index, if_else(isReplace, native_string_length(text_insert), 0));
	after         = string_substring_from(text, math_min_int(index_after, native_string_length(text)));
	result_string = string_append_withSeparator(before, after, text_insert);
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

Funcion color <- __private_color_getcolor_or_style_forIndex(index)
	Definir color Como Texto;
	color = string_append_withSeparator(symbol_Escape(), "m", number_toString(index));
FinFuncion

//--[GET]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion pixel <- get_pixel_withIndex(index)
	Definir pixel Como Texto;
	Segun index Hacer
		caso 0:
			pixel = "?";
		caso 1:
			pixel = "?";//*
		caso 2: 
			pixel = "?";
		De Otro Modo:
			pixel = "?";
	FinSegun
FinFuncion

//--[IF]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result <- if_else(condition, result, result2)
	Si !(condition) Entonces
		result = result2;
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

Funcion collection_result <- linearCollection_addLast(struct_Collection, Element)
	Definir collection_result, TYPE Como Texto;
	TYPE = linearCollection_GetType(struct_Collection);
	collection_result = linearCollection_addLast_ByType(struct_Collection, Element, TYPE);
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

Funcion Size_int <- linearCollection_getSize(struct_Collection)
	Definir Size_int Como Numero;
	Size_int = string_toNumber(string_substring_from(struct_Collection, math_increment(linearCollection_getIndex_EndMetaData(struct_Collection))));
FinFuncion

Funcion collection_result <- linearCollection_SetElement(struct_Collection, index_element, new_value)
	Definir collection_result, TYPE Como Texto;
	TYPE = collection_getContent_TypeArea(struct_Collection);
	collection_result = linearCollection_SetElement_ToType(struct_Collection, index_element, new_value, TYPE);
FinFuncion

Funcion index_isValid <- linearCollection_IndexIsValid(struct_Collection, index_element)
	Definir index_isValid Como Logico;
	Definir struct_Size Como Numero;
	struct_Size   = linearCollection_getSize(struct_Collection);
	index_isValid = Collection_IndexIsValid(struct_Size, index_element);
FinFuncion

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

Funcion type_result <- linearCollection_GetType(struct_Collection)
	Definir type_result Como Texto;
	type_result = collection_getContent_TypeArea(struct_Collection);
FinFuncion

Funcion collection_result <- linearCollection_addLast_ByType(struct_Collection, Element, TYPE)
	Definir collection_result, element_String Como Texto;// (C, B, A/1;2;3)
	element_String = value_TypeToString(Element, TYPE);//"Z";
	collection_result = linearCollection_addLast_ByString(struct_Collection, element_String);
FinFuncion

Funcion struct_IsEmpty <- linearCollection_isEmpty(struct_Collection)
	Definir struct_IsEmpty Como Logico;
	struct_IsEmpty = (linearCollection_getSize(struct_Collection) < 1);
FinFuncion

Funcion End_index <- linearCollection_getIndex_EndMetaData(struct_Collection)
	Definir End_index Como Numero;
	End_index = string_lastIndexOf(struct_Collection, symbol_ExtraData());
FinFuncion

Funcion collection_result <- linearCollection_SetElement_ToType(struct_Collection, index_element, new_value, TYPE)
	Definir collection_result, value_string Como Texto;
	value_string = value_TypeToString(new_value, TYPE);
	collection_result = linearCollection_SetElement_ToString(struct_Collection, index_element, value_string);
FinFuncion

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

Funcion collection_result <- linearCollection_decrement_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, -1);
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

Funcion collection_result <- linearCollection_SetElement_ToString(struct_Collection, index_element, value_string)
	Definir collection_result, element_String Como Texto;
	collection_result = __private_linearCollection_ModifyElement(struct_Collection, index_element, value_string);
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

Funcion collection_result <- linearCollection_increment_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, 1);
FinFuncion

//--[LOG]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion log_ERROR(message)
	__private_general_log(message, "ERROR: ", COLOR_RED());
FinFuncion

//--[MANAGERDATA]-- -- -- -- -- -- -- -- -- -- -- -- -- --
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
			length_value  = string_toNumber(num_carry);
			num_range_inc = math_sum(num_range, length_value);
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
		i = math_decrement(i);
	FinMientras
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

//--[MATH]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
FinFuncion

Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion

Funcion result <- math_min_int(value, limit)
	Definir result Como Entero;
	result = __private_math_choose(value, limit, false());
FinFuncion

Funcion numInc <- math_increment(num)
	Definir numInc Como Numero;
	numInc = num + 1;
FinFuncion

Funcion numDec <- math_minus(num, value)
	Definir numDec Como Numero;
	numDec = num - value;
FinFuncion

Funcion num_abs <- math_abs(num)
	Definir num_abs Como Numero;
	num_abs = if_else(num < 0, math_negated(num), num);
FinFuncion

Funcion result <- math_max_int(value, limit)
	Definir result Como Entero;	
	result = __private_math_choose(value, limit, true());
FinFuncion

Funcion num_Negate <- math_negated(num)
	Definir num_Negate Como Numero;
	num_Negate = -1 * num;
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
Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

Funcion num <- native_string_toNumber(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
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

Funcion num_module <- native_math_module(number1, number2)
	Definir num_module Como Numero;
	num_module = number1 MOD number2;
FinFuncion

Funcion native_print(text)
	Escribir text Sin Saltar;
FinFuncion

Funcion result_string <- native_string_ToLowerCase(text)
	Definir result_string Como Texto;
	result_string = Minusculas(text);
FinFuncion

//--[NUM]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion isValid <- num_indexValidate(max_length, start, end)
    Definir isValid Como Logico;	
    isValid = number_IsInRange(start, 0, max_length);
    isValid = isValid & number_IsInRange(end, 0, max_length);
    isValid = isValid & (start <= end);
FinFuncion

//--[NUMBER]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result_string <- number_toString(num)
	Definir result_string Como Texto;
	result_string = native_number_ToString(num);
FinFuncion

Funcion boolean <- number_isEquals(num, num2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(num, num2);
FinFuncion

Funcion IsInRange <- number_IsInRange(value, min_val, max_val)
    Definir IsInRange Como Logico;
    IsInRange = value >= min_val & value <= max_val;
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

Funcion Num <- number_NULL
	Definir Num Como Numero;
	Num = -1;
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

//--[STRING]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion strSubs <- string_substring(result_string, start, end)
	Definir strSubs, str_data Como Texto;
	Definir end_substring Como Entero;
	message_validateIndexRange("string_substring", result_string, start, end);
	end_substring = math_max_int( math_minus(end, 1), 0);
	str_data = native_string_substring(result_string, start, end_substring);
	strSubs = if_else(number_isEquals(start, end), "", str_data);
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

Funcion num <- string_length(text)
	Definir num Como Numero;
	num = native_string_length(text);
FinFuncion

Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
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

Funcion result_str <- string_delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_delete", text, start, end);
	start_Str = string_substring(text, 0, start);//Hello <-]
	end_Str = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
FinFuncion

Funcion result_string <- string_insert(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, false);
FinFuncion

Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Numero;
	result = string_indexOf_fromIndex(text, text_match, 0);
FinFuncion

Funcion result <- string_lastIndexOf(text, text_match)//< ---
	Definir result Como Numero;
	result = string_lastindexOf_fromIndex(text, text_match, native_string_length(text));
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

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
FinFuncion

Funcion boolean <- string_isEmpty(text)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(text, "");
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

Funcion result_string <- string_insert_withReplace(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, true);
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

Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
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

Funcion boolean <- string_isNumber(text)
	Definir boolean Como Logico;
	boolean = string_isNumber_int(text) | string_isNumber_float(text);
FinFuncion

Funcion result_string <- string_NULL
	Definir result_string Como Texto;
	result_string = "";
FinFuncion

Funcion strSubs <- string_substring_from(result_string, start)
	Definir strSubs Como Texto;
	Definir end_substring Como Entero;
	end_substring = native_string_length(result_string);
	strSubs = string_substring(result_string, start, end_substring);
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

Funcion index_interruption <- string_FindInterruption_Right(text, strip_symbol)
	Definir index_interruption Como Entero;
    index_interruption = native_string_length(text);
    Mientras index_interruption > 0 & string_isEquals(char_At(text, math_decrement(index_interruption)), strip_symbol) Hacer
        index_interruption = math_decrement(index_interruption);
    FinMientras
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

//--[SYMBOL]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion symbol_area <- symbol_dataArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001A
FinFuncion

Funcion result_string <- symbol_ExtraData
	Definir result_string Como Texto;
	result_string = "";//0003
FinFuncion

Funcion symbol_area <- symbol_metaData
	Definir symbol_area Como Texto;
	symbol_area = "";//001E
FinFuncion

Funcion result_string <- symbol_Separator
	Definir result_string Como Texto;
	result_string = "";//001F
FinFuncion

Funcion symbol_area <- symbol_typeArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001D
FinFuncion

Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion

//--[TCOMPONENT]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion tComponent_Type <- tComponent_TYPE_SPRITE_STRING
	Definir tComponent_Type Como Texto;
	tComponent_Type = "@TSpriteString@";
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

//--[VALUE]-- -- -- -- -- -- -- -- -- -- -- -- -- --
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

Funcion result <- value_StringCatch_ofType(value, TYPE, method, message) 
	Definir result Como Texto;
	result = value;
	Si value_isNull(value, TYPE_STRING()) Entonces
		result = value_getNullType_toString(TYPE);
		error_message_Function(method, message);
	FinSi
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

Funcion result <- value_getNullType_toString(TYPE)
	Definir result Como Texto;
	result = value_TypeToString(value_getNullType(TYPE), TYPE);
FinFuncion

Funcion string_Increment <- value_modify_StringNumber(string_number, num_sum)
	Definir string_Increment Como Texto;
	string_Increment = number_toString(math_sum(string_toNumber(string_number), num_sum));
FinFuncion

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
