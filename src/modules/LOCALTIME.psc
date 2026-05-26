Algoritmo MODULE_LOCALTIME
	Escribir localTime_now();
FinAlgoritmo
///%%%%%[ LOCALTIME........................... ]%%%%%%%[   #LTI    ]%%%%%%%%%%%%%%%%%%%%

Funcion LocalTime_result <- localTime_now
	Definir LocalTime_result, TimeNow_String Como Texto;
	Definir hours, minutes, seconds Como Real;
	TimeNow_String = native_localTime_Now_toString();
	hours = string_toNumber(string_substring(TimeNow_String, 0, 2));
	minutes = string_toNumber(string_substring(TimeNow_String, 2, 4));
	seconds = string_toNumber(string_substring(TimeNow_String, 4, 6));
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
		seconds_total = math_sum(seconds_hours, math_sum(seconds_minutes, seconds));
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
	hours 	  = number_toString(duration_secondsToTemporalUnitPart(TimeLocal, chronoUnit_HOURS()));
	minutes   = number_toString(duration_secondsToTemporalUnitPart(TimeLocal, chronoUnit_MINUTES()));
	seconds   = number_toString(duration_secondsToTemporalUnitPart(TimeLocal, chronoUnit_SECONDS()));
	hours 	  = string_fit(hours, "00");
	minutes   = string_fit(minutes, "00");
	seconds   = string_fit(seconds, "00");
	Time_ToString = string_append_withSeparator(hours, minutes, ":");
	Time_ToString = string_append_withSeparator(Time_ToString, seconds, ":");
FinFuncion

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

Funcion struct_time <- localTime_MinusHours(struct_localTime, num_decrement)
    Definir struct_time Como Texto;
    struct_time = localTime_PlusHours(struct_localTime, math_negated(num_decrement));
FinFuncion

Funcion struct_time <- localTime_MinusMinutes(struct_localTime, num_decrement)
    Definir struct_time Como Texto;
    struct_time = localTime_PlusMinutes(struct_localTime, math_negated(num_decrement));
FinFuncion

Funcion struct_time <- localTime_MinusSeconds(struct_localTime, num_decrement)
    Definir struct_time Como Texto;
    struct_time = localTime_PlusSeconds(struct_localTime, math_negated(num_decrement));
FinFuncion

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
	time_truncate = math_minus(time_now, time_part);
    struct_time = __private_temporal_setSecondOfDays(struct_localTime, time_truncate );
FinFuncion

///==========[DEPENDECES]=============================================
//---[ native_ (#NAV) ]--------------------------------------------------------------------

Funcion time_value_String <- native_localTime_Now_toString
	Definir time_value_String Como Texto;
	time_value_String = string_fit(number_toString(native_localTime_Now()), "000000");
FinFuncion

Funcion Time_num <- native_localTime_Now
	Definir Time_num Como Numero;
	Time_num = HoraActual();
FinFuncion

