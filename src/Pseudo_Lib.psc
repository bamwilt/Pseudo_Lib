///========================================================>>>  [ MAIN] <<==///#0
//LIB !0
//SEARCH: Ctrl+F
//LIBRARIES:
//NAME		/		CODE_SEARCH 	/      USE
//--------------------------------------------------
//INPUT 				#1 			   user_input_
//STRING 				#2  			 string_
//ARRAY 				#3  			 array_
//PRINTERS				#4 		 print_ : prinln_ : log_
//INT					#5  			int_
//MATH  				#6 				 Math_
//BOOLEAN 				#7 			 string_ : 
//CONDITIONS			#8     		if_ : condition_
//DEFINITIONS 			#9 				 NULL
//COLOR 				##0 			COLOR_
//LOCAL DATE TIME 		##1				Local_
//UTIL 					##2 			 NULL
//OBJECT 				##3   			 Object_
//TUI/CANVAS 			##4  			 TUI_
//VEC 					##5   			 VEC_

Funcion main
	Definir persona_1, empleado_1, tarjeta_1, new_instace_persona,new_instace_empleado, new_instace_credito como Texto;
	Definir char,text,input, array, list, struct, options, queue, stack como Texto;
	Definir num, opc, arrayNum, i como Numero;
	Dimensionar arrayNum[5];
	arrayNum[0]=10;
	arrayNum[1]=2;
	arrayNum[2]=4;
	arrayNum[3]=11;
	arrayNum[4]=1;
	
	list = util_List_newList(TYPE_INT());// list<int>data:/length:/size:0
	breakline();
	list = util_List_newList(TYPE_INT()); // list<int> data: / length: / size: 0
	list = util_List_add(list, 10); // list<int> data: 10 / length: 2 / size: 1
	list = util_List_add(list, 200); // list<int> data: 10200 / length: 3,2 / size: 2
	list = util_List_add(list, util_List_getElement(list, 0) * util_List_getElement(list, 1)); // list<int> data: 202002000 / length: 4,3,2 / size: 3
	list = util_List_SetElement(list, 0, 400); // list<int> data: 4002002000 / length: 4,3,3 / size: 3
	list = util_List_RemoveElement(list, 1);// list<int> data: 4002000 / length: 4,3 / size: 2
	breakline();
	Escribir list; //list<int(4002000[4,3:2
FinFuncion

Funcion persona <- New_Persona
	Definir persona como Texto;
	persona = Object_newObject("persona");
	persona = Object_add_property(persona, "ID", TYPE_INT());
	persona = Object_add_property(persona, "nombre", TYPE_STRING());
	persona = Object_add_property(persona, "apellido", TYPE_STRING());
	persona = Object_add_property(persona, "edad", TYPE_INT());
FinFuncion

Funcion producto <- New_Producto
	Definir producto como Texto;
	producto = Object_newObject("producto");
	producto = Object_add_property(producto, "nombre", TYPE_STRING());
	producto = Object_add_property(producto, "precio", TYPE_FLOAT());
FinFuncion

Funcion persona <- Init_Construct_Persona(instace_persona, ID, nombre, apellido, edad)
	Definir persona como Texto;
	persona = instace_persona;
	persona = Object_setValue_property(persona,"ID", ID);
	persona = Object_setValue_property(persona,"nombre", nombre);
	persona = Object_setValue_property(persona,"apellido", apellido);
	persona = Object_setValue_property(persona,"edad", edad);
FinFuncion


Funcion credito <- Init_Construct_Tarjeta_credito(instace_credito,id,saldo)
	Definir credito como Texto;
	credito = instace_credito;
	credito = Object_setValue_property(credito,"ID",id);
	credito = Object_setValue_property(credito,"Saldo",saldo);
FinFuncion

Funcion producto <- Init_Construct_Producto(instace_producto, nombre, precio)
	Definir producto como Texto;
	producto = instace_producto;
	producto = Object_setValue_property(producto,"nombre",nombre);
	producto = Object_setValue_property(producto,"precio", precio);
FinFuncion

///%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[ PSeInt-Toolkit ] %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
///========================================================>>>  [ INPUT ] <<==///#1

Funcion user_input <- user_input_options(options_text,TYPE)
	options_text = String_ToLowerCase(options_text);
	Segun TYPE Hacer
		TYPE_STRING(): Definir user_input Como Texto;
		TYPE_BOOLEAN(): Definir user_input Como Logico;
		TYPE_INT(): Definir user_input Como Numero;
		TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = __private_user_input_options_separator(user_input_String(),options_text,",",TYPE);
FinFuncion

Funcion user_input <- user_input_options_ignoreCase(options_text,TYPE)
	Segun TYPE Hacer
		TYPE_STRING(): Definir user_input Como Texto;
		TYPE_BOOLEAN(): Definir user_input Como Logico;
		TYPE_INT(): Definir user_input Como Numero;
		TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = __private_user_input_options_separator(String_ToLowerCase(user_input_String()),String_ToLowerCase(options_text),",",TYPE);
FinFuncion

Funcion user_input <- user_input_options_separator(options_text,separator,TYPE)
	Segun TYPE Hacer
		TYPE_STRING(): Definir user_input Como Texto;
		TYPE_BOOLEAN(): Definir user_input Como Logico;
		TYPE_INT(): Definir user_input Como Numero;
		TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = __private_user_input_options_separator(user_input_String(),options_text,separator,TYPE);
FinFuncion

Funcion user_input <- __private_user_input_options_separator(user_input_obtained,options_text,separator,TYPE)
	user_input_obtained = if(string_Struct_Contains(user_input_obtained,options_text, separator),user_input_obtained,TYPE_STRING());
	Segun TYPE Hacer
		TYPE_STRING():
			Definir user_input Como Texto;
			user_input = user_input_obtained;
		TYPE_BOOLEAN():
			Definir user_input Como Logico;
			user_input = String_isBoolean_true(user_input_obtained);
		TYPE_INT():
			Definir user_input Como Numero;
			user_input = String_ToNum(user_input_obtained);
		TYPE_FLOAT():
			Definir user_input Como Real;
			user_input = String_ToNum(user_input_obtained);
		De Otro Modo:
			Definir user_input Como Texto;
			user_input = string_Null();
	FinSegun
FinFuncion

Funcion user_input <- user_input_Interger
	Definir user_input Como Numero;
	Definir user_input_str Como Texto;
	user_input_str = user_input_String;
	user_input = String_ToNum(user_input_str);
FinFuncion

Funcion user_input <- user_input_boolean
	Definir user_input Como logico;
	user_input = String_isBoolean_true(user_input_String());
FinFuncion

Funcion user_input <- user_input_Float
	Definir user_input Como Real;
	Definir user_input_str Como Texto;
	user_input_str = user_input_String();
	user_input = if(String_isNumber_float(user_input_str), String_ToNum(user_input_str), TYPE_FLOAT());
FinFuncion

Funcion user_input <- user_input_String
	Definir user_input Como Texto;
	Leer user_input;
FinFuncion

Funcion user_input_wait
	Definir user_input Como Texto;
	Leer user_input;
FinFuncion