Funcion num <- native_string_toNumber(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

Funcion result_string <- native_number_ToString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion

Funcion length <- native_string_length(text)
	Definir length Como Numero;
	length = Longitud(text);
FinFuncion

Funcion native_println(text)
	Escribir text;
FinFuncion

Funcion result_string <- native_string_ToLowerCase(text)
	Definir result_string Como Texto;
	result_string = Minusculas(text);
FinFuncion
//---[ string_ (#STR) ]--------------------------------------------------------------------

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

Funcion result_string <- string_fit(text, text_pad)
	Definir result_string, res_pad Como Texto;
	Definir pad_length Como Entero;
	pad_length		= native_string_length(text_pad);
	result_string   = string_pad_limitStart(text, text_pad, pad_length);
	result_string	= string_substring(result_string, 0, pad_length);
FinFuncion

Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion

Funcion boolean <- string_isEmpty(text)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(text, "");
FinFuncion

Funcion boolean <- string_isNumber(text)
	Definir boolean Como Logico;
	boolean = string_isNumber_int(text) | string_isNumber_float(text);
FinFuncion

Funcion result_string <- string_pad_limitStart(text, text_pad, pad_length)
	Definir result_string, res_pad Como Texto;
	Definir text_length, res_length, end_substring Como Entero;
	text_length   = native_string_length(text);
	res_length    = math_minus(pad_length, text_length);
	end_substring = math_max_Int(res_length, 0);
	res_pad       = string_substring(text_pad, 0, end_substring);
	result_string = string_insert(text, res_pad, 0);	
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

Funcion num <- string_length(text)
	Definir num Como Numero;
	num = native_string_length(text);
FinFuncion

Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Numero;
	result = string_indexOf_fromIndex(text, text_match, 0);
FinFuncion

Funcion result_str <- string_delete_From(text, start)
	Definir result_str Como Texto;
	result_str = string_delete(text, start, native_string_length(text));
FinFuncion

Funcion strSubs <- string_substring_from(result_string, start)
	Definir strSubs Como Texto;
	Definir end_substring Como Entero;
	end_substring = native_string_length(result_string);
	strSubs = string_substring(result_string, start, end_substring);
FinFuncion

Funcion result_string <- string_insert(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, false);
FinFuncion

Funcion result_string <- string_trim(text)
    Definir result_string Como Texto;
	result_string = string_Strip(text, " ");
FinFuncion

Funcion boolean <- string_startsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring(text, 0, native_string_length(text_match)), text_match);
FinFuncion

Funcion result_string <- char_At(text, index)
	Definir result_string Como Texto;
	Definir end_substring, text_length Como Entero;
	text_length   = native_string_length(text);
	end_substring = math_min_int(math_increment(index), text_length);
	result_string = string_substring(text, index, end_substring);
FinFuncion

Funcion boolean <- string_contains(text, text_match)
	Definir boolean Como Logico;
	boolean = string_indexOf(text, text_match) > -1;
FinFuncion

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
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

Funcion boolean <- string_toBoolean(result_string)
	Definir boolean Como Logico;
	boolean = string_isBoolean_true(result_string);
FinFuncion

Funcion result_str <- string_delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_delete", text, start, end);
	start_Str = string_substring(text, 0, start);//Hello <-]
	end_Str = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
FinFuncion

Funcion result <- string_lastIndexOf(text, text_match)//< ---
	Definir result Como Numero;
	result = string_lastindexOf_fromIndex(text, text_match, native_string_length(text));
FinFuncion

Funcion result_string <- __private_string_insert_general(text, text_insert, index, isReplace)
	Definir result_string, before, after Como Texto;
	Definir index_after Como Entero;
	before        = string_substring(text, 0, index);
	index_after   = math_sum(index, if_else(isReplace, native_string_length(text_insert), 0));
	after         = string_substring_from(text, math_min_int(index_after, native_string_length(text)));
	result_string = string_append_withSeparator(before, after, text_insert);
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

Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
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

Funcion boolean <- char_isNumber(char)
	Definir boolean Como Logico;
	boolean = ascii_IsNumberSymbols(char);
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
//---[ log_ (#LOG) ]-----------------------------------------------------------------------

Funcion log_ERROR(message)
	__private_general_log(message, "ERROR: ", COLOR_RED());
FinFuncion

Funcion __private_general_log(message, start_tag, SELECTED_COLOR)
	message = string_append(start_tag, message);
	native_println(string_append(SELECTED_COLOR, message));
FinFuncion
//---[ int_ (#NUM) ]-----------------------------------------------------------------------

Funcion TYPE <- TYPE_FLOAT
	Definir TYPE Como Texto;
	TYPE = "float";
FinFuncion

Funcion Num <- number_NULL
	Definir Num Como Numero;
	Num = -1;
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

Funcion result_string <- number_toString(num)
	Definir result_string Como Texto;
	result_string = native_number_ToString(num);
FinFuncion

Funcion boolean <- number_isEquals(num, num2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(num, num2);
FinFuncion

Funcion TYPE <- TYPE_INT
	Definir TYPE Como Texto;
	TYPE = "int";
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

Funcion TYPE <- TYPE_STRING
	Definir TYPE Como Texto;
	TYPE = "string";
FinFuncion

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

Funcion TYPE <- TYPE_OBJECT
	Definir TYPE Como Texto;
	TYPE = "object";
FinFuncion
//---[ math_ (#MAT) ]----------------------------------------------------------------------

Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion

Funcion value_normalized <- math_NormalizeCycle(current_value, max_limit)
    Definir value_normalized Como Real;
    value_normalized = math_module(current_value, max_limit);
    Si value_normalized < 0 Entonces
        value_normalized = math_sum(value_normalized, max_limit);
    FinSi
FinFuncion

Funcion num_Negate <- math_negated(num)
	Definir num_Negate Como Numero;
	num_Negate = -1 * num;
FinFuncion

Funcion module <- math_module(dividend, divisor)
	Definir module Como Numero;// module = a-floor(a/b)*b
	divisor = math_max_float(divisor, 1);
	module = dividend - math_truncate(dividend/divisor) * divisor;
FinFuncion

Funcion numDec <- math_minus(num, value)
	Definir numDec Como Numero;
	numDec = num - value;
FinFuncion

Funcion result <- math_max_int(value, limit)
	Definir result Como Entero;	
	result = __private_math_choose(value, limit, true());
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

Funcion result <- math_max_Float(value, limit)
	Definir result Como Real;
	result = __private_math_choose(value, limit, true());
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

Funcion float_lim <- math_limitDecimals(num, limitFloat)
	Definir float_lim, index_point, index_max, TextLength Como Numero;
	Definir str_num Como Texto;
	str_num = number_toString(num);//1.123
	TextLength = string_Length(str_num);
	index_point = math_increment(string_indexOf_fromIndex(str_num, ".", 0));
	si index_point > 1 Entonces
		index_point = math_min_Int(math_sum(index_point, limitFloat), TextLength );
		str_num = string_delete(str_num, index_point, TextLength);
	FinSi
	float_lim = string_toNumber(str_num);
FinFuncion

Funcion numInc <- math_increment(num)
	Definir numInc Como Numero;
	numInc = num + 1;
FinFuncion

Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
FinFuncion

Funcion result <- math_min_int(value, limit)
	Definir result Como Entero;
	result = __private_math_choose(value, limit, false());
FinFuncion
//---[ boolean_ (#BOO) ]-------------------------------------------------------------------

Funcion boolean <- __private_isEquals_general(value1, value2)
	Definir boolean Como Logico;
	boolean = (value1 == value2);
FinFuncion

Funcion boolean <- true
	Definir boolean Como Logico;
	boolean = Verdadero;
FinFuncion

Funcion boolean <- false
	Definir boolean Como Logico;
	boolean = Falso;
FinFuncion

Funcion text <- boolean_ToString(boolean)	
	Definir text Como Texto;
	text = if_else(boolean, "true", "false");
FinFuncion
//---[ if_ (#CDT) ]------------------------------------------------------------------------

Funcion error_message_Function(method, message)
	error_message(string_append_withSeparator(method, message, "//"));
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

Funcion result <- if_else(condition, result, result2)
	Si !(condition) Entonces
		result = result2;
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

Funcion string_Increment <- value_modify_StringNumber(string_number, num_sum)
	Definir string_Increment Como Texto;
	string_Increment = number_toString(math_sum(string_toNumber(string_number), num_sum));
FinFuncion
//---[ collection_ (#CLL) ]----------------------------------------------------------------

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

Funcion type_area <- collection_getContent_TypeArea(collection)
	Definir type_area Como Texto;
	type_area =  collection_getContent_TypeArea_End_Of_Text(collection, symbol_dataArea());
FinFuncion

Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion

Funcion symbol_area <- symbol_typeArea
	Definir symbol_area Como Texto;
	symbol_area = "";//001D
FinFuncion

Funcion symbol_area <- symbol_dataArea
	Definir symbol_area Como Texto;
	symbol_area = "";
FinFuncion

Funcion symbol_area <- symbol_metaData
	Definir symbol_area Como Texto;
	symbol_area = "";//001E
FinFuncion

Funcion type_area <- collection_getContent_TypeArea_End_Of_Text(collection, text_end)
	Definir type_area Como Texto;
	type_area = collection_getContent_Between_Symbols(collection, symbol_typeArea(), text_end);
FinFuncion

Funcion result_string <- symbol_Separator
	Definir result_string Como Texto;
	result_string = "";//001F
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
//---[ managerData_ (#MDA) ]---------------------------------------------------------------

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

Funcion collection_result <- linearCollection_addLast_ByType(struct_Collection, Element, TYPE)
	Definir collection_result, element_String Como Texto;// (C, B, A/1;2;3)
	element_String = value_TypeToString(Element, TYPE);//"Z";
	collection_result = linearCollection_addLast_ByString(struct_Collection, element_String);
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

Funcion Size_int <- linearCollection_getSize(struct_Collection)
	Definir Size_int Como Numero;
	Size_int = string_toNumber(string_substring_from(struct_Collection, math_increment(linearCollection_getIndex_EndMetaData(struct_Collection))));
FinFuncion

Funcion collection_result <- linearCollection_SetElement_ToType(struct_Collection, index_element, new_value, TYPE)
	Definir collection_result, value_string Como Texto;
	value_string = value_TypeToString(new_value, TYPE);
	collection_result = linearCollection_SetElement_ToString(struct_Collection, index_element, value_string);
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

Funcion End_index <- linearCollection_getIndex_EndMetaData(struct_Collection)
	Definir End_index Como Numero;
	End_index = string_lastIndexOf(struct_Collection, symbol_ExtraData());
FinFuncion

Funcion collection_result <- linearCollection_SetElement_ToString(struct_Collection, index_element, value_string)
	Definir collection_result, element_String Como Texto;
	collection_result = __private_linearCollection_ModifyElement(struct_Collection, index_element, value_string);
FinFuncion

Funcion collection_result <- linearCollection_increment_numElement(struct_List)
	Definir collection_result Como Texto;
	collection_result =  linearCollection_update_numElement(struct_List, 1);
FinFuncion

Funcion struct_IsEmpty <- linearCollection_isEmpty(struct_Collection)
	Definir struct_IsEmpty Como Logico;
	struct_IsEmpty = (linearCollection_getSize(struct_Collection) < 1);
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
//---[ temporal_ (#TMP) ]------------------------------------------------------------------

Funcion isValid <- temporal_isValid(hours, minutes, seconds)
	Definir isValid Como Logico;
	isValid = temporal_isValidHours(hours) &temporal_isValidMinutes(minutes) & temporal_isValidSeconds(seconds);
FinFuncion

Funcion Temporal_Type <- chronoUnit_HOURS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "HOUR";
FinFuncion

Funcion Temporal_Type <- chronoUnit_MINUTES
	Definir Temporal_Type Como Texto;
	Temporal_Type = "MINUTE";
FinFuncion

Funcion Temporal_Type <- TEMPORAL_LOCALTIME
	Definir Temporal_Type Como Texto;
	Temporal_Type = "LocalTime";
FinFuncion

Funcion time_result <- __private_temporal_addSecondOfDays(struct_time, seconds)
	Definir time_result Como Texto;
	time_result = linearCollection_addLast_ByType(struct_time, seconds, TYPE_FLOAT());
FinFuncion

Funcion Temporal_Type <- chronoUnit_SECONDS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "SECOND";
FinFuncion

Funcion seconds <- temporal_getSeconds(struct_temporal)
    Definir seconds Como Real;
    seconds = linearCollection_getLast(struct_temporal);
FinFuncion

Funcion time_result <- __private_temporal_setSecondOfDays(struct_time, seconds)
	Definir time_result Como Texto;
	Definir size_struct Como Entero;
	size_struct = linearCollection_getSize(struct);
	time_result = linearCollection_SetElement_ToType(struct_time, size_struct, seconds, TYPE_FLOAT());
FinFuncion

Funcion struct_temporal_result <- temporal_PlusUnitTemporal(struct_temporal, num_increment, Temporal_Type)
    Definir struct_temporal_result Como Texto;
    Definir seconds_to_add Como Real;
    seconds_to_add = duration_TemporalUnitToSeconds(num_increment, Temporal_Type);
    struct_temporal_result = temporal_PlusNumber(struct_temporal, seconds_to_add);
FinFuncion

Funcion struct_time <- temporal_with(struct_temporal, num_define, type_temporal)
    Definir struct_time Como Texto;
    Definir time_now, t_old_part, t_new_part, time_total Como Real;
    Si temporal_isValidUnitTemporal(num_define, type_temporal) Entonces
        time_now    = temporal_getSeconds(struct_temporal);
        t_old_part  = duration_secondsToTemporalUnitPart(time_now, type_temporal);
        t_old_part  = duration_TemporalUnitToSeconds(t_old_part, type_temporal);
        t_new_part  = duration_TemporalUnitToSeconds(num_define, type_temporal);
		time_total = math_sum(math_minus(time_now, t_old_part), t_new_part);
        struct_time = __private_temporal_setSecondOfDays(struct_temporal, time_total);
    SiNo
        error_message_Function("temporal_with(struct, num, type)", "unit range_error");
        struct_time = struct_temporal;
    FinSi
FinFuncion

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

Funcion Temporal_Type <- chronoUnit_DAYS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "DAY";
FinFuncion

Funcion second_ofUnit <- temporal_daysToSecond(unit_second)
	Definir second_ofUnit Como Real;
	second_ofUnit = unit_second * chronoUnit_getDuration(chronoUnit_DAYS);
FinFuncion

Funcion struct_temporal_result <- temporal_PlusNumber(struct_temporal, number_plus)
    Definir struct_temporal_result Como Texto;
    Definir seconds_total Como Real;
    seconds_total = math_sum(temporal_getSeconds(struct_temporal), number_plus);
    struct_temporal_result = linearCollection_SetElement_ToString(struct_temporal, 0, number_toString(seconds_total));
FinFuncion

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

Funcion Temporal_Type <- chronoUnit_WEEKS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "WEEKS";
FinFuncion
//---[ duration_ (#DUR) ]------------------------------------------------------------------

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

Funcion second_ofUnit <- duration_hoursToSeconds(unit_second)
	Definir second_ofUnit Como Real;
	second_ofUnit = unit_second * chronoUnit_getDuration(chronoUnit_HOURS);
FinFuncion

Funcion second_ofUnit <- duration_minutesToSeconds(unit_second)
	Definir second_ofUnit Como Real;
	second_ofUnit = unit_second * chronoUnit_getDuration(chronoUnit_MINUTES);
FinFuncion

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

Funcion unit_Res <- duration_secondsToDay(unit_second)
    Definir unit_Res Como Real;
    unit_Res = unit_second / chronoUnit_getDuration(chronoUnit_DAYS());
FinFuncion

Funcion unit_Res <- duration_secondsToHours(unit_second)
    Definir unit_Res Como Real;
    unit_Res = unit_second / chronoUnit_getDuration(chronoUnit_HOURS());
FinFuncion

Funcion unit_Res <- duration_secondsToMinutes(unit_second)
    Definir unit_Res Como Real;
    unit_Res = unit_second / chronoUnit_getDuration(chronoUnit_MINUTES());
FinFuncion
//---[ object_ (#OBJ) ]--------------------------------------------------------------------

Funcion result_string <- object_Empty(type_Name)
	Definir result_string Como Texto;
	result_string = object_new(type_Name);
FinFuncion

Funcion object_result <- object_new(name_object)
	Definir object_result Como Texto;
	object_result = linearCollection_new(TYPE_OBJECT(), string_append(name_object, symbol_ExtraData()));
FinFuncion
//---[ ascii_ (#ASC) ]---------------------------------------------------------------------

Funcion isType <- ascii_IsNumberSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '0', '9');//48-57
FinFuncion

Funcion iSinRangue <- ascii_isInRangue(char, char_start, char_end)
	Definir iSinRangue Como Logico;
	iSinRangue = (char_start <= char & char <= char_end);
FinFuncion