///========================================================>>>  [ STRING ] <<==///#2
// =========================================================== APPENDS
Funcion result <- String_append_withSeparator(str1,str2,separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion

Funcion result <- String_append(str1,str2)
	Definir result Como Texto;
	result = String_append_withSeparator(str1,str2,"");
FinFuncion

Funcion text_Color <- String_append_in_brakelines(text,text_append)
	Definir text_Color Como Texto;
	Definir index_color como Numero;
	index_color = 0;
	index_color = String_indexOf_fromIndex_speedNative(text,"\n",0);
	text_Color = String_append(text_color,text_append);
	Mientras index_color>=0 Hacer
		index_color = increment_step(index_color,2);
		text_Color = String_append(text_color,String_substring(text, 0, index_color));
		text_Color = String_append(text_color,text_append);
		text = String_substring_from(text, index_color);
		index_color = String_indexOf_fromIndex_speedNative(text,"\n",0);
	FinMientras
	text_Color = String_append(text_color,String_substring(text, 0, String_length(text)));
FinFuncion
//.....
Funcion boolean <- String_toBoolean(str)
	Definir boolean Como Logico;
	boolean = String_isBoolean_true(str);
FinFuncion

Funcion num <- String_ToNum(str)
	Definir num Como Numero;
	str = if_else(!String_isEmpty(str) & String_isNumber(str), str, "-1",TYPE_STRING());
	num = TextToNum(str);
FinFuncion

// =========================================================== INSERT
Funcion str <- String_insert(text,text_insert,index)
	Definir str Como Texto;
	str=__private_String_insert_general(text,text_insert,index,false);
FinFuncion

Funcion str <- String_insert_withReplace(text,text_insert,index)
	Definir str Como Texto;
	str=__private_String_insert_general(text,text_insert,index,true);
FinFuncion

Funcion str <- String_insert_from_End(text,text_insert)
	Definir str Como Texto;
	str = String_insert(text,text_insert,String_length(text));
FinFuncion

Funcion str <- __private_String_insert_general(text,text_insert,index,isReplace)
	Definir str, before, after, fragments Como Texto;
	Definir index_after como Numero;
	Dimension text_Union(3);
	before=String_substring_from_start(text,index);
	index_after = index+if_else(isReplace, String_length(text_insert),0,TYPE_INT());
	after=String_substring_from(text,Math_min_int(index_after,String_length(text)));
	Dimension fragments[3];// ...join
	fragments[0]=before;
	fragments[1]=text_insert;
	fragments[2]=after;
	str= array_ofString_separator(fragments,3,"",TYPE_STRING());
FinFuncion

Funcion str <-  String_pad_start(text,text_pad)
	Definir str Como Texto;
	str=String_insert(text,String_substring_from_start(text_pad,Math_max_Int(String_length(text_pad)-String_length(text),0)),0);
FinFuncion

Funcion str <-  String_fit(text,text_pad)
	Definir str Como Texto;
	str=String_insert(text,String_substring_from_start(text_pad,Math_max_Int(String_length(text_pad)-String_length(text),0)),0);
	str=String_substring(str,0,String_length(text_pad));
FinFuncion

Funcion String_Repeat <- String_RepeatText(text, repeats)
    Definir i Como Numero;
    Definir String_Repeat Como Texto;
    String_Repeat = "";
    Para i = 1 Hasta repeats Con Paso 1 Hacer
        String_Repeat = String_append(String_Repeat, text);
    FinPara
FinFuncion

// =========================================================== REMOVE
Funcion result_str <- String_Delete(str,start,end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5,8)
	validate_index_range("String_Delete", str, start, end);
	start_Str = String_substring_from_start(str,start);//Hello <-]
	end_Str = String_substring_from(str,end);//[->rld  
	result_str = String_append(start_Str,end_Str);//Hello+rld = Hellorld
FinFuncion

// =============================================================== CONVERSIONS ====
Funcion text <- boolean_ToString(boolean)
	Definir text Como Texto;
	text=if_else(boolean,"True","False",TYPE_STRING());
FinFuncion

Funcion str <- interger_ToString(num)
	Definir str Como Texto;
	str = num_ToString(num);
	si !String_isNumber_int(str) Entonces
		exection_Error(String_append("Error de tipado Interger: ", str));
	FinSi
FinFuncion

Funcion str <- float_ToString(num)
	Definir str Como Texto;
	str = num_ToString(num);
	si !String_isNumber_float(str) Entonces
		exection_Error(String_append("Error de tipado Float: ", str));
	FinSi
FinFuncion

Funcion str <- num_ToString(num)
	Definir str Como Texto;
	str = ConvertirATexto(num);
FinFuncion

Funcion str <- object_ToString(object_str)
	Definir str Como Texto;
	str = object_str;
	si !String_isObject(object_str) Entonces
		exection_Error(String_append("Error de tipado Object: ", str));
	FinSi
FinFuncion

Funcion isObject <- String_isObject(str_struct)
	Definir isObject Como Logico;
	isObject = !String_isEmpty(Object_getName(str_struct));
FinFuncion
// =============================================================== REPLACE ====
Funcion result <- String_replace(text,text_match,text_Replace)
	Definir result, text_Current Como Texto;
	Definir index, match_length  Como Numero;//Hello World,"o","X" = HellX World
	index=String_indexOf_fromIndex_speedNative(text,text_match,0);
	match_length = String_length(text_match);
	result = "";
	Mientras index>=0 Hacer
		result= String_append(result,String_substring_from_start(text,index));//Hell
		result= String_append(result,text_Replace);//X
		text = String_substring_from(text,index+match_length);
		index=String_indexOf_fromIndex_speedNative(text,text_match,0);
	FinMientras
	result= String_append(result,String_substring_from(text,index+match_length));// World
FinFuncion

Funcion result <- String_replace_firts(text,text_match,text_Replace)
	Definir result Como texto;
	Definir index Como Numero;//Hello World,"o","X" = HellX World
	index=String_indexOf_fromIndex_speedNative(text,text_match,0);
	result= String_substring_from_start(text,index);//Hell
	result= String_append(result,text_Replace);//X
	result= String_append(result,String_substring_from(text,index+String_length(text_match)));// World
FinFuncion

Funcion str <- String_trim(text)
	Definir str Como Texto;
	str = String_replace(text," ","");
FinFuncion

Funcion text_invert <- String_revert(text)
	Definir text_invert Como Texto;
	Definir i, indexText Como Numero;
	text_invert = "";
	indexText = String_length(text);
	Para i=0 Hasta indexText Con Paso 1 Hacer
		text_invert = String_append(text_invert,charAt(text,indexText-i));
	FinPara
FinFuncion

// =============================================================== UPPER/LOWER CASE ====
Funcion str <- String_ToUpperCase(text)
	Definir str Como Texto;
	str = Mayusculas(text);
FinFuncion

Funcion str <- String_ToLowerCase(text)
	Definir str Como Texto;
	str = Minusculas(text);
FinFuncion

// =============================================================== SUBSTRING ====

Funcion strSubs <- __private_PSEINT_SUBCADENA(str,start,end)
	Definir strSubs como Texto;
	strSubs = subcadena(str,start,end);
FinFuncion

Funcion strSubs <- String_substring(str,start,end)
	Definir strSubs como Texto;
	validate_index_range("String_substring",str,start, end);
	strSubs = if_else(Num_isEquals(start, end), "", __private_PSEINT_SUBCADENA(str, start, Math_max_int(end-1,0)), TYPE_STRING());
FinFuncion

Funcion strSubs <- String_substring_from(str,start)
	Definir strSubs Como Texto;
	strSubs = String_substring(str,start,String_length(str));
FinFuncion

Funcion strSubs <- String_substring_from_start(str,numLimit)
	Definir strSubs Como Texto;
	strSubs = String_substring(str,0,numLimit);
FinFuncion

Funcion strSubs <- String_substring_from_end(str,numIndex)
	Definir strSubs Como Texto;
	Definir end Como Numero;
	end = String_length(str)-numIndex;
	strSubs = String_substring_from(str,end);
FinFuncion

Funcion str <- charAt(text,index)
	Definir str Como Texto;
	str = String_substring(text,index,Math_min_int(increment(index),String_length(text)));
FinFuncion

// =============================================================== INDEX ======= 
Funcion result <- String_indexOf(text,text_match)// --- >
	Definir result Como Numero;
	result = String_indexOf_fromIndex(text,text_match, 0);
FinFuncion 

Funcion result <- String_lastIndexOf(text,text_match)//< ---
	Definir result Como Numero;
	result = String_lastindexOf_fromIndex(text,text_match, String_length(text));
FinFuncion 

Funcion result <- String_indexOf_fromIndex(text,text_match, index)
	Definir result Como Numero;
	result = __private_String_Indexof_fromIndex_general(text,text_match,index,false);
FinFuncion 

Funcion result <- String_lastIndexOf_fromIndex(text,text_match, index)
	Definir result Como Numero;
	result = __private_String_Indexof_fromIndex_general(text,text_match,index,true);
FinFuncion 

Funcion result <- __private_String_Indexof_fromIndex_general(text, text_match, index,isLast)
	Definir result, i, index_Text, index_Match, end_index_match Como Numero;
	Definir text_Current Como Texto;
	Definir condition_index Como Logico;
	
	index_Text = String_length(text);//Hello world
	index_Match = String_length(text_match);//world
	result = -1;//default result
	
	i = if_else(isLast,decrement_step(decrement(index),decrement(index_Match)),index,TYPE_INT());
	end_index_match = if_else(isLast,-1,increment(index_Text)-index_Match,TYPE_INT()) ;//limit searches
	condition_index = if_else_TYPEBOOLEAN(isLast,i>=0, i<=(index_Text-index_Match)) &  Num_isEquals(result, -1) & !Num_isEquals(i, end_index_match);// condition: inRange & isSucces & inLimit
	
	Mientras condition_index Hacer
		text_Current = String_substring(text,i,i+index_Match);//text to compare
		result = if_else(String_isEquals(text_Current,text_match),i,-1,TYPE_INT());// result
		i = if_else(isLast,decrement(i),increment(i),TYPE_INT());//text advance
		condition_index = if_else_TYPEBOOLEAN(isLast,i>=0,i<=(index_Text-index_Match)) & Num_isEquals(result, -1) & !Num_isEquals(i, end_index_match);
	FinMientras
FinFuncion

Funcion index <- String_indexOf_fromIndex_speedNative(text,match,index_Start)
	Definir index, i, match_length, index_end como Numero;
	Definir condition Como Logico;
    index = -1;
    match_length = String_length(match);
	
	i = Math_max_Int(index_Start,0);
	index_end = String_length(text)-match_length;
	
	Mientras index_end>=i & Num_isEquals(index,-1) Hacer
		si String_isEquals(match, String_substring(text,i,i+match_length)) Entonces
			index =i;
			i = increment(index_end);
		SiNo
			i = increment(i);
		FinSi
	FinMientras
FinFuncion

//Optimizar KMP
Funcion index <- String_indexOf_fromIndex_KMP(text,text_pattern,index_Start)
	Definir index, i, j, pattern_length,text_length, LPS, len como Numero;
	Definir pattern como Texto;
	Definir condition, equalsChar Como Logico;
    index = -1;
	text_length = String_length(text);
	pattern_length = String_length(text_pattern);
	Dimension pattern[pattern_length];
	
	Dimension LPS[pattern_length];
	len = 0;
	
	Para i=0 Hasta decrement(pattern_length) con paso 1 hacer
		pattern[i] = charAt(text_pattern,i);
	FinPara
	
    Para i = 1 Hasta pattern_length-1 con paso 1 hacer
        Mientras len > 0 y !String_isEquals(pattern[i], pattern[len]) Hacer
            len = LPS[len-1] ;
        FinMientras
        Si String_isEquals(pattern[i], pattern[len]) Entonces
            len = increment(len);
        FinSi
        LPS[i] = len;
    FinPara
	
	condition = !Num_isEquals(j,pattern_length);
	i = Math_rangeLimit_Int(index_Start, 0,text_length);
	
	Mientras condition hacer 
		equalsChar = String_isEquals(pattern[j],charAt(text, i));
		j = if_else(equalsChar,increment(j),if_else(j<>0,LPS[Math_max_Int(j-1,0)],j,TYPE_INT()),TYPE_INT());
		i = if_else(equalsChar,increment(i), if_else(j<>0,i,increment(i),TYPE_INT()),TYPE_INT());
		condition = !Num_isEquals(j,pattern_length) & i<=text_length;
	FinMientras
	index=if(equalsChar,i-j, TYPE_INT());
FinFuncion
// =============================================================== OCURRENCES =======

Funcion result <- String_occurrences(text,text_match)
	Definir result Como Numero;
	result = __private_String_occurrences_general(text,text_match,false);
FinFuncion

Funcion result <- String_occurrences_overlap(text,text_match)
	Definir result Como Numero;
	result = __private_String_occurrences_general(text,text_match,true);
FinFuncion
//TODO5:actualizar con index_from
Funcion result <- __private_String_occurrences_general(text,text_match,isOverLap)
	Definir result, count, index, progress_sum Como Numero;
	Definir text_Current Como Texto;
	text_Current = text;
	count = 0;
	progress_sum = if_else(isOverLap,1,String_length(text_match),TYPE_INT());
	Mientras String_Contains(text_Current,text_match) Hacer
		index = String_indexOf(text_Current,text_match);
		text_Current = String_Delete(text_Current,0,index+progress_sum);
		count = increment(count);// i++
	FinMientras 
	result = count;
FinFuncion
// =============================================================== LENGTH =======
Funcion num <- String_length(text)
	Definir num Como Numero;
	num = Longitud(text); // --- native
FinFuncion

Funcion num <- String_length_index(text)
	Definir num Como Numero;
	num = Math_max_Int(String_length(text)-1,0);
FinFuncion

Funcion count <- String_countMatches(text, text_matcher)
	Definir count como Numero;
	count =	__private_String_countMatches_general(text, text_matcher, false);
FinFuncion

Funcion count <- String_countMatches_overlap(text, text_matcher)
	Definir count como Numero;
	count =	__private_String_countMatches_general(text, text_matcher, true);
FinFuncion

Funcion count <- __private_String_countMatches_general(text, text_matcher, isOverLap)
	Definir index, count , length_Match como Numero;
	length_Match = if_else(isOverLap,1,String_length(text_matcher),TYPE_INT());
	count = 0;
	index = String_indexOf_fromIndex_speedNative(text, text_matcher, 0);
	Mientras index>=0 Hacer
		count = increment(count);
		text = String_substring_from(text, if_else(isOverLap,1,index,TYPE_INT()));
		index = String_indexOf_fromIndex_speedNative(text, text_matcher, length_Match);
	FinMientras
FinFuncion
///========================================================>>>  [ ARRAY ] <<==/// #3

Funcion str_array <- array_ofString(array, size, type)
	Definir str_array como Texto;
	str_array = array_ofString_separator(array, size, ",",type);
FinFuncion

Funcion str_array <- array_ofString_separator(array, size, separator, type)
	Definir str_array como Texto;
	Definir i como Numero;
	str_array = "";
	i=0;
	size = decrement(size);
	Mientras i < size Hacer
		str_array = String_append(str_array, value_Parser_ToString(array[i],type));
		str_array = String_append(str_array, separator);
		i=increment(i);
	FinMientras
	str_array = String_append(str_array, value_Parser_ToString(array[i],type));
FinFuncion


Funcion index <- array_search_text(array, size, text)
	Definir index, i Como Numero;
	i = 0;
	index = -1;
	Mientras (i < size) & index < 0 hacer 
		index = if(String_isEquals(array[i], text),i,TYPE_INT());
		i = increment(i);
	FinMientras
FinFuncion

Funcion str_array <- array_QuickSort_Num_toString(array, size)
	Definir str_array, stack como Texto;
    Definir low, high, i, j, pivote, temp como Numero;
	
	str_array = array_ofString(array,size,TYPE_INT());
FinFuncion


Funcion num_range <- array_int_getRangeCeil(array, size, num)
	Definir num_range, i, j como Numero;//4,6,8,10     num: 5   result= 6
	para i=0 Hasta decrement(size) con paso 1 Hacer
		si array[i] >= num Entonces
			num_range = array[i];
			i = size;//break
		FinSi
	FinPara
FinFuncion
// -------------------------------------------------------------------------------------TODO9: alta el me ComparareTo()
///========================================================>>>  [ PRINTERS ] <<==///#4
Funcion print(text)
	__private_internal_printer_formater(text);
FinFuncion

Funcion println(text)
	text = String_append(text,"\n");
	print(text);
FinFuncion

Funcion print_simple(text)
	__PSEINT_print(text);
FinFuncion

Funcion println_simple(text)
	__PSEINT_println(text);
FinFuncion

Funcion println_progress(text)
	text = String_append(text,"\n");
	print_progress_with_speed(text, 100);
FinFuncion

Funcion print_progress(text)
	print_progress_with_speed(text, 100);
FinFuncion

Funcion print_progress_simple(text)
	print_progress_with_speed_simple(text, 100);
FinFuncion

Funcion print_progress_with_speed(text, speed)
	Definir index_breakline como Numero;
	index_breakline = String_indexOf(text,"\n");
	Mientras index_breakline>-1 Hacer
		print_progress_with_speed_simple(String_substring(text, 0, index_breakline),speed);
		breakline();
		text = String_substring(text, increment_step(index_breakline,2), String_length(text));
		index_breakline = String_indexOf(text,"\n");
	FinMientras
	print_progress_with_speed_simple(String_substring(text, 0, String_length(text)),speed);
FinFuncion

Funcion print_progress_with_speed_simple(text, speed)
	Definir i, end Como Numero;
	end = String_length(text);
	Para i = 0 Hasta end hacer 
		print_simple(charAt(text,i));
		Sleep(speed);
	FinPara
FinFuncion

Funcion __PSEINT_println(text)
	Escribir text;
FinFuncion

Funcion __PSEINT_print(text)
	Escribir text Sin Saltar ;
FinFuncion
//=================================================================PRINTLN
// Pasos generales del proceso:
// 1. Calcular cuantas cadenas se deben imprimir.
// 2. Rellenar el arreglo eliminando los caracteres "\n" innecesarios.
// 3. Verificar si existe color o estilo aplicado en la cadena:
//    - Si existe, obtener la posicion con `indexOf` y `lastIndexOf`.
//    - Si ambas posiciones son iguales, guardar ese color como definitivo.
//    - Si son diferentes, utilizar el valor correspondiente a `lastIndexOf`.
// 4. Aplicar el color al texto si no cuenta con uno definido al inicio.
// 5. Enviar todo el arreglo al m\E9todo de impresi\F3n en un solo paso.

Funcion __private_internal_printer_formater(text)
	Definir index_breakline,text_length como Numero;
	index_breakline = String_indexOf(text,"\n");
	Mientras index_breakline>-1 Hacer
		println_simple(String_substring(text, 0, index_breakline));
		text = String_substring(text, increment_step(index_breakline,2), String_length(text));
		index_breakline = String_indexOf_fromIndex_speedNative(text,"\n",0);
	FinMientras
	print_simple(String_substring(text,0, String_length(text)));
FinFuncion

Funcion print_shoot(text)
	__private_internal_printer_formater_shoot(text, false);
FinFuncion

Funcion println_shoot(text)
	text = String_append(text,"\n");
	print_shoot(text);
FinFuncion

Funcion print_shoot_clear(text)
	__private_internal_printer_formater_shoot(text, true);
FinFuncion

Funcion println_shoot_clear(text)
	text = String_append(text,"\n");
	print_shoot_clear(text);
FinFuncion

Funcion __private_internal_printer_formater_shoot(text, isClear)
	Definir index_breakline, text_length, num_breakline, i como Numero;
	Definir text_municion Como Texto;
	
	num_breakline = String_countMatches(text, "\n");
	num_breakline = Math_max_int(num_breakline,1);
	Dimension text_municion[num_breakline];
	
	index_breakline = String_indexOf_fromIndex_speedNative(text,"\n",0);
	i=0;
	Mientras i<num_breakline Hacer
		text_municion[i]=String_substring(text, 0, index_breakline);
		text = String_substring(text, increment_step(index_breakline,2),String_length(text));
		index_breakline = String_indexOf_fromIndex_speedNative(text,"\n",0);
		i=increment(i);
	FinMientras
	
	si isClear Entonces
		ClearConsole();
	FinSi
	
	println_array(text_municion,num_breakline);//shoot
	print_simple(String_substring(text,0, String_length(text)));
FinFuncion

Funcion println_array(array, index_array)
	Definir i como Numero;
	para i = 0 Hasta decrement(index_array) Hacer
		println_simple(array[i]);
	FinPara
FinFuncion

Funcion print_array(array, index_array)
	Definir i como Numero;
	para i = 0 Hasta decrement(index_array) Hacer
		print_simple(array[i]);
	FinPara
FinFuncion

Funcion println_array_color(array, index_array, color)
	Definir i como Numero;
	para i = 0 Hasta decrement(index_array) Hacer
		array[i] = String_append(color,array[i]); 
	FinPara
	println_array(array,index_array);
FinFuncion

Funcion print_array_color(array, index_array, color)
	Definir i como Numero;
	para i = 0 Hasta decrement(index_array) Hacer
		array[i] = String_append(color,array[i]); 
	FinPara
	print_array(array,index_array);
FinFuncion
// ...
Funcion repeat(text,numEnd)
	Definir start Como Numero;
	Para start=1 Hasta numEnd Con Paso 1 Hacer
		print(text);
	FinPara
FinFuncion
// ...
Funcion repeat_ln(text,numEnd)
	Definir start Como Numero;
	Para start=1 Hasta numEnd Con Paso 1 Hacer
		println(text);
	FinPara
FinFuncion
//..
Funcion breakline
	print("\n");
FinFuncion

Funcion HideText
	print(String_append(symbol_Escape(),"2J"));
FinFuncion

Funcion ClearConsole
	Limpiar Pantalla;
FinFuncion

Funcion Sleep(s)
	Sleep_Millisecond(s*1000);
FinFuncion

Funcion Sleep_Millisecond(ms)
	Esperar ms Milisegundos;
FinFuncion
Funcion Sleep_And_Clear(s)
	Sleep_Millisecond_And_Clear(s*1000);
FinFuncion

Funcion Sleep_Millisecond_And_Clear(ms)
	Sleep_Millisecond(ms);
	ClearConsole();
FinFuncion

Funcion sleep_if_message(s,condition,message_date)
	si condition Entonces
		log_INFO(message_date);
		Sleep(s);
	FinSi
FinFuncion

Funcion Sleep_CircleLoad(s)
	Definir sequence como Texto;
	Definir size como Numero;
	size = 4;
	Dimension sequence[size];
	sequence[0]="|";
	sequence[1]="/";
	sequence[2]="-";
	sequence[3]="\";
	Sleep_Animation(4, 100, sequence, size,35,10, true());
FinFuncion
//TODO: REPARA ESTAS ANIMACIONES
//enableRepeat para hacer que cada frame tarde lo que deba de tardar hasta que termina el tiempo
//necesitaria otro metodo esta ya hace lo que hace 
Funcion Sleep_Animation(s, speed, text_array_Sequence, size, padding_x, padding_y, EnableClear)
	Definir Time, Time_End, Time_adjust como Numero;
	Definir padding_x_text Como Texto;
	
	Time_adjust = Math_min_Int(Math_max_Int(550, speed),1000);
	
	Time_End = (s*Time_adjust)/speed;
	Time = 0;
	padding_x_text = TUI_Row_WithText(" ",padding_x);
	repeat_ln("",padding_y);
	Mientras Time < Time_End Hacer
		print_simple(String_append(padding_x_text,text_array_Sequence[Math_module(Time,size)]));
		Time = increment(Time);
		Sleep_Millisecond(speed);
		si EnableClear Entonces
			ClearConsole();
			repeat_ln("",padding_y);
		SiNo
			padding_x_text="";
		FinSi
	FinMientras
	ClearConsole();
FinFuncion
//Sleep_Animations  loading points: . .. ... 

// =============================================================== LOGS
Funcion log_WARNING(message)
	__private_general_log(message,"WARNING: ",COLOR_YELLOW());
FinFuncion

Funcion log_INFO(message)
	__private_general_log(message,"INFO: ",COLOR_WHITE());
FinFuncion

Funcion log_ERROR(message)
	__private_general_log(message,"ERROR: ",COLOR_RED());
FinFuncion

Funcion log_DEBUG(message)
	__private_general_log(message,"DEBUG: ",COLOR_BLUE());
FinFuncion

Funcion log_TRACE(message)
	__private_general_log(message,"TRACE: ",COLOR_CYAN());
FinFuncion

Funcion log_FATAL(message)
	__private_general_log(message,"FATAL: ",COLOR_MAGENTA());
FinFuncion

Funcion Test_checkpoint(id)
	Test_checkpoint_info(id, "");
FinFuncion

Funcion Test_checkpoint_info(id, info_string)
	breakline();
	println_simple(Color_setColorText(String_append_withSeparator(" < "," >- - - - - - - - - - - </>",num_ToString(id)), COLOR_CYAN()));
	si !String_isEmpty(info_string) Entonces
		Definir popup_message como Texto;
		popup_message = String_append_withSeparator(" < start >","< /end >",info_string);
		println_simple(Color_setColorText(popup_message, COLOR_CYAN()));
	FinSi
	user_input_wait();
FinFuncion

// selected color
Funcion __private_general_log(message,start_tag,SELECTED_COLOR)
	message = String_append(start_tag,message);
	println_simple(String_append(SELECTED_COLOR,message));
FinFuncion
///========================================================>>>  [ INT ] <<==///#5
// =============================================================== CONVERSIONS
//Int_IsPositive(n)
//Int_IsNegative(n)
//Int_Negate(n)

Funcion num <- TextToNum(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion int_result <- int_bitSum(A_int,B_int)
	Definir int_result como Numero;
	int_result = binaryString_ToInt(binaryString_SUM(int_ToBinaryString(A_int),int_ToBinaryString(B_int)));
FinFuncion

Funcion binaryString <- int_ToBinaryString(num)
	Definir binaryString, residue Como Texto;
	Mientras num>0 Hacer
		residue = num_ToString(Math_module(num,2));
		binaryString = String_insert(binaryString,residue,0);
		num = Math_truncate(num/2);
	FinMientras
	binaryString = String_pad_start(binaryString,"0000");
FinFuncion

Funcion int_result <- Int_BitMoveLeft(int_num, num_movements)
	Definir int_result como Numero;
	int_result = binaryString_ToInt(binaryString_MoveLeft(int_ToBinaryString(int_num), num_movements));
FinFuncion

Funcion int_result <- Int_BitMoveRigth(int_num, num_movements)
	Definir int_result como Numero;
	int_result = binaryString_ToInt(binaryString_MoveRigth(int_ToBinaryString(int_num), num_movements));
FinFuncion

Funcion num_range <- int_getRangeCeil_ToFromSeparatedString(num, list_Str)
	Definir num_range, i, num_carry_int, length_listStr como Numero;
	Definir num_carry, Char_Current como texto;
	num_carry = "";
	length_listStr = decrement(String_length(list_Str));
	Mientras i < length_listStr Hacer
		Char_Current = charAt(list_Str, i);
		si char_isNumber(Char_Current) Entonces
			num_carry = String_append(num_carry, Char_Current);
		SiNo
			num_carry_int = String_ToNum(num_carry);
			num_carry = "";
			si num_carry_int >= num Entonces
				num_range = num_carry_int;
				i = increment_step(i, length_listStr);
			FinSi
		FinSi
		i = increment(i);
	FinMientras
FinFuncion
//--------------Binary

Funcion int_num <- binaryString_ToInt(binaryString)
	Definir int_num, i, binary_Length, bit como Numero;
	binary_Length = decrement(String_length(binaryString));
	int_num = 0;
	para i = 0 Hasta binary_Length Con Paso 1 hacer
		bit = String_toNum(charAt(binaryString,i));//bit 1/0
		int_num = (int_num * 2) + bit;// 1 0 1 1 -->  (((n*2 + 1)*2 + 0)*2 + 1)*2 + 1) = 11
	FinPara
FinFuncion

Funcion binaryString_Result <- binaryString_AND(binaryString1, binaryString2)
	Definir binaryString_Result como Texto;
	binaryString_Result = binaryString_LogicalOperations(binaryString1, binaryString2, 0);
FinFuncion

Funcion binaryString_Result <- binaryString_OR(binaryString1, binaryString2)
	Definir binaryString_Result como Texto;
	binaryString_Result = binaryString_LogicalOperations(binaryString1, binaryString2, 1);
FinFuncion
Funcion binaryString_Result <- binaryString_XOR(binaryString1, binaryString2)
	Definir binaryString_Result como Texto;
	binaryString_Result = binaryString_LogicalOperations(binaryString1, binaryString2, 2);
FinFuncion

Funcion binaryString_Result <- binaryString_NOT(binaryString1)
	Definir binaryString_Result como Texto;
	binaryString_Result = binaryString_LogicalOperations(binaryString1, "", 3);
FinFuncion

Funcion bitChar <- array_bitChar_LogicalOperations(bitChar1, bitChar2, index)
	Definir bitChar como Texto;
	Segun index Hacer
		0:bitChar = bitChar_AND(bitChar1,bitChar2);
		1:bitChar = bitChar_OR(bitChar1,bitChar2);
		2:bitChar = bitChar_XOR(bitChar1,bitChar2);
		De Otro Modo: bitChar = bitChar_NOT(bitChar1);
	FinSegun
FinFuncion

Funcion binaryString_Result <- binaryString_LogicalOperations(binaryString1, binaryString2, index)
	Definir binaryString_Result, Norm_binary como Texto;
	Definir binary_MaxSize, i como Numero;
	binaryString_Result = "";
	Norm_binary = binaryString_GetPad_MaxSize(binaryString1, binaryString2);
	binaryString1 = String_pad_start(binaryString1, Norm_binary);
	binaryString2 = String_pad_start(binaryString2, Norm_binary);
	binary_MaxSize = decrement(String_length(Norm_binary));
	para i = 0 Hasta binary_MaxSize Con Paso 1 Hacer
		binaryString_Result = String_append(binaryString_result,array_bitChar_LogicalOperations(charAt(binaryString1,i),charAt(binaryString2,i),index));
	FinPara
	binaryString_Result = String_Delete(binaryString_result,0,if_else(String_indexOf(binaryString_result,"1") <> -1,String_indexOf(binaryString_result,"1"),0,TYPE_INT()));
FinFuncion

Funcion binaryPad <- binaryString_GetPad_MaxSize(binaryString1, binaryString2)
	Definir binaryPad como texto;
	Definir max_length como Numero;
	max_length = Math_max_Int(String_length(binaryString1),String_length(binaryString2));
	binaryPad= String_RepeatText("0",max_length);
FinFuncion

Funcion bitChar_Result <- bitChar_AND(bit_char1, bit_char2)
	Definir bitChar_Result como Texto;
	bitChar_Result = if_else(String_isEquals(bit_char1,"1") & String_isEquals(bit_char2, "1"),"1","0",TYPE_STRING());
FinFuncion

Funcion bitChar_Result <- bitChar_OR(bit_char1, bit_char2)
	Definir bitChar_Result como Texto;
	bitChar_Result = if_else(String_isEquals(bit_char1,"0") & String_isEquals(bit_char2, "0"),"0","1",TYPE_STRING());
FinFuncion

Funcion bitChar_Result <- bitChar_XOR(bit_char1, bit_char2)
	Definir bitChar_Result como Texto;
	bitChar_Result = if_else(String_isEquals(bit_char1,bit_char2),"0","1",TYPE_STRING());
FinFuncion

Funcion bitChar_Result <- bitChar_NOT(bit_char1)
	Definir bitChar_Result como Texto;
	bitChar_Result = if_else(String_isEquals(bit_char1,"1"),"0","1",TYPE_STRING());
FinFuncion

Funcion binaryString_result <- binaryString_MoveLeft(binaryString, num_movements)
	Definir binaryString_result como Texto;
	binaryString_result = String_append(binaryString, String_RepeatText("0", num_movements));
FinFuncion

Funcion binaryString_result <- binaryString_MoveRigth(binaryString, num_movements)
	Definir binaryString_result como Texto;
	binaryString_result = String_substring(binaryString, 0, decrement_step(String_length(binaryString), num_movements));
FinFuncion

Funcion binaryString_result <- binaryString_SUM(binaryString1, binaryString2)
    Definir binaryString_result, sum, carry Como Texto;
    Mientras String_Contains(binaryString2, "1") Hacer
        sum  = binaryString_XOR(binaryString1, binaryString2);
        binaryString2  = binaryString_MoveLeft(binaryString_AND(binaryString1, binaryString2),1);
        binaryString1 = sum;
    FinMientras
    binaryString_result = sum;
FinFuncion

Funcion binaryString_result <- binaryString_TwosComplement(binaryString)
	Definir binaryString_result como Texto;
	binaryString_result = binaryString_SUM(binaryString_NOT(binaryString),String_pad_start("1",String_RepeatText("0",String_length(binaryString))));
FinFuncion

///========================================================>>>  [ MATH ] <<==///#6
// =============================================================== MAX
Funcion result <- Math_max_Int(value,limit)
	Definir result Como Numero;
	result = if_else(value>limit,value,limit,TYPE_INT());
FinFuncion
// max = (1>0, 1,0) result = 1
Funcion result <- Math_max_Float(value,limit)
	Definir result Como Real;
	result = if_else(value>limit,value,limit,TYPE_FLOAT());
FinFuncion

// =============================================================== MIN
Funcion result <- Math_min_int(value,limit)
	Definir result Como Numero;
	result = if_else(value<limit,value,limit,TYPE_INT());
FinFuncion
// min = (1<0, 0,1) result = 0
Funcion result <- Math_min_float(value,limit)
	Definir result Como Real;
	result = if_else(value<limit,value,limit,TYPE_FLOAT());
FinFuncion

// =============================================================== IN_RANGE (MIN<NUM>MAX)
Funcion result <- Math_rangeLimit_Float(value,limit_min,limit_max)
	Definir result Como Real;
	result = Math_max_Float(limit_min, Math_min_float(limit_max,value));  
FinFuncion
// rangeLimit =  [min = (1<2, 2,1)] result min = 2 -> max(0>min,0,min) result = 2
Funcion result <- Math_rangeLimit_Int(value,limit_min,limit_max)
	Definir result Como Numero;
	result = Math_max_Int(limit_min, Math_min_int(limit_max,value));
FinFuncion
// =============================================================== POW
Funcion num_pow <- Math_pow(num, num2)
	Definir num_pow,i como Numero;
	num_pow = 1;
	i = 1;
	Mientras i <= num2 Hacer
		num_pow = num_pow*num;//2*2>4*2>8*2
		i = increment(i);
	FinMientras
FinFuncion

Funcion num_pow <- Math_pow_float(base, exponente)
    Definir num_pow, ln_base Como Real;
    ln_base = Math_ln(base);
    num_pow = Math_exp(exponente * ln_base);
FinFuncion

// ===============================================================
Funcion logx0 <- Math_log(x, base)
    Definir logx0 Como Real;
    logx0 = Math_ln(x) / Math_ln(base);
FinFuncion

// ===============================================================
Funcion num_sin <- Math_sin(x)
    Definir num_sin Como Real;//RAD
	x = Math_Normalize_InPiRange(x);
	num_sin =  Math_serie_taylor(x,x,20,1,2,2, true(), true());
FinFuncion

Funcion num_cos <- Math_cos(x)
    Definir num_cos Como Real;
	x = Math_Normalize_InPiRange(x);
	num_cos =  Math_serie_taylor(x,1,30,0,2,2,true(), true());
FinFuncion

Funcion x_norm <- Math_Normalize_InPiRange(x)
	Definir x_norm, pi_ como Real;
	pi_ = Math_PI();
	x_norm = Math_module(x + pi_, 2 * pi_) - pi_;
FinFuncion

Funcion num_tan <- Math_tan(x)
	Definir num_tan, n, i,t Como Real;
	num_tan =  Math_sin(x)/Math_cos(x);
FinFuncion

Funcion num_exp <- Math_exp(x)
    Definir num_exp, term , n Como Real;
	term = 40+x;
    num_exp = Math_serie_taylor(x,1,term,0,1,1,false(), false());
FinFuncion

Funcion lnx0 <- Math_ln(x)
	Definir lnx0, t, term Como Real;
    Definir i, n Como Entero;
	//lnx0 =  Math_serie_taylor(decrement(x),decrement(x), 10,1, 1, 1, false(), true());
	t = decrement(x);
    lnx0 = t;
    term = t;
    n = 1;
	
    Para i = 2 Hasta 10 Con Paso 1 Hacer
		n = i;
        term = -term * t;   // alterna signo y multiplica por t
        lnx0 = lnx0 + term / n;
    FinPara
FinFuncion
// TODO: las variables como x y firts_term son molestas ver como hacer ln() o dejarlo asi
Funcion num_taylor <- Math_serie_taylor(x,first_term, num_terms,n_start, n_increment, num_exp, isFact, HasAlternations)
	Definir num_taylor,term, i, n , n_divisor Como Real;	
	num_taylor=first_term;
	term=first_term;
	n=n_start;
	
	n_divisor =1;
	para i=1 Hasta num_terms con paso 1 Hacer
		n = increment_step(n,n_increment);
		si isFact Entonces
			n_divisor = decrement(n)*n;
		SiNo
			n_divisor = n;
		FinSi
		n_divisor = if_else(n_divisor<=0,1,n_divisor, TYPE_FLOAT());
		
		term = term * Math_pow(x,num_exp)/n_divisor; 
		si HasAlternations Entonces
			term = -term;
		FinSi
		
		num_taylor=increment_step(num_taylor, term);
	FinPara
FinFuncion

Funcion num_sin <- Math_sin_DEG(x)
	Definir num_sin Como Real;
	num_sin= Math_sin(RAD_TO_DEG(x));
FinFuncion

Funcion num_cos <- Math_cos_DEG(x)
	Definir num_cos Como Real;
	num_cos= Math_cos(RAD_TO_DEG(x));
FinFuncion

Funcion num_deg <- RAD_TO_DEG(x_rad)
	Definir num_deg como Real;
    num_deg = x_rad * (Math_PI()/180);
FinFuncion
//Babylonian method: 1/2(xk+S/xk)
Funcion num_sqrt <- Math_sqrt(S)
    Definir num_sqrt, xk, i Como Real;
	xk=S;
	para i=1 Hasta 6 con paso 1 Hacer
		num_sqrt = 0.5*(xk+(S/xk));
		xk = num_sqrt;
	FinPara
FinFuncion
// =============================================================== ROUND
// module = a-floor(a/b)*b
Funcion module <- Math_module(dividend,divisor)
	Definir module Como Numero;
	divisor = Math_max_int(divisor,1);
	module = dividend-Math_truncate(dividend/divisor)*divisor;
FinFuncion

Funcion num_abs <- Math_abs(num)
	Definir num_abs Como Numero;
	num_abs=if_else(num < 0, num*(-1),num,TYPE_INT());
FinFuncion

Funcion num_floor <- Math_floor(num)
	Definir num_floor Como Numero;
	Definir num_string como Texto;
	num_floor = Math_truncate(num);
	si num_floor < 0 & String_isNumber_float(num_toString(num)) Entonces
		num_floor = decrement(num_floor); 
	FinSi
FinFuncion

Funcion num_trunc <- Math_truncate(num)
	Definir num_trunc, index_point Como Numero;
	Definir str_num Como Texto;
	str_num = num_ToString(num);
	index_point = String_indexOf_fromIndex_speedNative(str_num,".",0);
	index_point = Math_max_Int(index_point,0);
	num_trunc = if_else(String_isNumber_float(str_num) & index_point>0,String_ToNum(String_substring_from_start(str_num,index_point)),num,TYPE_INT());
FinFuncion 

Funcion num_signum <- Math_signum(num)
	Definir num_signum Como Numero;
	num_signum = if_else(num>0, 1, if_else(num<0, -1, 0, TYPE_INT()), TYPE_INT());
FinFuncion

funcion num_div <- Math_Div(dividend,divisor)
	Definir num_div como Numero;
	divisor= if_else(divisor == 0,1,divisor,TYPE_INT());
	num_div = Math_truncate(dividend / divisor);
FinFuncion

Funcion num_fact <- Math_factorial(x)
    Definir num_fact,i Como Real;
	num_fact=1;
	para i=1 Hasta x Con Paso 1 Hacer
		num_fact = num_fact*i;
	FinPara
FinFuncion
// =============================================================== CONSTANTS
Funcion num_PI <- Math_PI
	Definir num_PI como Real;
	num_PI = 3.141592653589793;
FinFuncion

Funcion num_EULER <- Math_EULER
	Definir num_PI como Real;
	num_EULER = 2.718281828459045;
FinFuncion
///========================================================>>>  [ BOOLEANS ] <<==///#7
// ===========================================================  STRING <<<<<<
Funcion boolean <- String_isEmpty(text)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(text,"");
FinFuncion

Funcion boolean <- String_isBlank(text)
	Definir boolean Como Logico;
	Definir i Como Numero;
	Definir text_Current Como Texto;
	boolean = true;
	i = 0;
	Mientras i<String_length(text) Hacer
		text_Current = charAt(text,i);
		boolean = (text_Current == " ");
		i = if_else(boolean,increment(i),i+String_length(text),TYPE_INT());
	FinMientras
FinFuncion
Funcion boolean <- String_Contains(text,text_match)
	Definir boolean Como Logico;
	boolean = String_indexOf(text,text_match) > -1;
FinFuncion

Funcion boolean <- String_startsWith(text,text_match)
	Definir boolean Como Logico;
	boolean = String_isEquals(String_substring_from_start(text,String_length(text_match)),text_match);
FinFuncion

Funcion boolean <- String_endsWith(text,text_match)
	Definir boolean Como Logico;
	boolean = String_isEquals(String_substring_from_end(text,String_length(text_match)),text_match);
FinFuncion

Funcion boolean <- String_isEquals(str1,str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1,str2);
FinFuncion

Funcion boolean <- String_isEquals_IgnoreCase(str1,str2)
	Definir boolean Como Logico;
	boolean = String_isEquals(String_ToUpperCase(str1),String_ToUpperCase(str2));
FinFuncion

Funcion boolean <- String_isNumber(text)
	Definir boolean Como Logico;
	boolean = String_isNumber_int(text) O String_isNumber_float(text);
FinFuncion

funcion found <- string_Struct_Contains_ignoreCase(text_search, collection_Text, separator)
	Definir found Como Logico;
	found = string_Struct_Contains(String_ToLowerCase(text_search), String_ToLowerCase(collection_Text), separator);
FinFuncion

funcion found <- string_Struct_Contains(text_search, collection_Text, separator)
	Definir found Como Logico;
	Definir startIndex, endIndex, collectionLength Como Numero;
	Definir currentToken Como Texto; 
	
	found = false();
	startIndex = 0;
	endIndex = 0;
	collectionLength = String_length(collection_Text);
	
	Mientras endIndex < collectionLength Hacer
		endIndex = String_indexOf_fromIndex(collection_Text, separator, startIndex);
		endIndex = if_else(endIndex < 0, collectionLength, endIndex, TYPE_INT());
		
		currentToken = String_substring(collection_Text, startIndex, endIndex);
		
		si String_isEquals(text_search, currentToken) Entonces
			found = true();
			endIndex = collectionLength;
		FinSi
		
		startIndex = increment(endIndex);
	FinMientras
FinFuncion

Funcion boolean <- __private_isEquals_general(value1,value2)//---- Private
	Definir boolean Como Logico;
	boolean = (value1==value2);
FinFuncion
//simplificar

Funcion boolean <- String_isBoolean(text)
	Definir boolean Como Logico;
	Definir index como Numero;
	boolean = false;
	text = String_ToLowerCase(text);
	index = 0;
	Mientras !boolean & !String_isEquals(array_String_Booleans_True(index), string_Null()) hacer 
		boolean = String_isEquals(text, array_String_Booleans_True(index));
		index = increment(index);
	FinMientras
	index = 0;
	Mientras !boolean & !String_isEquals(array_String_Booleans_False(index), string_Null()) hacer 
		boolean = String_isEquals(text, array_String_Booleans_False(index));
		index = increment(index);
	FinMientras
FinFuncion

Funcion boolean <- String_isBoolean_true(text)
	Definir boolean Como Logico;
	Definir index como Numero;
	boolean = false;
	text = String_ToLowerCase(text);
	index = 0;
	Mientras !boolean & !String_isEquals(array_String_Booleans_True(index), string_Null()) hacer 
		boolean = String_isEquals(text, array_String_Booleans_True(index));
		index = increment(index);
	FinMientras
FinFuncion

Funcion boolean <- String_isNumber_int(text)
	Definir boolean Como Logico;
	Definir i, length Como Numero;
	text = if_else(String_startsWith(text,"-"),String_substring_from(text,1),text,TYPE_STRING());
	length = String_length(text);
	boolean = false;
	i = 0;
	Mientras i<length Hacer
		boolean = char_isNumber(charAt(text,i));
		i = if_else(boolean,increment(i),length,TYPE_INT());
	FinMientras
FinFuncion

Funcion boolean <- String_isNumber_float(str_num)
	Definir boolean, interger_valid, decimal_valid Como Logico;
	Definir str_decimal Como Texto;
	str_num = if_else(String_Contains(str_num," "),String_trim(str_num), str_num,TYPE_STRING()); // poner esto en trim
	Si String_Contains(str_num, ".") & String_indexOf(str_num, ".") > 0 Entonces
		interger_valid = String_isNumber(String_substring_from_start(str_num,String_indexOf(str_num, ".")));
		str_decimal = String_substring_from(str_num,increment(String_indexOf(str_num, ".")));
		decimal_valid = String_isNumber(str_decimal) & !String_startsWith(str_decimal,"-");
		boolean = decimal_valid & interger_valid;
	SiNo
		boolean = String_isNumber_int(str_num);
	FinSi
FinFuncion

// =============================================================== NUM  <<<<<<
Funcion boolean <- Num_isInterger(num)
	Definir boolean Como Logico;
	boolean = (num == Math_truncate(num));
FinFuncion

Funcion boolean <- Num_isEquals(num,num2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(num,num2);
FinFuncion

// simular compuertas logica con igualacion
// and x=1, x=2
// or x=1 x=1
// con if_else se podria
// =============================================================== CHAR  <<<<<<
Funcion boolean <- char_isNumber(char)
	Definir boolean Como Logico;
	boolean = ascii_IsNumberSymbols(char);
FinFuncion

// =============================================================== COLOR  <<<<<<
Funcion boolean <- String_hasColor(text)
	Definir boolean Como Logico;
	boolean = __private_String_hasStyle_or_Color(text);
	//TODO8: terminar junto con remove Colors
FinFuncion

Funcion boolean <- String_hasStyle(text)
	Definir boolean Como Logico;
	boolean = __private_String_hasStyle_or_Color(text);
FinFuncion

Funcion boolean <- String_hasColor_or_Style(text)
	Definir boolean Como Logico;
	boolean =__private_String_hasStyle_or_Color(text);
FinFuncion

Funcion boolean <- __private_String_hasStyle_or_Color(text)
	Definir boolean Como Logico;
	boolean = String_Contains(text,symbol_Escape());
FinFuncion
// =============================================================== DATE  <<<<<<
Funcion boolean <- Local_Date_isBisies(year)
	Definir boolean Como Logico;
	boolean = (Num_isEquals(Math_module(year,4),0) & !Num_isEquals(Math_module(year,100),0)) | Num_isEquals(Math_module(year,400),0);
FinFuncion
// =============================================================== DATE  
Funcion isEmpty <- collection_isEmpty(struct_collection)
	Definir isEmpty como Logico;
	isEmpty = String_isEmpty(collection_getContent_DataArea(struct_collection));
FinFuncion

//============================ OTHER 
Funcion isValid <- TYPE_isValid(TYPE)
	Definir isValid Como Logico;
	isValid = String_isEquals(TYPE, TYPE_STRING()) | String_isEquals(TYPE, TYPE_INT()) | String_isEquals(TYPE, TYPE_BOOLEAN()) | String_isEquals(TYPE, TYPE_FLOAT());
FinFuncion
///========================================================>>>  [ CONDITIONS ] <<==///#8
Funcion result <- if_else(condition,result1,result2,TYPE)
	Segun TYPE Hacer
		TYPE_INT():
			Definir result Como Numero;
		TYPE_STRING():
			Definir result Como Texto;
		TYPE_FLOAT():
			Definir result Como Real;
		De Otro Modo:
			Definir result Como Logico;
	FinSegun
	
	Si condition Entonces
		result = result1;
	SiNo
		result = result2;
	FinSi	
FinFuncion

Funcion result <- if(condition,result1,TYPE)
	Segun TYPE Hacer
		TYPE_INT():
			Definir result Como Numero;
			result = number_Null();
		TYPE_STRING():
			Definir result Como Texto;
			result = string_Null();
		TYPE_FLOAT():
			Definir result Como Real;
			result = number_Null();
		De Otro Modo:
			Definir result Como Logico;
			result = false();
	FinSegun
	
	Si condition Entonces
		result = result1;
	FinSi
FinFuncion
//TODO: eliminar esto y limpiar funciones que ocupen esto 
Funcion result <-if_else_TYPEBOOLEAN(condition, result1, result2)
	Definir result como logico;
	si condition Entonces
		result = result1;
	SiNo
		result = result2;
	FinSi
FinFuncion

Funcion condition_error_Message_Funtion(condition,method,message)
	si condition Entonces
		error_Message_Funtion(method,message);
	FinSi
FinFuncion

Funcion condition_error_Message(condition, message)
	si condition Entonces
		error_Message(message);
	FinSi
FinFuncion

funcion error_Message_Funtion(method,message)
	error_Message(String_append_withSeparator(method, message,"() // "));
FinFuncion

funcion error_Message(message)
	println_simple(symbol_Escape()+"31m[ERROR] // "+message+".");
FinFuncion

Funcion condition_message_log(condition, message, log)
	si condition Entonces
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

Funcion result <- value_catch(expected_value, method, message,TYPE)
	Segun TYPE Hacer
		TYPE_INT():
			Definir result Como Numero;
			result = number_Null();
		TYPE_FLOAT():
			Definir result Como Real;
			result = number_Null();
		TYPE_BOOLEAN():
			Definir result Como Logico;
			result = false;
		De Otro Modo:
			Definir result Como Texto;
			result = string_Null();
	FinSegun
	
	si value_isNull(expected_value, TYPE) Entonces
		error_Message_Funtion(method, message);
	SiNo
		result = expected_value;
	FinSi
FinFuncion

Funcion result <- value_catch_toString(expected_value, method, message,TYPE)
	Definir result Como Texto;
	result = value_Parser_ToString(value_catch(expected_value, method, message,TYPE), TYPE);
FinFuncion

Funcion validate_index_range(funtion_name, str, start, end)
	Definir num_lentgh como Numero;
	Definir Dates Como texto;
	Dimension Dates[3];
	num_lentgh = String_length(str);
	Dates[0] = String_append("/ Start:",num_ToString(start));
	Dates[1] = String_append("/ End:",num_ToString(End));
	Dates[2] = String_append("/ Length:",num_ToString(num_lentgh));
	
	condition_error_Message_Funtion(start>end, funtion_name, String_append_withSeparator(String_append("Start > End :: ",num_ToString(start)), num_ToString(end),">"));
	condition_error_Message_Funtion(start<0,funtion_name,"index start negative");
	condition_error_Message_Funtion(end<0,funtion_name,"index end negative");
	condition_error_Message_Funtion(start > num_lentgh | end>num_lentgh,funtion_name, String_append("index out of range ", array_ofString_separator(Dates,3,"",TYPE_STRING())));
FinFuncion


Funcion exection_Error(message_Error)
	Definir error_int Como Entero;
	log_ERROR(message_Error);
	error_int = string_Null();
FinFuncion

///========================================================>>>  [ DEFINITIONS ] <<==///#9
// booleans
Funcion boolean <- false
	Definir boolean Como Logico;
	boolean = Falso;
FinFuncion

Funcion boolean <- true
	Definir boolean Como Logico;
	boolean = Verdadero;
FinFuncion

Funcion value <- array_String_Booleans_False(index)
	Definir value Como Texto;
	segun index hacer 
		0: value = "false";
		1: value = "falso";
		2: value = "no";
		3: value = "f";
		4: value = "n";
		5: value = "0";
		De Otro Modo:
			value = string_Null();
	FinSegun
FinFuncion

Funcion value <- array_String_Booleans_True(index)
	Definir value Como Texto;
	segun index hacer 
		0: value = "true";
		1: value = "verdadero";
		2: value = "yes";
		3: value = "si";
		4: value = "t";
		5: value = "v";
		6: value = "y";
		7: value = "s";
		8: value = "1";
		De Otro Modo:
			value = string_Null();
	FinSegun
FinFuncion

Funcion numInc <- increment(num)
	Definir numInc Como Numero;
	numInc = num+1;
FinFuncion 

Funcion str <- string_Null
	Definir str Como Texto;
	str = "";
FinFuncion

Funcion Num <- number_Null
	Definir Num Como Numero;
	Num = -1;
FinFuncion
// color&style
Funcion str <- symbol_Escape
	Definir str Como Texto;
	str = "[";
FinFuncion

Funcion str <- symbol_Separator
	Definir str Como Texto;
	str = "";
FinFuncion

Funcion str <- symbol_Separator_Simple
	Definir str Como Texto;
	str = ",";
FinFuncion

Funcion str <- symbol_ExtraData
	Definir str Como Texto;
	str = ":";
FinFuncion

Funcion str <- symbol_Separator_key_value
	Definir str Como Texto;
	str = "=";
FinFuncion

Funcion numInc <- increment_step(num,value)
	Definir numInc Como Numero;
	numInc = num+value;
FinFuncion

Funcion numDec <- decrement(num)
	Definir numDec Como Numero;
	numDec = num-1;
FinFuncion 

Funcion numDec <- decrement_step(num,value)
	Definir numDec Como Numero;
	numDec = num-value;
FinFuncion
//==================== hacer para float

Funcion TYPE <- TYPE_STRING
	Definir TYPE Como Texto;
	TYPE = "string";
FinFuncion

Funcion TYPE <- TYPE_INT
	Definir TYPE Como Texto;
	TYPE = "int";
FinFuncion

Funcion TYPE = TYPE_FLOAT
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

// ....util...................................util
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

//..................... Collection
Funcion symbol_area <- symbol_DataArea
	Definir symbol_area como Texto;
	symbol_area = "";
FinFuncion

Funcion symbol_area <- symbol_typeArea
	Definir symbol_area como Texto;
	symbol_area = "";
FinFuncion

Funcion symbol_area <- symbol_Metadata_Area
	Definir symbol_area como Texto;
	symbol_area = "";
FinFuncion

///========================================================>>>  [ COLORS ] <<==///##0
// =============================================================== CODES <<<<<<
Funcion color <- COLOR_TRANSPARENT
	Definir color Como Texto;
	color =  COLOR_getColor_forIndex(0);
FinFuncion

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
	condition_error_Message_Funtion(index<0|index>7,"COLOR_getColor_forIndex","invalid index color (index valid: 0...7)");
	index = increment_step(index,30);
	color = __private_color_getColor_or_style_forIndex(index);
FinFuncion

Funcion color <- __private_color_getColor_or_style_forIndex(index)
	Definir color Como Texto;
	color = String_append_withSeparator(symbol_Escape(),"m",num_ToString(index));
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
//TODO:
//agregar soporte para colores a print_progress_formater
//agregar un caracter al final de printFormater para hacer efecto de preparacion tipo Hell_ luego Hello 
Funcion text_Color <- Color_setColorText(text,color)
	Definir text_Color Como Texto;
	condition_error_Message_Funtion(!String_hasColor(color),"Color_setColorText", String_append("invalid color `",String_append(color,"`")));
	text_Color = String_append(color,text);
FinFuncion

Funcion text_Color <- Color_setColorText_brakelines(text,color)
	Definir text_Color Como Texto;
	condition_error_Message_Funtion(!String_hasColor(color),"Color_setColorText", String_append("invalid color `",String_append(color,"`")));
	text_Color = String_append_in_brakelines(text,color);
FinFuncion

Funcion text_Color <- Color_setColorText_multiColor(text)
	Definir text_Color, color_char Como Texto;
	Definir text_length, i Como Numero;
	text_length = String_length(text);
	para i=0 Hasta text_length Hacer
		color_char = Color_setColorText(charAt(text,i), COLOR_getColor_forIndex(increment(Math_module(i,7))));
		text_Color = String_append(text_Color, color_char);
	FinPara
FinFuncion

Funcion text_Color <- Color_Darked(text,color)
	Definir text_Color Como Texto;
	text = String_append(DARK,text);
	text_Color = String_append(color,text);
FinFuncion

Funcion text_dark <- Color_Normal(text)
	Definir text_dark Como Texto;
	text_dark = String_append(DARK,text);
FinFuncion

///========================================================>>>  [ LOCAL DATE TIME ] <<==///##1
Funcion Date_num <- getDate
	Definir Date_num Como Numero;
	Date_num = FechaActual();
FinFuncion

Funcion Time_num <- getTime
	Definir Time_num Como Numero;
	Time_num = HoraActual();
FinFuncion
//length_time_pseint = 0,1,2,3,4,5,6 example -> 00:12:23 in pseint == 1223 (4) \ 06:12:23  pseint == 61223 (5)\ 12:12:23 pseint == 121223 (6)
//length_getTime_toString = 6 \ formater string 00:12:23  == "001223" 
Funcion time_value_String <- getTime_toString
	Definir time_value_String Como Texto;
	time_value_String = String_pad_start(num_ToString(getTime),"000000");
FinFuncion

// =============================================================== DATE <<<<<<
Funcion Date <- Local_Date_now
	Definir Date Como Texto;
	Date = num_ToString(getDate);
	Date = String_insert(Date,"-",4);
	Date = String_insert(Date,"-",7);
FinFuncion

Funcion Date <- Local_Datey0ear
	Definir Date Como Texto;
	Date = num_ToString(getDate);
	Date = String_insert(Date,"-",4);
	Date = String_insert(Date,"-",7);
FinFuncion

Funcion Date <- Local_Date_of(year,month,day)
	Definir Date Como Texto;
	Date = Local_Date_ofString(num_ToString(year),num_ToString(month),num_ToString(day));
FinFuncion

Funcion Date <- Local_Date_ofString(year,month,day)
	Definir Date, dateParts, year_format, month_format, day_format Como Texto;
	Definir inty0ear, int_month, int_day Como Numero;
	Dimension dateParts[3];
	inty0ear = Math_max_Int(String_ToNum(year),0);
	int_month = Math_rangeLimit_Int(String_ToNum(month),1,12);
	int_day = Math_rangeLimit_Int(String_ToNum(day),1,31);
	dateParts[0] = String_pad_start(num_ToString(inty0ear),"0000");
	dateParts[1] =  String_pad_start(num_ToString(int_month),"00");
	dateParts[2] = String_pad_start(num_ToString(int_day),"00");
	Date = array_ofString_separator(dateParts,3,"-",TYPE_STRING());
FinFuncion

// y ear (y o yy 25) yyy 025 yyyy 2025 yyyyy 2025
// M month name(+MMM) or number
// d ay del mes
// D dia del anio
// E nameDay E abrevabation EEEE completo
// e Daynum of semana
// W semana del mes 1-53
// w semana del anio
// a AM/PM
// "texto" "texto"
// H hora militar
// h hora
// m minutos
// s segundos
// S miliSegundos

//esto una simplificacion de otra simplificacion de la formula de Zeller 
//la simplificacion original ya no se encuentra en la wiki, solo quedo mi simplificacion de esta  misma
//Formula:
//floor(30.6*m-29.4-i)+d 
//[i = if isBisies 2 else 3]
//si haces sumatoria de los dia del mes puede salir Resultado+1 eso depende de el inicio de la cuenta usada: 
// caso [1 de enero] = 0 : [if enero o febrero i=0]
// caso [1 de enero] = 1 : [if febrero i=0] [if En i=1] 

Funcion numDay <- Local_Date_getNumDayOfTheYear(year, month, day)
	Definir numDay, BisiesSum como Numero;
	BisiesSum = if_else(Local_Date_isBisies(year),2,3,TYPE_INT);
	BisiesSum = if_else(month == 1, 1, BisiesSum,TYPE_INT);
	BisiesSum = if_else(month == 2, 0, BisiesSum,TYPE_INT);
	numDay = Math_truncate(30.6*month-29.4-BisiesSum)+day;
FinFuncion

Funcion Date <- Local_Date_format(text)
	Definir Date, dateParts, DateTemp Como Texto;
	Definir index Como Numero;
	Dimension dateParts(3);
	
	dateParts[0] = String_substring_from_start(Local_Date_now,4);
	dateParts[1] = String_substring(Local_Date_now,4,6);
	dateParts[2] = String_substring_from_end(Local_Date_now,2);
	
	Si String_Contains(text,"Y") Entonces
		index = String_indexOf(text,"Y");
		Date = String_insert(String_Delete(text,index,index+1),dateParts[0],index);
	FinSi
	
	Si String_Contains(text,"M") Entonces
		index = String_indexOf(Date,"M");
		Date = String_insert(String_Delete(Date,index,index+1),dateParts[1],index);
	FinSi
FinFuncion

// =============================================================== TIME <<<<<<
Funcion Time <- Local_Time_now
	Definir Time Como Texto;
	Time = getTime_toString;
	Time = String_insert(Time,":",2);
	Time = String_insert(Time,":",5);
FinFuncion

Funcion Hour <- Local_Time_getHour
	Definir Hour Como Numero;
	Hour = __private_Local_Time_getTime_int(0,2);
FinFuncion

Funcion Hour <- Local_Time_getMinute
	Definir Hour Como Numero;
	Hour = __private_Local_Time_getTime_int(2,4);
FinFuncion

Funcion Hour <- Local_Time_getSecond
	Definir Hour Como Numero;
	Hour = __private_Local_Time_getTime_int(4,6);
FinFuncion

Funcion time_value <- __private_Local_Time_getTime_int(num1,num2)
	Definir time_value Como Numero;
	Definir time_value_format Como Texto;
	time_value_format = getTime_toString;
	time_value = String_ToNum(String_substring(time_value_format,num1,num2));
FinFuncion

// =============================================================== DURATION <<<<<<

Funcion duration <- Duration_between_hour(hour1,hour2)
	Definir duration Como Numero;
	duration = decrement_step(hour1, hour2);
FinFuncion

Funcion duration <- Duration_between_second_now(second)
	Definir duration Como Numero;
	duration = Duration_between_time_now(second, Local_Time_getSecond());
FinFuncion

Funcion duration <- Duration_between_minute_now(minute)
	Definir duration Como Numero;
	duration = Duration_between_time_now(minute, Local_Time_getMinute());
FinFuncion

Funcion duration <- Duration_between_minute_strict(minute, second) 
	Definir duration, nowSecond Como Numero; 
	duration = Duration_between_time_now(minute, Local_Time_getMinute()); 
	nowSecond = Local_Time_getSecond(); 
	Si nowSecond < second Entonces 
		duration = Math_max_Int(decrement(duration), 0);
	FinSi 
FinFuncion

Funcion duration <- Duration_between_time_now(time, time_now)
	Definir duration Como Numero;
	duration = decrement_step(if_else(time>time_now,increment_step(time_now, 60),time_now,TYPE_INT()), time);
FinFuncion
/////////////////////////////////////////////////////------------------=///
//////////////////////////////////////////////////////>>>  [ util ] <<==///##2
/////////////////////////////////////////////////////------------------=///
///========================================================>>>  [ collection ] <<==///
Funcion name_Collection <- collection_getName_TypeCollection(collection)
	Definir name_Collection Como Texto;
	name_Collection = String_substring(collection, 0, String_indexOf(collection, symbol_typeArea()));
FinFuncion

Funcion data_Area <- collection_getContent_DataArea(collection)
	Definir data_Area como Texto;
	data_Area = collection_getContent_WithIn_symbols(collection, symbol_DataArea(), symbol_Metadata_Area());
FinFuncion

Funcion type_area <- collection_getContent_TypesArea(collection)
	Definir type_area como Texto;
	type_area =  collection_getContent_TypesArea_End_Of_Text(collection, symbol_DataArea());
FinFuncion

Funcion type_area <- collection_getContent_TypesArea_End_Of_Text(collection, text_end)
	Definir type_area como Texto;
	type_area = collection_getContent_WithIn_symbols(collection, symbol_typeArea(), text_end);
FinFuncion

Funcion type_area <- collection_getContent_WithIn_symbols(collection, symbol_start, symbol_end)
	Definir Type_property,type_area como Texto;
	Definir index_start, index_end, index_check como Numero;
	index_start = increment(String_indexOf(collection,symbol_start));
	index_end = String_indexOf_fromIndex(collection,symbol_end,index_start);
	type_area = String_substring(collection,index_start,index_end);
FinFuncion

Funcion index_TypeArea <- collection_getIndex_TypeArea(struct_Collection)
	Definir index_TypeArea como Numero;
	index_TypeArea = String_indexOf(struct_Collection, symbol_typeArea());
FinFuncion

Funcion index_MetaData <- collection_getIndex_MetaDataArea(struct_Collection)
	Definir index_MetaData como Numero;
	index_MetaData = String_lastIndexOf(struct_Collection, symbol_Metadata_Area());
FinFuncion

Funcion index_DataArea <- collection_getIndex_DataArea(struct_Collection)
	Definir index_DataArea como Numero;
	index_DataArea = String_IndexOf(struct_Collection, symbol_DataArea());
FinFuncion

Funcion clear_Collection <- collection_Clear(struct_Collection)
	Definir clear_Colection como Texto;
	clear_Colection = collection_NewCollection(collection_getContent_TypesArea(struct_Collection),collection_getName_TypeCollection(struct_Collection));
FinFuncion

Funcion index_separator <- collection_getIndex_FromNumElement(text, num)
	Definir index_separator como Numero;
	index_separator = collection_getIndex_FromNumElement_Separator(text,num,symbol_Separator());
FinFuncion

Funcion index_separator <- collection_getLastIndex_FromNumElement(text, num)
	Definir index_separator como Numero;
	index_separator = collection_getLastIndex_FromNumElement_Separator(text,num,symbol_Separator());
FinFuncion

Funcion index_separator <- collection_getIndex_FromNumElement_Separator(text, num,separator)
	Definir i, index_separator, text_length como Numero;
	text_length = String_length(text);
	index_separator = String_indexOf_fromIndex_speedNative(text,separator,index_separator);
	mientras index_separator < text_length & i<num Hacer
		index_separator = increment(index_separator);
		index_separator = String_indexOf_fromIndex_speedNative(text,separator,index_separator);
		i = increment(i);
	FinMientras
FinFuncion

Funcion index_separator <- collection_getLastIndex_FromNumElement_Separator(text, num_separator, separator)
	Definir i, index_separator, text_length como Numero;
	index_separator = String_lastIndexOf(text, separator);
	i = 0;
	mientras index_separator > -1 & i < num_separator Hacer
		index_separator = decrement(index_separator);
		index_separator = String_lastIndexOf_fromIndex(text,separator,index_separator);
		i = increment(i);
	FinMientras
FinFuncion

Funcion str_element <- collection_getElement_AtIndex(text, index)
	Definir str_element como texto;
	str_element = collection_getElement_AtIndex_withSeparator(text, index, symbol_Separator());
FinFuncion

Funcion str_element <- collection_getElement_AtIndex_withSeparator(text, index, separator)
	Definir count_sep, i, index_match, index_matchEnd, sum como Real;
	Definir str_element, Slice_After como texto;
	index_matchEnd = collection_getIndex_FromNumElement_Separator(text,index,separator);
	index_matchEnd= if_else(index_Matchend<0,String_length(text),index_Matchend,TYPE_INT);
	
	index_match = String_LastindexOf_fromIndex(text,separator, index_MatchEnd)+1;
	index_match = if_else(index_Match<0, 0, index_Match,TYPE_INT);
	
	si index >= 0 & index <= String_countMatches(text, separator) Entonces
		str_element = String_substring(text, index_Match,index_Matchend);
	SiNo
		str_element = string_Null();
	FinSi
FinFuncion

Funcion data_collection <- collection_NewCollection(STRUCT_TYPE,TYPE)
	Definir data_collection, dataParts, index_end_dataArea Como Texto;
	Definir length_data_area como Numero;
	Dimension dataParts[5];
	dataParts[0] = STRUCT_TYPE;
	dataParts[1] = symbol_typeArea();
	dataParts[2] = TYPE;
	dataParts[3] = symbol_DataArea();
	dataParts[4] = symbol_Metadata_Area();
	data_collection = array_ofString_separator(dataParts,5,"",TYPE_STRING());//struct/<STRING[Data(meta_data
FinFuncion

//....value
Funcion result <- value_Parser_ToString(data,TYPE)
	Definir result Como Texto;
	Segun TYPE Hacer
		TYPE_INT():
			result = interger_ToString(data);
		TYPE_FLOAT():
			result = float_ToString(data);
		TYPE_BOOLEAN():
			result = boolean_ToString(data);
		TYPE_OBJECT():
			result = object_ToString(data);
		De Otro Modo:
			result = String_append(data,"");//wrapper
	FinSegun
FinFuncion

Funcion result <- value_getNullType(TYPE)
	Segun TYPE Hacer
		TYPE_INT():
			Definir result Como Numero;
			result = number_Null();
		TYPE_BOOLEAN():
			Definir result Como Logico;
			result = false();
		TYPE_FLOAT():
			Definir result Como Real;
			result = number_Null();
		De Otro Modo:
			Definir result Como Texto;
			result = string_Null();
	FinSegun
FinFuncion

Funcion result <- value_getNullType_toString(TYPE)
	Definir result Como Texto;
	result = value_Parser_ToString(value_getNullType(TYPE), TYPE);
FinFuncion

Funcion boolean <- value_isNull(value, TYPE)
	Definir boolean Como Logico;
	Segun TYPE Hacer
		TYPE_INT():
			boolean = Num_isEquals(value,number_Null());
		TYPE_FLOAT():
			boolean = Num_isEquals(value,number_Null());
		TYPE_BOOLEAN():
			boolean = !value;
		De Otro Modo:
			boolean = String_isEquals(value,string_Null());
	FinSegun
FinFuncion
//revisar linear colection que devuelva null cuando no alla elementos 
Funcion result <- value_getValidString_ofType(value, TYPE) 
	Definir result como Texto;
	result = value;
	si value_isNull(value, TYPE_STRING()) Entonces
		result = value_getNullType_toString(TYPE);
	FinSi
FinFuncion

Funcion result <- value_StringCatch_ofType(value, TYPE, method, message) 
	Definir result como Texto;
	result = value;
	si value_isNull(value, TYPE_STRING()) Entonces
		result = value_getNullType_toString(TYPE);
		error_Message_Funtion(method,message);
	FinSi
FinFuncion

///========================================================>>>  [ LINEARCOLLECTION ] <<==///##2_1
Funcion new_LinearColletion <- __private_LinearCollection_newLinearCollection(struct_Collection, TYPE)
	Definir new_LinearColletion Como Texto;
	new_LinearColletion = String_append_withSeparator(collection_NewCollection(struct_Collection, TYPE), "0", symbol_ExtraData());
FinFuncion

Funcion End_index <- __private_LinearCollection_getIndex_EndMetaData(struct_Collection)
	Definir End_index Como Numero;
	End_index = String_lastIndexOf(struct_Collection,symbol_ExtraData());
FinFuncion

Funcion element_Result <- __private_LinearCollection_getFromSide(struct_Collection, side, TYPE)
	Definir element_String Como Texto;
	si side < 1 Entonces
		element_String = __private_LinearCollection_getFirts_ToString(struct_Collection);
	SiNo
		element_String = __private_LinearCollection_getLast_ToString(struct_Collection);
	FinSi
	
	element_String = value_StringCatch_ofType(element_String, TYPE, "__private_LinearCollection_getFromSide", " struct is Empty") ;
	
	Segun TYPE Hacer
		TYPE_INT():
			Definir element_Result  Como Numero;
			element_Result  = String_ToNum(element_String);
		TYPE_FLOAT():
			Definir element_Result  Como Real;
			element_Result  = String_ToNum(element_String);
		TYPE_BOOLEAN():
			Definir element_Result  Como Logico;
			element_Result  = String_toBoolean(element_String);
		De Otro Modo:
			Definir element_Result  Como Texto;
			element_Result  = String_append(element_String,"");//wrapper
	FinSegun
FinFuncion

Funcion element_Result <- __private_LinearCollection_getElement(struct_Collection, index_element, TYPE)
	Definir element_String Como Texto;
	element_String = value_StringCatch_ofType(__private_LinearCollection_getElement_ToString(struct_Collection, index_element), TYPE, "__private_LinearCollection_getElement", "index_element no is valid ") ;
	Segun TYPE Hacer
		TYPE_INT():
			Definir element_Result  Como Numero;
			element_Result  = String_ToNum(element_String);
		TYPE_FLOAT():
			Definir element_Result  Como Real;
			element_Result  = String_ToNum(element_String);
		TYPE_BOOLEAN():
			Definir element_Result  Como Logico;
			element_Result  = String_toBoolean(element_String);
		De Otro Modo:
			Definir element_Result  Como Texto;
			element_Result  = String_append(element_String,"");//wrapper
	FinSegun
FinFuncion

Funcion struct_IsEmpty <- __private_LinearCollection_isEmpty(struct_Collection)
	Definir struct_IsEmpty Como Logico;
	struct_IsEmpty = (__private_LinearCollection_GetSize(struct_Collection) < 1);
FinFuncion

Funcion index_isValid <- __private_LinearCollection_Index_IsValid(struct_Collection, index_element)
	Definir index_isValid Como Logico;
	index_isValid = (index_element < __private_LinearCollection_GetSize(struct_Collection));
FinFuncion

Funcion element_String <- __private_LinearCollection_getFirts_ToString(struct_Collection)
	Definir element_String Como Texto;
	Definir index_DataArea, separator_index, Index_EndMetaData, element_Length como Numero;
	si __private_LinearCollection_isEmpty(struct_Collection) Entonces
		error_Message_Funtion("__private_LinearCollection_getFirts_ToString","struct is Empty");
		element_String = string_Null();
	SiNo
		Index_EndMetaData = __private_LinearCollection_getIndex_EndMetaData(struct_Collection);
		index_DataArea = increment(collection_getIndex_DataArea(struct_Collection));// (C B A/,1,2,3)
		separator_index = String_lastIndexOf(struct_Collection, symbol_Separator());
		element_Length = String_ToNum(String_substring(struct_Collection,increment(separator_index), index_EndMetaData));
		element_String = String_substring(struct_Collection, index_DataArea, increment_step(index_DataArea, element_Length));
	FinSi
FinFuncion

Funcion element_String <- __private_LinearCollection_getLast_ToString(struct_Collection)
	Definir element_String Como Texto;
	Definir index_DataArea, index_MetaData, separator_index como Numero;
	Definir length_separator, Index_EndMetaData , element_Length como Numero;
	si __private_LinearCollection_isEmpty(struct_Collection) Entonces
		error_Message_Funtion("__private_LinearCollection_getLast_ToString","struct is Empty");
		element_String = string_Null();
	SiNo
		Index_EndMetaData = __private_LinearCollection_getIndex_EndMetaData(struct_Collection);
		length_separator = String_length(symbol_Separator());
		index_MetaData = increment_step(collection_getIndex_MetaDataArea(struct_Collection), length_separator);
		separator_index = String_indexOf_fromIndex(struct_Collection, symbol_Separator(), increment(index_MetaData));
		separator_index = if_else(separator_index > 0, separator_index, Index_EndMetaData,TYPE_INT());
		element_Length = String_ToNum(String_substring(struct_Collection, increment(index_MetaData), separator_index));
		index_MetaData = decrement_step(index_MetaData,length_separator);
		element_String = String_substring(struct_Collection, decrement_step(index_MetaData, element_Length), index_MetaData);
	FinSi
FinFuncion

Funcion collection_result <- __private_LinearCollection_addFirts(struct_Collection, Element)
	Definir collection_result, TYPE, element_String, element_Length_str Como Texto;
	Definir index_DataArea, index_MetaData como Numero;//first  (<-:->)
	TYPE = collection_getContent_TypesArea(struct_Collection);// (C,B,A/1;2;3)
	element_String = value_Parser_ToString(Element,TYPE);//"Z"
	element_Length_str = String_append(symbol_Separator(), num_ToString(String_length(element_String)));// ,4
	index_DataArea = collection_getIndex_DataArea(struct_Collection);
	collection_result = String_insert(struct_Collection, element_Length_str, __private_LinearCollection_getIndex_EndMetaData(struct_Collection));
	collection_result = String_insert(collection_result,element_String,increment(index_DataArea));//(Z,C,B,A/1;2;3;4)		
	collection_result = __private_LinearCollection_increment_numElement(collection_result);
FinFuncion

Funcion collection_result <- __private_LinearCollection_addLast(struct_Collection, Element)
	Definir collection_result, TYPE, element_String, element_Length_str Como Texto;
	Definir index_DataArea, index_MetaData como Numero;//last  (->:<-)
	TYPE = collection_getContent_TypesArea(struct_Collection);// (C,B,A/1;2;3)
	element_String = value_Parser_ToString(Element, TYPE);//"Z";
	element_Length_str = String_append(symbol_Separator(),num_ToString(String_length(element_String)));//,4
	index_MetaData = collection_getIndex_MetaDataArea(struct_Collection);
	collection_result = String_insert(struct_Collection,element_Length_str,increment(index_MetaData));
	collection_result = String_insert(collection_result,element_String,index_MetaData);//(C,B,A,Z/4;1;2;3)
	collection_result = __private_LinearCollection_increment_numElement(collection_result);
FinFuncion

Funcion collection_result <- __private_LinearCollection_RemoveFirts(struct_Collection)
	Definir collection_result como Texto;
	Definir index_DataArea, index_MetaData, separator_index como Numero;
	Definir length_separator, index_EndMetaData, element_Length como Numero;
	index_EndMetaData = __private_LinearCollection_getIndex_EndMetaData(struct_Collection);
	index_DataArea = increment(collection_getIndex_DataArea(struct_Collection));// (C B A/,1,2,3)
	separator_index = String_lastIndexOf(struct_Collection, symbol_Separator());
	element_Length = String_ToNum(String_substring(struct_Collection,increment(separator_index), index_EndMetaData));
	collection_result = String_Delete(struct_Collection, separator_index, index_EndMetaData);
	collection_result = String_Delete(collection_result, index_DataArea, increment_step(index_DataArea, element_Length));
	collection_result = __private_LinearCollection_decrement_numElement(collection_result);
FinFuncion

Funcion collection_result <- __private_LinearCollection_RemoveLast(struct_Collection)
	Definir collection_result como Texto;
	Definir index_DataArea, index_MetaData, separator_index como Numero;
	Definir length_separator, index_EndMetaData, element_Length como Numero;
	index_EndMetaData = __private_LinearCollection_getIndex_EndMetaData(struct_Collection);
	length_separator = String_length(symbol_Separator());
	index_MetaData = increment_step(collection_getIndex_MetaDataArea(struct_Collection), length_separator);
	separator_index = String_indexOf_fromIndex(struct_Collection,symbol_Separator(),increment(index_MetaData));
	separator_index = if_else(separator_index > 0, separator_index, index_EndMetaData,TYPE_INT());
	element_Length = String_ToNum(String_substring(struct_Collection, increment(index_MetaData), separator_index));
	collection_result = String_Delete(struct_Collection, index_MetaData, separator_index);
	index_MetaData = decrement_step(index_MetaData,length_separator);
	collection_result = String_Delete(collection_result, decrement_step(index_MetaData, element_Length), index_MetaData);
	collection_result = __private_LinearCollection_decrement_numElement(collection_result);
FinFuncion

Funcion size_int <- __private_LinearCollection_GetSize(struct_Collection)
	Definir size_int como Numero;
	size_int = String_ToNum(String_substring_from(struct_Collection, increment(__private_LinearCollection_getIndex_EndMetaData(struct_Collection))));
FinFuncion

Funcion collection_result <- __private_LinearCollection_increment_numElement(struct_List)
	Definir collection_result como Texto;
	collection_result =  __private_LinearCollection_update_numElement(struct_List, 1);
FinFuncion

Funcion collection_result <- __private_LinearCollection_decrement_numElement(struct_List)
	Definir collection_result como Texto;
	collection_result =  __private_LinearCollection_update_numElement(struct_List, -1);
FinFuncion

Funcion collection_result <- __private_LinearCollection_update_numElement(struct_List, num_sum)
	Definir collection_result, num_elements_str como Texto;
	Definir num_elements como Numero;
	num_elements_str = String_substring_from(struct_List, increment(String_lastIndexOf(struct_List, symbol_ExtraData())));
	si String_isEquals(struct_List, num_elements_str) Entonces
		collection_result = struct_List;
		error_Message_Funtion("__private_LinearCollection_update_numElement","unrecognized data structure ( no exist symbol_ExtraData() or num_size)");
	SiNo
		num_elements = increment_step(String_toNum(num_elements_str), num_sum);
		collection_result = String_append(String_substring(struct_List,0,increment(String_lastIndexOf(struct_List,symbol_ExtraData()))), num_ToString(num_elements));
	FinSi
FinFuncion

Funcion info_index_element <- __private_LinearCollection_Build_IndexInfoString(struct_List, index_element)
	Definir info_index_element,num_carry, char_Current, num_last, Meta_Data como texto;
	Definir num_Sum, i, char_count, Meta_Data_Length, Meta_Data_indexEnd como Numero;
	Definir Char_isNum Como Logico;
	Meta_Data = String_substring(struct_List, increment(collection_getIndex_MetaDataArea(struct_List)), __private_LinearCollection_getIndex_EndMetaData(struct_List));
	num_carry = "";
	char_count = 0;
	i = 0;
	Meta_Data_Length = decrement(String_length(Meta_Data));
	char_count = Meta_Data_Length;
	Mientras char_count >= 0 & (index_Element >= i)  Hacer
		char_Current = charAt(Meta_Data, char_count);
		Char_isNum = char_isNumber(char_Current);
		
		si Char_isNum Entonces
			num_carry = String_append(Char_Current, num_carry);
		FinSi 
		
		si (!char_isNum & num_carry <> "") | (char_count == 0) Entonces
			num_Sum = increment_step(num_Sum,String_ToNum(num_carry));
			//... clean
			num_last = num_carry;
			num_carry = "";
			i = increment(i);
		FinSi
		char_count = decrement(char_count);
	FinMientras
	num_Sum = decrement_step(num_Sum,String_ToNum(num_last));
	info_index_element = String_append_withSeparator(num_ToString(num_sum), num_last, symbol_Separator());
	info_index_element = String_append_withSeparator(info_index_element, num_ToString(decrement_step(Meta_Data_Length, char_count)), symbol_Separator());
FinFuncion

Funcion element_String <- __private_LinearCollection_getElement_toString(struct_Collection, index_element)
	Definir element_String, info_index_element, Meta_Data Como Texto;
	Definir index_start_search, element_position, element_length Como Numero;
	si __private_LinearCollection_Index_IsValid(struct_Collection, index_element) Entonces
		index_start_search = increment(collection_getIndex_DataArea(struct_Collection));
		info_index_element = __private_LinearCollection_Build_IndexInfoString(struct_Collection, index_element);
		element_position = increment_step(index_start_search, String_toNum(collection_getElement_AtIndex(info_index_element, 0)));
		element_length = String_toNum(collection_getElement_AtIndex(info_index_element, 1));
		element_String = String_substring(struct_Collection,element_position, increment_step(element_position, element_length));
	SiNo
		error_Message_Funtion("__private_LinearCollection_getElement_toString",String_append("index_element no is valid size:", num_ToString(__private_LinearCollection_GetSize(struct_Collection))));
		element_String = string_Null();
	FinSi
FinFuncion

Funcion collection_result <- __private_LinearCollection_RemoveElement(struct_Collection, index_element)
	Definir collection_result Como Texto;
	collection_result = __private_LinearCollection_ModifyElement(struct_Collection, index_element, string_Null());
	collection_result = __private_LinearCollection_decrement_numElement(collection_result);
FinFuncion

Funcion collection_result <- __private_LinearCollection_SetElement(struct_Collection, index_element, new_vaue)
	Definir collection_result, TYPE, element_String Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Collection);
	element_String = value_Parser_ToString(new_vaue,TYPE);
	collection_result = __private_LinearCollection_ModifyElement(struct_Collection, index_element, element_String);
FinFuncion

Funcion collection_result <- __private_LinearCollection_ModifyElement(struct_Collection, index_element, modify_value)
	Definir collection_result, info_index_element, Meta_Data, index_length_str Como Texto;
	Definir index_start_search, element_position, element_length, index_MetaData, index_MetaData_length, index_EndMetaData  Como Numero;
	si __private_LinearCollection_Index_IsValid(struct_Collection, index_element) Entonces
		index_EndMetaData = __private_LinearCollection_getIndex_EndMetaData(struct_Collection);
		index_start_search = increment(collection_getIndex_DataArea(struct_Collection));
		info_index_element = __private_LinearCollection_Build_IndexInfoString(struct_Collection, index_element);
		element_position = increment_step(index_start_search, String_toNum(collection_getElement_AtIndex(info_index_element, 0)));
		index_length_str = collection_getElement_AtIndex(info_index_element, 1);
		element_length = String_toNum(index_length_str);
		index_MetaData_length = String_length(String_append(index_length_str, symbol_Separator));
		index_MetaData = decrement_step(index_EndMetaData, String_toNum(collection_getElement_AtIndex(info_index_element, 2)));
		//.....
		collection_result = String_Delete(struct_Collection, index_MetaData, increment_step(index_MetaData, index_MetaData_length));
		collection_result = String_Delete(collection_result, element_position, increment_step(element_position, element_length));
		si !String_isEquals(modify_value, string_Null()) Entonces
			collection_result = String_insert(collection_result, String_append(symbol_Separator(),num_ToString(String_length(modify_value))), decrement_step(index_MetaData, element_Length));
			collection_result = String_insert(collection_result, modify_value, element_position);
		FinSi
	SiNo
		error_Message_Funtion("__private_LinearCollection_ModifyElement",String_append("index_element no is valid size:", num_ToString(__private_LinearCollection_GetSize(struct_Collection))));
		collection_result = struct_Collection;
	FinSi
FinFuncion

///========================================================>>>  [ DEQUE ] <<==///##2_2
Funcion new_Deque <- util_Deque_newDeque(TYPE)
	Definir new_Deque Como Texto;
	new_Deque = __private_LinearCollection_newLinearCollection( STRUCT_TYPE_DEQUE(),TYPE);
FinFuncion

Funcion size_int <- util_Deque_Size(struct_Deque)
	Definir size_int Como Numero;
	size_int = __private_LinearCollection_GetSize(struct_Deque);
FinFuncion

Funcion deque_Result <- util_Deque_AddFirst(struct_Deque, element)
	Definir deque_Result Como Texto;
	deque_Result = __private_LinearCollection_addFirts(struct_Deque, element);
FinFuncion

Funcion deque_Result <- util_Deque_AddLast(struct_Deque, element)
	Definir deque_Result Como Texto;
	deque_Result = __private_LinearCollection_addLast(struct_Deque, element);
FinFuncion

Funcion collection_result <- util_Deque_RemoveFirts(struct_Deque)
	Definir collection_result como Texto;
	collection_result = __private_LinearCollection_RemoveFirts(struct_Deque);
FinFuncion

Funcion collection_result <- util_Deque_RemoveLast(struct_Deque)
	Definir collection_result como Texto;
	collection_result = __private_LinearCollection_RemoveLast(struct_Deque);
FinFuncion

Funcion element_Result <- util_Deque_getFirts(struct_Deque)
	Definir TYPE, element_String Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Deque);
	Segun TYPE Hacer
		TYPE_INT():
			Definir element_Result Como Numero;
		TYPE_FLOAT():
			Definir element_Result Como Real;
		TYPE_BOOLEAN():
			Definir element_Result Como Logico;
		De Otro Modo:
			Definir element_Result Como Texto;
	FinSegun
	element_Result = __private_LinearCollection_getFromSide(struct_Deque, 0, TYPE);
FinFuncion

Funcion element_Result <- util_Deque_getLast(struct_Deque)
	Definir TYPE, element_String Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Deque);
	Segun TYPE Hacer
		TYPE_INT():
			Definir element_Result Como Numero;
		TYPE_FLOAT():
			Definir element_Result Como Real;
		TYPE_BOOLEAN():
			Definir element_Result Como Logico;
		De Otro Modo:
			Definir element_Result Como Texto;
	FinSegun
	element_Result = __private_LinearCollection_getFromSide(struct_Deque, 1, TYPE);
FinFuncion

///========================================================>>>  [ QUEUE ] <<==///##2_3
Funcion new_Queue <- util_Queue_newQueue(TYPE)
	Definir new_Queue Como Texto;
	new_Queue = __private_LinearCollection_newLinearCollection( STRUCT_TYPE_QUEUE(), TYPE);
FinFuncion

Funcion size_int <- util_Queue_Size(struct_Queue)
	Definir size_int Como Numero;
	size_int = __private_LinearCollection_GetSize(struct_Queue);
FinFuncion

Funcion queue_Result <- util_Queue_Offer(struct_Queue, element)
	Definir queue_Result Como Texto;
	queue_Result = __private_LinearCollection_addLast(struct_Queue, element);
FinFuncion

Funcion element_Result <- util_Queue_Peek(struct_Queue)
	Definir TYPE Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Queue);
	Segun TYPE Hacer
		TYPE_INT():
			Definir element_Result  Como Numero;
		TYPE_FLOAT():
			Definir element_Result  Como Real;
		TYPE_BOOLEAN():
			Definir element_Result  Como Logico;
		De Otro Modo:
			Definir element_Result  Como Texto;
	FinSegun
	element_Result = __private_LinearCollection_getFromSide(struct_Queue, 0, TYPE);
FinFuncion

Funcion collection_result <- util_Queue_RemoveFirst(struct_Queue)
	Definir collection_result como Texto;
	collection_result = __private_LinearCollection_RemoveFirts(struct_Queue);
FinFuncion

Funcion element_Result <- util_Queue_Poll(struct_Queue Por Referencia)
	Definir TYPE, element_String Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Queue);
	Segun TYPE Hacer
		TYPE_INT():
			Definir element_Result  Como Numero;
		TYPE_FLOAT():
			Definir element_Result  Como Real;
		TYPE_BOOLEAN():
			Definir element_Result  Como Logico;
		De Otro Modo:
			Definir element_Result  Como Texto;
	FinSegun
	element_Result = util_Queue_Peek(struct_Queue);
	// (In older versions:) En versiones antiguas usar por separado util_Queue_Peek() & util_Queue_RemoveFirst() para actualizar
	struct_Queue = util_Queue_RemoveFirst(struct_Queue);
FinFuncion

///========================================================>>>  [ STACK ] <<==///##2_4
Funcion new_Stack <- util_Stack_newStack(TYPE)
	Definir new_Stack Como Texto;
	new_Stack = __private_LinearCollection_newLinearCollection(STRUCT_TYPE_STACK(), TYPE);
FinFuncion

Funcion size_int <- util_Stack_Size(struct_Stack)
	Definir size_int Como Numero;
	size_int = __private_LinearCollection_GetSize(struct_Stack);
FinFuncion

Funcion stack_Result <- util_Stack_push(struct_Stack, element)
	Definir stack_Result Como Texto;
	stack_Result = __private_LinearCollection_addLast(struct_Stack, element);
FinFuncion

Funcion element_Result <- util_Stack_Top(struct_Stack)
	Definir TYPE Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Stack);
	Segun TYPE Hacer
		TYPE_INT():
			Definir element_Result  Como Numero;
		TYPE_FLOAT():
			Definir element_Result  Como Real;
		TYPE_BOOLEAN():
			Definir element_Result  Como Logico;
		De Otro Modo:
			Definir element_Result  Como Texto;
	FinSegun
	element_Result = __private_LinearCollection_getFromSide(struct_Stack, 1, TYPE);
FinFuncion

Funcion stack_Result <- util_Stack_removeLast(struct_Stack)
	Definir stack_Result Como Texto;
	stack_Result = __private_LinearCollection_RemoveLast(struct_Stack);
FinFuncion

Funcion element_Result <- util_Stack_Pop(struct_Stack Por Referencia)
	Definir TYPE, element_String Como Texto;
	TYPE = collection_getContent_TypesArea(struct_Stack);
	Segun TYPE Hacer
		TYPE_INT():
			Definir element_Result  Como Numero;
		TYPE_FLOAT():
			Definir element_Result  Como Real;
		TYPE_BOOLEAN():
			Definir element_Result  Como Logico;
		De Otro Modo:
			Definir element_Result  Como Texto;
	FinSegun
	element_Result = util_Stack_Top(struct_Stack);
	// (In older versions:) En versiones antiguas usar por separado util_Stack_Top() & util_Stack_removeLast() para actualizar
	struct_Stack = util_Stack_removeLast(struct_Stack);
FinFuncion

///========================================================>>>  [ LIST ] <<==///##2_5
Funcion new_list <- util_List_newList(TYPE)
	Definir new_list Como Texto;
	new_list = __private_LinearCollection_newLinearCollection(STRUCT_TYPE_LIST(), TYPE);
FinFuncion

Funcion list_result <- util_List_add(struct_list, element)
	Definir list_result Como Texto;
	list_result = __private_LinearCollection_addLast(struct_List, element);
FinFuncion

Funcion size_int <- util_List_Size(struct_List)
	Definir size_int Como Numero;
	size_int = __private_LinearCollection_GetSize(struct_List);
FinFuncion

Funcion element_Result <- util_List_getElement(struct_list, index_element)
	Definir TYPE Como Texto;
	TYPE = collection_getContent_TypesArea(struct_List);
	Segun TYPE Hacer
		TYPE_INT():
			Definir element_Result  Como Numero;
		TYPE_FLOAT():
			Definir element_Result  Como Real;
		TYPE_BOOLEAN():
			Definir element_Result  Como Logico;
		De Otro Modo:
			Definir element_Result  Como Texto;
	FinSegun
	element_Result = __private_LinearCollection_getElement(struct_List, index_element, TYPE);
FinFuncion

Funcion element_Result <- util_List_RemoveElement(struct_list, index_element)
	Definir element_Result Como Texto;
	element_Result = __private_LinearCollection_RemoveElement(struct_List, index_element);
FinFuncion

Funcion list_Result <- util_List_SetElement(struct_list, index_element, new_Value)
	Definir list_Result Como Texto;
	list_Result = __private_LinearCollection_SetElement(struct_List, index_element, new_Value);
FinFuncion

///========================================================>>>  [ MAP ] <<==///##2_6
// estructura Map<T,T>[]:()()() burbuja group
Funcion new_Map <- util_Map_newMap(TYPE,TYPE2)
	Definir new_Map Como Texto;
	new_Map = collection_NewCollection(String_append_withSeparator(TYPE,TYPE2,symbol_Separator()),STRUCT_TYPE_MAP());
FinFuncion

Funcion map <- util_Map_put(struct_map,TYPE,TYPE2)
	Definir map, new_data Como Texto;
	new_data = String_append_withSeparator(TYPE,TYPE2,"=");
	map = String_append(struct_map,new_data);
	map = String_insert_from_End(map,symbol_Separator());
FinFuncion

///========================================================>>>  [ SET ] <<==///##2_7
Funcion new_Set <- util_Set_newSet(TYPE)
	Definir new_Set Como Texto;
	new_Set = collection_NewCollection(TYPE,STRUCT_TYPE_SET());
FinFuncion

///========================================================>>>  [ OBJECT ] <<==///##3
//TODO4:testear get Value property en objeto cuando esta vacio
//1TODO OPTIMIZAR
//------------------------newObject
Funcion Object_result <- Object_newObject(name_obj)
	Definir Object_result como Texto;
	Object_result = collection_NewCollection("",String_append_withSeparator(TYPE_OBJECT(),String_ToLowerCase(name_obj), symbol_Separator()));
FinFuncion

Funcion Object_result <- Object_add_property(Object_struct,property_name,TYPE)
	Definir Object_result, new_data como Texto;
	Object_result = Object_struct;
	si !Object_property_exists(Object_struct, property_name) Entonces
		new_data = String_append_withSeparator(TYPE,String_ToLowerCase(property_name),symbol_Separator_key_value());
		new_data= String_append(new_data, symbol_Separator());
		Object_result = String_insert(Object_struct, new_data, String_indexOf_fromIndex_speedNative(Object_struct,symbol_DataArea(),6));
		Object_result = String_insert(Object_result,symbol_Separator(),decrement(String_length(Object_result)));
	sino 
		error_Message_Funtion("Object_add_property",String_append("property exist: ", property_name));
	FinSi
FinFuncion

Funcion Object_Debug(Object_struct)
	Definir Item_Area, Type_area, Name_Object, name_property,Type_property, value_property como Texto;
	Definir i, num_properties como Numero;
	Type_area = collection_getContent_TypesArea(Object_struct);
	Item_area = collection_getContent_WithIn_symbols(Object_struct,symbol_DataArea(),symbol_Metadata_Area());
	i = 0;
	println_simple("____________________________________");
	println_simple(String_append("          Object / ",Object_getName(Object_struct)));
	println_simple("````````````````````````````````````");
	num_properties = String_countMatches(Item_Area,symbol_Separator());
	Mientras i < num_properties Hacer
		name_property = collection_getElement_AtIndex(Type_area,i);
		Type_property = collection_getElement_AtIndex_withSeparator(name_property,0,"=");
		name_property = collection_getElement_AtIndex_withSeparator(name_property,1,"=");
		value_property= collection_getElement_AtIndex(item_Area,i);
		println_simple(String_fit(Type_property,"       ")+" : "+String_fit(name_property,"           ")+" : "+String_fit(value_property,"            "));
		i = increment(i);
	FinMientras
	println_simple("____________________________________");
FinFuncion
//---------------------- get
Funcion Object_Name <- Object_getName(Object_struct)
	Definir Object_Name como Texto;
	Object_Name = collection_getName_TypeCollection(Object_struct);
	Object_Name = String_substring(Object_struct, increment(String_length(TYPE_OBJECT())),String_length(Object_Name));
FinFuncion

Funcion Type_ID <- Object_getID_property(Object_struct,property_name)
	Definir Type_ID, index_property, space_start como Numero;	
	Definir typeArea_slice como Texto;
	index_property = Object_getindex_property(Object_struct,property_name);
	space_start = increment(String_indexOf(Object_struct,symbol_typeArea()));
	Type_ID =Object_getID_property_FromRange(Object_struct,property_name, space_start, index_property);
FinFuncion

Funcion Type_ID <-Object_getID_property_FromRange(Object_struct,property_name, space_start, index_end)
	Definir Type_ID como Numero;	
	Definir typeArea_slice como Texto;
	si index_end > -1 Entonces
		space_start = increment(collection_getIndex_TypeArea(Object_struct));
		typeArea_slice = String_substring(Object_struct,space_start,index_end);
		Type_ID = String_countMatches(typeArea_slice,symbol_Separator());
	sino 
		error_Message_Funtion("Object_getID_property_FromIndex_StartToFinish",String_append("property no exist: ", property_name));	
		Type_ID = -1;
	FinSi
FinFuncion

Funcion Type_property <- Object_getType_property(Object_struct,property_name)
	Definir Type_property como Texto;
	Definir  index_end, space_start como Numero;
	index_end = Object_getindex_property(Object_struct,property_name);
	space_start = increment(collection_getIndex_TypeArea(Object_struct));
	Type_property =  Object_getType_property_FromRange(Object_struct,property_name, space_start, index_end);
FinFuncion

Funcion Type_property <- Object_getType_property_FromRange(Object_struct,property_name, space_start, index_end)
	Definir Type_property, type_area, property_end como Texto;
	Definir index_start, length_property, length_object como Numero;
	Definir isValid como Logico;
	property_end = ""; isValid = false();
	
	si index_end > -1 Entonces
		index_start = increment(String_lastIndexOf_fromIndex(Object_struct, symbol_Separator,index_end));
		index_start = Math_max_Int(index_start,space_start);
		Type_property = String_substring(Object_struct,index_start,decrement(index_end));
	SiNo
		error_Message_Funtion(" Object_getType_property_FromRange",String_append("property no exist: ", property_name));		
		Type_property = string_Null();
	FinSi
FinFuncion

Funcion property_exists <- Object_property_exists(Object_struct,property_name)
	Definir property_exists como Logico;	
	property_exists = (Object_getindex_property(Object_struct,property_name) > -1);
FinFuncion

Funcion index_property <- Object_getindex_property(Object_struct,property_name)
	Definir Type_property, type_area, property_end como Texto;
	Definir index_property, index_start, index_end, length_property, length_object, length_typeArea como Numero;
	Definir isValid como Logico;
	index_end = 0; property_end = ""; isValid = false();
	property_name = if(!String_isEmpty(property_name),property_name,TYPE_STRING());
	length_object = String_length(Object_struct);
	
	index_start = increment(collection_getIndex_TypeArea(Object_struct));
	index_end = String_indexOf_fromIndex(Object_struct,symbol_DataArea(),index_start);
	type_area = String_substring(Object_struct,index_start,index_end);
	
	length_property = String_length(property_name);
	length_property = if_else(length_property>length_object,1,length_property,TYPE_INT());
	length_typeArea = String_length(Type_area);
	index_property = length_typeArea;
	
	Mientras index_property <> -1 & !isValid Hacer 
		index_property = String_lastIndexOf_fromIndex(type_area,property_name,index_property);
		property_end = charAt(Type_area,Math_min_Int(increment_step(index_property, length_property),length_typeArea ));
		isValid = String_isEquals(property_end, symbol_Separator());
	FinMientras
	
	si index_property> -1 Entonces
		index_property = increment_step(index_property,index_start);	
	FinSi
FinFuncion

Funcion property_value <- Object_getValue_property(Object_struct, property_name)
	Definir data, TYPE como Texto;
	data = Object_getValue_property_toString(Object_struct, property_name);
	TYPE = Object_getType_property(Object_struct, property_name);
	Segun TYPE Hacer
		TYPE_INT():
			Definir property_value Como Numero;
			property_value = String_ToNum(data);
		TYPE_FLOAT():
			Definir property_value Como Real;
			property_value = String_ToNum(data);
		TYPE_BOOLEAN:
			Definir property_value Como Logico;
			property_value = String_toBoolean(data);
		De Otro Modo:
			Definir property_value Como Texto;
			property_value = String_append(data,"");//wrapper
	FinSegun
FinFuncion

Funcion property_value <- Object_getValue_property_toString(Object_struct, property_name)
	Definir property_value,ItemArea como Texto;
	Definir ID_property como Numero;	
	ID_property = Object_getID_property(Object_struct, property_name);
	si ID_property > -1 Entonces
		ItemArea = collection_getContent_WithIn_symbols(Object_struct,symbol_DataArea(),symbol_Metadata_Area());
		property_value = collection_getElement_AtIndex(ItemArea ,ID_property);
	FinSi
FinFuncion

Funcion index_value <- Object_getIndex_value(Object_struct, property_name)
	Definir index_value, property_id, i como Numero;
	i = 0;
	index_value = -1;
	property_id = Object_getID_property(Object_struct, property_name);
	si property_id > -1 Entonces
		index_value = increment(String_indexOf(Object_struct,symbol_DataArea()));
		Mientras i < property_id Hacer
			index_value = increment(String_indexOf_fromIndex(Object_struct,symbol_Separator(),index_value));
			i=increment(i);
		FinMientras
	FinSi
FinFuncion
//---------------------- set
Funcion Object_result <- Object_setValue_property(Object_struct,property_name, value)
	Definir Object_result, item_Area, property_type como Texto;
	Definir index_end, index_start, property_id, space_start, index_endType, i como Numero;
	i = 0;
	property_name = String_ToLowerCase(property_name);
	Object_result = Object_struct;
	index_endType = Object_getindex_property(Object_struct,property_name);
	space_start = increment(String_indexOf(Object_struct,symbol_typeArea()));
	property_id =Object_getID_property_FromRange(Object_struct, property_name,space_start,index_endType);
	si property_id > -1 Entonces
		property_type = Object_getType_property_FromRange(Object_struct, property_name,space_start,index_endType);
		index_start = increment(String_indexOf_fromIndex(Object_struct,symbol_DataArea(),index_endType));
		Mientras i < property_id Hacer
			index_start = increment(String_indexOf_fromIndex(Object_struct,symbol_Separator(),index_start));
			i=increment(i);
		FinMientras
		index_end = String_indexOf_fromIndex(Object_struct,symbol_Separator(),index_start);
		Object_result = String_Delete(Object_result,index_start,index_end);
		Object_result = String_insert(Object_result,value_Parser_ToString(value, property_type),index_start);
	sino 
		error_Message_Funtion("Object_setValue_property",String_append("property no exist: ", property_name));
	FinSi
FinFuncion
//---------------------- Inherits
Funcion Object_result <- Object_InheritsFrom(Object_Original,Object_Hereditary)
	Definir Object_result como Texto;
	Object_result = __private_Object_process_AddOrRemove_general(Object_Original,Object_Hereditary, 1);
FinFuncion

Funcion Object_depure <- Object_removeCommon_properties_From(Object_Original,Object_Compartor)
	Definir Object_depure como Texto;
	Object_depure = __private_Object_process_AddOrRemove_general(Object_Original,Object_Compartor, 0);
FinFuncion 

Funcion Object_select <- __private_Object_process_AddOrRemove_general(Object_1,Object_2, isRemove)
	Definir index_start_typeArea, index_start_dataArea como Numero;
	Definir i, index_start,index_end, index_end_typeArea  como Numero;
	Definir property_name, property_type, Object_select, Object_compartor como Texto;
	Definir property_exists Como Logico;
	i=0;
	Object_select = Object_1; Object_compartor = Object_2;
	
	index_start_typeArea = String_indexOf(Object_compartor,symbol_typeArea());
	index_start_dataArea = String_indexOf_fromIndex(Object_compartor,symbol_DataArea(),index_start_typeArea);
	index_end_typeArea = decrement(index_start_dataArea);
	
	index_start = index_start_typeArea;
	
	Mientras index_start < index_end_typeArea Hacer
		index_end = String_indexOf_fromIndex(Object_compartor,symbol_Separator_key_value(),index_start);
		property_type = String_substring(Object_compartor,increment(index_start),index_end);
		index_start = String_indexOf_fromIndex(Object_compartor,symbol_Separator(),index_end);
		property_name = String_substring(Object_compartor,increment(index_end),index_start);
		property_exists = Object_property_exists(Object_select,property_name);
		
		Segun isRemove Hacer
			caso 0:
				Si property_exists Entonces
					Object_select = Object_remove_property(Object_select, property_name);		
				FinSi
			De Otro Modo:
				Si !property_exists Entonces
					Object_select = Object_add_property(Object_select, property_name, property_type);
				Finsi;
		FinSegun
	FinMientras
FinFuncion 

//---------------------- remove
Funcion Object_result <- Object_remove_property(Object_struct,property_name)
	Definir Object_result, Type_Area, item_Area como Texto;
	Definir index_start_value, index_end_value,index_end,index_start, property_id, startSum, space_start como Numero;
	space_start = Object_getindex_property(Object_struct, property_name);
	index_end = increment(String_indexOf_fromIndex(Object_struct,symbol_Separator(), space_start));
	index_start = Math_max_Int(increment(String_lastIndexOf_fromIndex(Object_struct,symbol_Separator(), space_start)), increment(collection_getIndex_TypeArea(Object_struct)));
	index_start_value = Object_getIndex_value(Object_struct, property_name);
	index_end_value = Math_min_Int(increment(String_indexOf_fromIndex(Object_struct,symbol_Separator,index_start_value)), decrement(String_length(Object_struct)));
	Object_result = String_Delete(Object_struct,index_start_value,index_end_value);
	Object_result = String_Delete(Object_result,index_start,index_end);
FinFuncion

Funcion Object_result <- Object_removeValue_property(Object_struct,property_name)
	Definir Object_result como Texto;
	Object_result = Object_setValue_property(Object_struct,property_name, string_Null());
FinFuncion

/////========================================================>>>  [ TUI/CANVAS ] <<==///##4

Funcion pixel <- pixel_clear
	Definir pixel como texto;
	pixel =  get_pixel_whitIndex(0);
FinFuncion

Funcion pixel <- pixel_plain
	Definir pixel como texto;
	pixel = get_pixel_whitIndex(1);
FinFuncion

Funcion pixel <- pixel_medium
	Definir pixel como texto;
	pixel = get_pixel_whitIndex(2);
FinFuncion

Funcion pixel <- pixel_bold
	Definir pixel como texto;
	pixel = get_pixel_whitIndex(3);
FinFuncion

Funcion pixel <- get_pixel_whitIndex(index)
	Definir pixel como texto;
	Segun index Hacer
		caso 0:
			pixel = "·";
		caso 1:
			pixel = "*";
		caso 2: 
			pixel = "ø";
		De Otro Modo:
			pixel = "Ø";
	FinSegun
FinFuncion
//maximo recomendado:630*130
Funcion Print_TUI_DrawArea(DrawArea, DWx, DWy)
	Print_TUI_DrawArea_color(DrawArea, DWx, DWy, "");
FinFuncion

Funcion Print_TUI_DrawArea_color(DrawArea, DWx, DWy, color)
	Definir index_endVec, i como Numero;
	Definir TUI, DrawX como Texto;
	Dimension TUI[DWy];
	para i=0 Hasta decrement(DWy) con paso 1 Hacer
		DrawX = String_substring(DrawArea, TUI_DrawArea_getIndex(0,i,DWx),(TUI_DrawArea_getIndex(0,increment(i),DWx)));
		TUI[i] = DrawX;
	FinPara	//Escribir "<"+String_substring(DrawArea, TUI_DrawArea_getIndex(0,DWy,DWx),String_length(DrawArea));// metadata
	println_array_color(TUI, DWy,color);
FinFuncion

Funcion DrawArea_ellipse <- TUI_DrawArea_DrawEllipse(DrawArea, DWx, DWy, cx, cy, rx, ry)
    Definir DrawArea_ellipse como Texto;
    Definir x_, y_ Como Entero;
    Definir dx, dy Como Entero;
    Definir valor Como Real;
	
    Para y_ = 0 Hasta DWy-1
        Para x_ = 0 Hasta DWx-1
            dx = x_ - cx;
            dy = y_ - cy;
            valor = (dx*dx)/(rx*rx) + (dy*dy)/(ry*ry);
            si (valor >= 0.9) y (valor <= 1.1) Entonces
                DrawArea = TUI_DrawArea_Drawpoint(DrawArea, DWx, DWy, x_, y_);
            FinSi
        FinPara
    FinPara
	
    DrawArea_ellipse = DrawArea;
FinFuncion


Funcion DrawArea_move <- TUI_DrawArea_MoveContent_x_y(DrawArea, DWx, DWy, isleft, is_top,speed_move)
	Definir DrawArea_move como Texto;
	DrawArea_move = TUI_DrawArea_MoveContent_x(DrawArea, DWx, DWy,isLeft,speed_move);
	DrawArea_move = TUI_DrawArea_MoveContent_y(DrawArea_move, DWx, DWy,is_top,speed_move);
FinFuncion

Funcion DrawArea_move <- TUI_DrawArea_MoveContent_y(DrawArea, DWx, DWy, is_top,speed_moven)
    Definir DrawArea_move, text_clean como Texto;
	Definir i, index_row, y_insert_position,y_remove_position, y_insert_length como Numero;
	y_insert_length = DWx*speed_moven;//10*3=30
	y_insert_position = if_else(is_top, 0, DWx*DWy,TYPE_INT());//0 | 15*4 = 60
	y_remove_position= if_else(is_top,decrement_step(DWx*DWy,y_insert_length), 0,TYPE_INT());//15*4=60 - 30 = 30 | 0
	text_clean = TUI_Row_WithText(pixel_clear(), y_insert_length);//row = 30 char
	DrawArea_move = DrawArea;
	DrawArea_move = String_Delete(DrawArea_move,y_remove_position,increment_step(y_remove_position,y_insert_length));//30,60 | 0,30
	DrawArea_move = String_insert(DrawArea_move,text_clean,y_insert_position);
FinFuncion

Funcion DrawArea_move <- TUI_DrawArea_MoveContent_x(DrawArea, DWx, DWy,isLeft,speed_moven)
    Definir DrawArea_move, text_clean como Texto;
	Definir i, index_row, x_remove, x_insert como Numero;
	DrawArea_move = DrawArea;
	text_clean = TUI_Row_WithText(pixel_clear(),speed_moven);
	x_insert = if_else(isLeft,Dwx,0,TYPE_INT());
	x_remove = if_else(isLeft,0,Dwx,TYPE_INT());
	para i=0 Hasta decrement(DWy) Con Paso 1 Hacer
		DrawArea_move = String_insert(DrawArea_move,text_clean,TUI_DrawArea_getIndex(x_insert,i,Dwx));
		index_row = TUI_DrawArea_getIndex(x_remove,i,Dwx);
		DrawArea_move = String_Delete(DrawArea_move,index_row,increment_step(index_row,speed_moven));
	finPara
FinFuncion

Funcion DrawArea_rectangle <- TUI_DrawArea_DrawRectangle_normaliced(DrawArea, DWx, DWy, x0, y0, x1, y1)
    Definir DrawArea_rectangle como Texto;
 	x0 = noramaliced_coordinate_x_toPixel(DWx,x0);
	y0 = noramaliced_coordinate_y_toPixel(DWy,y0);
	x1 = noramaliced_coordinate_x_toPixel(DWx,x1);
	y1 = noramaliced_coordinate_y_toPixel(DWy,y1);	
    DrawArea_rectangle = TUI_DrawArea_DrawRectangle(DrawArea, DWx, DWy, x0, y0, x1, y1);
FinFuncion

Funcion DrawArea_rectangle <- TUI_DrawArea_DrawRectangle(DrawArea, DWx, DWy, x0, y0, x1, y1)
    Definir DrawArea_rectangle como Texto;
	DrawArea = TUI_DrawArea_DrawLine(DrawArea, DWx, DWy, x0, y0, x1, y0);//top
    DrawArea = TUI_DrawArea_DrawLine(DrawArea, DWx, DWy, x0, y1, x1, y1);//botton
	DrawArea = TUI_DrawArea_DrawLine(DrawArea, DWx, DWy, x0, y0, x0, y1);//left
	DrawArea = TUI_DrawArea_DrawLine(DrawArea, DWx, DWy, x1, y0, x1, y1+1);	//rigth
    DrawArea_rectangle = DrawArea;
FinFuncion

Funcion DrawArea_triangle <- TUI_DrawArea_DrawTriangle_normaliced(DrawArea, DWx, DWy, x0, y0, x1, y1, x2, y2)
    Definir DrawArea_triangle como Texto;
 	x0 = noramaliced_coordinate_x_toPixel(DWx,x0);
	y0 = noramaliced_coordinate_y_toPixel(DWy,y0);
	x1 = noramaliced_coordinate_x_toPixel(DWx,x1);
	y1 = noramaliced_coordinate_y_toPixel(DWy,y1);	
	x2 = noramaliced_coordinate_x_toPixel(DWx,x2);
	y2 = noramaliced_coordinate_y_toPixel(DWy,y2);
    DrawArea_triangle = TUI_DrawArea_DrawTriangle(DrawArea, DWx, DWy, x0, y0, x1, y1, x2, y2);
FinFuncion

Funcion DrawArea_triangle <- TUI_DrawArea_DrawTriangle(DrawArea, DWx, DWy, x0, y0, x1, y1, x2, y2)
    Definir DrawArea_triangle como Texto;
    DrawArea = TUI_DrawArea_DrawLine(DrawArea, DWx, DWy, x0, y0, x1, y1);
    DrawArea = TUI_DrawArea_DrawLine(DrawArea, DWx, DWy, x1, y1, x2, y2);
    DrawArea = TUI_DrawArea_DrawLine(DrawArea, DWx, DWy, x2, y2, x0, y0);
    DrawArea_triangle = DrawArea;
FinFuncion
//2TODO:CORREGIR PINTADO PARA QUE ELTEXTO NO SOBRE PASE LA ZONA DEBIDA YA QUE HACE SALTO DE LINEA CUANDO LLEGA AL BORDE PARA CONTINUAR
Funcion DrawArea_button <- TUI_DrawArea_Button(DrawArea,DWx,DWy,text,x0,y0)
	Definir DrawArea_button como Texto;
	Definir xt,yt, length_text como Numero;
	text = String_append_withSeparator("[ "," ]",text);
	length_text = increment(String_length(text));
	xt = increment_step(x0,length_text);
	yt= increment_step(y0,2);
	x0 = Math_min_Int(increment(x0),decrement(DWx));
	y0 = Math_min_Int(increment(y0),decrement(DWy));
	DrawArea_button = TUI_DrawArea_DrawRectangle(DrawArea, DWx, DWy, decrement(x0), decrement(y0), Math_min_Int(xt,decrement(DWx)), Math_min_Int(yt,decrement(DWy)));
	DrawArea_button = TUI_DrawArea_DrawText(DrawArea_button,DWx,DWy,text,x0,y0);
FinFuncion

Funcion DrawArea_point <- TUI_DrawArea_DrawPoint_normaliced(DrawArea,DWx,DWy,x0,y0)
	Definir DrawArea_point como Texto;
	x0 = noramaliced_coordinate_x_toPixel(DWx,x0);
	y0 = noramaliced_coordinate_y_toPixel(DWy,y0);
	DrawArea_point = TUI_DrawArea_DrawPoint_pixel(DrawArea,pixel_plain(),DWx,DWy,x0,y0);
FinFuncion

Funcion DrawArea_point <- TUI_DrawArea_DrawPoint(DrawArea,DWx,DWy,x0,y0)
	Definir DrawArea_point como Texto;
	DrawArea_point = TUI_DrawArea_DrawPoint_pixel(DrawArea,pixel_plain(),DWx,DWy,x0,y0);
FinFuncion

Funcion DrawArea_point <- TUI_DrawArea_DrawPoint_pixel(DrawArea,pixel_symb,DWx,DWy,x0,y0)
	Definir DrawArea_point como Texto;
	DrawArea_point = TUI_DrawArea_DrawText(DrawArea,DWx,DWy,pixel_symb,x0,y0);
FinFuncion

Funcion DrawArea_text<- TUI_DrawArea_DrawText(DrawArea,DWx,DWy,text,x0,y0)
	Definir DrawArea_text como Texto;
	condition_error_Message_Funtion(x0>=DWx,"TUI_DrawArea_DrawText","x >= DWx");
	condition_error_Message_Funtion(y0>=DWy,"TUI_DrawArea_DrawText","y >= DWy");
	x0 = TUI_DrawArea_getIndex(x0,y0,DWx);//x+(y*dx)=12+(1*40) = 52
	DrawArea_text = String_insert_withReplace(DrawArea,text, x0);
FinFuncion

Funcion DrawArea_line <- TUI_DrawArea_DrawLine_normaliced(DrawArea,DWx,DWy,x0,y0,x1,y1)
    Definir DrawArea_line como Texto;
	x0 = noramaliced_coordinate_x_toPixel(DWx,x0);
	y0 = noramaliced_coordinate_y_toPixel(DWy,y0);
	x1 = noramaliced_coordinate_x_toPixel(DWx,x1);
	y1 = noramaliced_coordinate_y_toPixel(DWy,y1);
	DrawArea_line = TUI_DrawArea_DrawLine_pixel(DrawArea,pixel_plain(),DWx,DWy,x0,y0,x1,y1);
FinFuncion

Funcion DrawArea_line <- TUI_DrawArea_DrawLine(DrawArea,DWx,DWy,x0,y0,x1,y1)
    Definir DrawArea_line como Texto;
	DrawArea_line = TUI_DrawArea_DrawLine_pixel(DrawArea,pixel_plain(),DWx,DWy,x0,y0,x1,y1);
FinFuncion

Funcion DrawArea_line <- TUI_DrawArea_DrawLine_pixel(DrawArea,pixel_symb,DWx,DWy,x0,y0,x1,y1)
    Definir DrawArea_line como Texto;
    Definir Dx, Dy, xi, yi, xi_rec, yi_rec, x_, y_, error como Entero;
	
    Dx = x1 - x0;//2-10=-8
    Dy = y1 - y0;//3-10=-7
	
    xi = if_else(Dx >= 0, 1, -1, TYPE_INT());// -1
    yi = if_else(Dy >= 0, 1, -1, TYPE_INT());// -1
	
    Dx = Math_abs(Dx);// -8 -> 8
    Dy = Math_abs(Dy);// -7 -> 7
	
    si Dx >= Dy Entonces
        xi_rec = xi;//-1
        yi_rec = 0;// 0 
        error = 2*Dy - Dx;//2*8 = 16-7= 9
    Sino
        xi_rec = 0;
        yi_rec = yi;
        error = 2*Dx - Dy;
        Dx = Dx + Dy;//(10,20) 30
        Dy = Dx - Dy;//30-20=10
        Dx = Dx - Dy;//30-10=20
    FinSi
	
    x_ = x0;
    y_ = y0;
	DrawArea_line = DrawArea;
    Mientras !Num_isEquals(x_, x1) | !Num_isEquals(y_, y1) Hacer
        DrawArea_line = TUI_DrawArea_DrawPoint_pixel(DrawArea_line,pixel_symb, DWx, DWy, x_, y_);
		
        si error >= 0 Entonces
            x_ = increment_step(x_, xi);//10+ -1
            y_ = increment_step(y_, yi);//10+ -1
            error = error + 2*(Dy - Dx);// 9 + (2*(7-8)) = 9+ -2 = 7
        SiNo
            x_ = increment_step(x_, xi_rec);
            y_ = increment_step(y_, yi_rec);
            error = error + 2*Dy;
        FinSi
    FinMientras
FinFuncion

Funcion row_x <- TUI_Row_WithText(text, repeats)
    Definir i Como Numero;
    row_x = String_RepeatText(text, repeats);
FinFuncion

Funcion index_tui <- TUI_DrawArea_getIndex(x0,y0,DWx)
	Definir index_tui como Numero;
	index_tui= x0+(y0*DWx);
FinFuncion

Funcion DrawArea <- TUI_DrawArea(DWx,DWy)
	Definir i Como Numero;
	Definir DrawArea, DrawArea_x Como Texto;
	DrawArea_x = TUI_Row_WithText(pixel_clear(),DWx);
	Para i=1 Hasta DWy Con Paso 1 Hacer
		DrawArea = String_append(DrawArea,DrawArea_x);
	FinPara
FinFuncion

//(w*0.5)(1+a)
//(h*0.5)(1-a)
Funcion pixel_index <- noramaliced_coordinate_x_toPixel(Dx,x)
	Definir pixel_index como Numero;
	pixel_index = __private_noramaliced_coordinate_toPixel(Dx,x,"x");
FinFuncion

Funcion pixel_index <- noramaliced_coordinate_y_toPixel(Dy,y_)
	Definir pixel_index como Numero;
	pixel_index = __private_noramaliced_coordinate_toPixel(Dy,y_,"y");
FinFuncion

Funcion pixel_index <- __private_noramaliced_coordinate_toPixel(Dc,c, letter)
	Definir pixel_index como Numero;
	condition_error_Message_Funtion(c<-1 | c>1,String_append("noramaliced_coordinate_", letter),"index out of range [-1,1]");
	c= c * if_else(String_isEquals(letter,"x"),1,-1,TYPE_INT);
	pixel_index = Math_min_Int(Math_truncate((Dc*0.5)*(1+c)), decrement(Dc));
FinFuncion

///========================================================>>>  [ VEC ] <<==///##5
Funcion vec_index <- VEC_getX(vec_str)
	Definir  vec_index como Numero;
	vec_index= __private_VEC_getN(vec_str, 0, "X");
FinFuncion

Funcion vec_index <- VEC_getY(vec_str)
	Definir  vec_index como Numero;
	vec_index= __private_VEC_getN(vec_str, 1, "Y");
FinFuncion

Funcion vec_index <- VEC_getZ(vec_str)
	Definir  vec_index como Numero;
	vec_index=__private_VEC_getN(vec_str, 2, "Z");
FinFuncion

Funcion vec_index <- __private_VEC_getN(vec_str, index, name_coord)
	Definir vec_index como Numero;
	condition_error_Message_Funtion(String_countMatches(vec_str, symbol_Separator()) < index, String_append("VEC_get", name_coord), String_append(name_coord, " no exist"));
	vec_index = VEC_vecN_getindex(vec_str, index);
FinFuncion

Funcion vec_index <- VEC_vecN_getindex(vec_str,index)
	Definir  vec_index como Numero;
	vec_index = VEC_getindex_withSeparator(vec_str,index,symbol_Separator());
FinFuncion

Funcion vec_index <- VEC_getindex_withSeparator(vec_str,index, separator)
	Definir  vec_index, index_Match como Numero;
	index_Match = String_indexOf_fromIndex_speedNative(vec_str,":",0);
	vec_str = String_substring_from(vec_str,increment(index_Match));
	vec_str = String_substring_from_start(vec_str,decrement(String_length(vec_str)));
	vec_str = collection_getElement_AtIndex_withSeparator(vec_str, index, separator);
	vec_index = String_ToNum(vec_str);
FinFuncion

Funcion vec2_str <- VEC_vec2(x0,y0)
	Definir vec2_str, XY como Texto;
	Dimension XY[2];
	XY[0] = num_ToString(x0);
	XY[1] = num_ToString(y0);
	vec2_str = VEC_vec_str(array_ofString_separator(XY,2,symbol_Separator(),TYPE_STRING()));
FinFuncion

Funcion vec3_str <- VEC_vec3(x0,y0, _z)
	Definir vec3_str, XYZ como Texto;
	Dimension XYZ[3];
	XYZ[0] = num_ToString(x0);
	XYZ[1] = num_ToString(y0);
	XYZ[2] = num_ToString(_z);
	vec3_str = VEC_vec_str(array_ofString_separator(XYZ,3,symbol_Separator(),TYPE_STRING()));
FinFuncion

Funcion vec_str <- VEC_vec_str(str)
	Definir vec_str como Texto;
	vec_str = VEC_str_withSeparator(str, symbol_Separator());
FinFuncion

Funcion vec_str <- VEC_str_withSeparator(str, separator)
	Definir vec_str como Texto;
	Definir count_vec como Numero;
	count_vec = String_countMatches(str,separator);
	vec_str= String_append("vec",num_ToString(increment(count_vec)));
	vec_str= String_append_withSeparator(vec_str,str,":");
	vec_str= String_append(vec_str,"|");
FinFuncion

///========================================================>>>  [ ASCII ] <<==///##6

Funcion char <- ascii_char(code)
	Definir i como Numero;
	Definir char Como Texto;
	i=0;
	Mientras code >= array_ASCIICodeCategory(i+1) Hacer
		i = increment(i);
	FinMientras
	
	segun i Hacer
		0: char = charAt(ascii_GetControlSymbols(),code);
		1: char = charAt(ascii_GetBasicSymbols(),decrement_step(code,32));
		2: char = charAt(ascii_GetNumberSymbols(),decrement_step(code,48));
		3: char = charAt(ascii_GetOperatorSymbols(),decrement_step(code,58));
		4: char = charAt(ascii_GetLetters_UpperCase(),decrement_step(code,65)); 
		5: char = charAt(ascii_GetSpecialSymbols(),decrement_step(code,91));
		6: char = charAt(ascii_GetLetters_LowerCase(),decrement_step(code,97));
		7: char = charAt(ascii_GetExtraSymbols(),decrement_step(code,123));
		De Otro Modo: char = 'ñ';
	FinSegun
FinFuncion

Funcion ascii_codeCategory <- ascii_ord(char)
	Definir ascii_codeCategory, i como Numero;
	i=0;
	Mientras !ascii_IsCategory_Num(char, i) Hacer
		i = increment(i);
	FinMientras
	
	segun i Hacer
		0: ascii_codeCategory = String_indexOf(ascii_GetControlSymbols(),char);
		1: ascii_codeCategory = increment_step(String_indexOf(ascii_GetBasicSymbols(),char),32);
		2: ascii_codeCategory = increment_step(String_indexOf(ascii_GetNumberSymbols(),char),48);
		3: ascii_codeCategory = increment_step(String_indexOf(ascii_GetOperatorSymbols(),char),58);
		4: ascii_codeCategory = increment_step(String_indexOf(ascii_GetLetters_UpperCase(),char),65);
		5: ascii_codeCategory = increment_step(String_indexOf(ascii_GetSpecialSymbols(),char),91);
		6: ascii_codeCategory = increment_step(String_indexOf(ascii_GetLetters_LowerCase(),char),97);
		7: ascii_codeCategory = increment_step(String_indexOf(ascii_GetExtraSymbols(),char),123);
		De Otro Modo: ascii_codeCategory = 164;
	FinSegun
FinFuncion

Funcion hash <- ascii_hash_DBJ2(str)
	Definir hash, i como Numero;
	hash = 5381;
	para i = 0 Hasta decrement(String_length(str)) con paso 1 hacer
		hash = (hash * 33) + ascii_ord( charAt(str, i) );
	FinPara
FinFuncion

Funcion ascii_codeCategory <- array_ASCIICodeCategory(index)
	Definir ascii_codeCategory como Numero;
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

Funcion ControlSymbols <- ascii_GetControlSymbols
	Definir ControlSymbols como Texto;
	ControlSymbols = "	";//TAP BL
FinFuncion

Funcion BasicSymbols <- ascii_GetBasicSymbols
	Definir BasicSymbols como Texto;
	BasicSymbols = " !##$%&(()*+,-./";// !"#$%&'()*+,-./
FinFuncion

Funcion NumberSymbols <- ascii_GetNumberSymbols
	Definir NumberSymbols como Texto;
	NumberSymbols = "0123456789";
FinFuncion

Funcion OperatorSymbols <- ascii_GetOperatorSymbols
	Definir OperatorSymbols como Texto;
	OperatorSymbols = ":;<=>?@";
FinFuncion

Funcion Letters_UpperCase <- ascii_GetLetters_UpperCase
	Definir Letters_UpperCase como Texto;
	Letters_UpperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
FinFuncion

Funcion SpecialSymbols <- ascii_GetSpecialSymbols
	Definir SpecialSymbols como Texto;
	SpecialSymbols = "`[\]^_``";
FinFuncion

Funcion Letters_LowerCase <- ascii_GetLetters_LowerCase
	Definir Letters_LowerCase como Texto;
	Letters_LowerCase = "abcdefghijqlmnopqrstuvwxyz";
FinFuncion

Funcion ExtraSymbols <- ascii_GetExtraSymbols
	Definir ExtraSymbols como Texto;
	ExtraSymbols = "{|}~";
FinFuncion

Funcion isType <- ascii_IsControlSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isinRangue(char,'','');//0-31
FinFuncion

Funcion isType <- ascii_IsBasicSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isinRangue(char,' ','/');//32-47
FinFuncion

Funcion isType <- ascii_IsNumberSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isinRangue(char,'0','9');//48-57
FinFuncion

Funcion isType <- ascii_IsOperatorSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isinRangue(char,':','@');//58-64
FinFuncion

Funcion isType <- ascii_IsLetters_UpperCase(char)
	Definir isType Como Logico;
	isType = ascii_isinRangue(char,'A','Z');//65-90
FinFuncion

Funcion isType <- ascii_IsSpecialSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isinRangue(char,'`','`');//91-96
FinFuncion

Funcion isType <- ascii_IsLetter_LowerCase(char)
	Definir isType Como Logico;
	isType = ascii_isinRangue(char,'a','z');//97-122
FinFuncion

Funcion isType <- ascii_IsExtraSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isinRangue(char,'{','');//123-126
FinFuncion

Funcion isInRangue <- ascii_isinRangue(char,char_start,char_end)
	Definir isInRangue Como Logico;
	isInRangue = (char_start <= char & char <= char_end);
FinFuncion

///%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[ PSeInt-Toolkit ] %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//----- WIKI [PSEUDO_LIB] -------- %W
//Pseint --version 2023
// String=Texto, Caracter // Int=Numero, Numerico, Entero // Float=Real // Boolean=Logico // | ==  || // & == &&
// return = var+FinFuncion (@retorna el valor de la variable en el estado en el que este a menos que alla otra asignacion)
//
// ¡ ¢ £ ¤ ¥ ¦ § ¨ © ª « ~ ­® ¯ ° ± ² ³ ´ µ ¶ · ¸ ¹ º » ¼ ½ ¾ ¿ À Á Â Ã Ä Å Æ Ç È É Ê Ë Ì Í Î Ï Ð Ñ Ò Ó Ô Õ Ö × Ø Ù Ú Û Ü Ý Þ 
//ß à á â ã ä å æ ç è é é ê ë ì í î ï ð ñ ò ó ô õ ö ÷ ø ù ú ü ý þ ÿ ñ Ñ 
// --------------------  Trabajo pendiente 
// collections: list, setter
//  metodos: randomInt, contains_IgnoreCase, array_sort, Array_reverse, array_filter
// TUI: Window, row, column,input, inputPrompt,Notif_elseication, Checkbox, progresBar, Menu-desplegable, infoCode, init
// Modulo de Testeo /TEST_ASSERT_EQ(Math_pow(2,3), 8) / TEST_ASSERT_TRUE(String_isNumber("123"))
// mejorar print progress con soporte para color y color transparente   /// print soporte de color ESC[0
//setFomater Color
//color: \R,\G,\Y,\B,\M,\C,\W
//segun code en texto colorear 
//salto de linea heredar color \n
//	" /``````````````````\"
// " §   © Bryan.A.M.W   §"
// " \__________________/"
///%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[ START_CODE ] %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%!!0
Algoritmo run_code
	Definir start_second, start_minute como Numero;
	Definir Time_Duration, minute_duration, second_duratrion como Texto;
	start_minute = Local_Time_getMinute();
	start_second = Local_Time_getSecond();
	ClearConsole();
	main();
	minute_duration = num_ToString(Duration_between_minute_strict(start_minute,start_second));
	second_duratrion = num_ToString(Duration_between_second_now(start_second));
	Time_Duration = String_append_withSeparator(String_pad_start(minute_duration, "00"),String_pad_start(second_duratrion, "00"),":");
	println_simple(Color_setColorText(String_append(">>> execution time >>> (mm:ss) ... ",Time_Duration),COLOR_BLUE()));
FinAlgoritmo
///%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[ END CODE ] %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%