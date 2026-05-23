Algoritmo MODULE_MATH
FinAlgoritmo
///%%%%%[ MATH.................... ]%%%%%%%[   #MAT    ]%%%%%%%%%%%%%%%%%%%%
//----[ MAX ]------------------------------------------------------------------------<#>
Funcion result <- math_max_int(value, limit)
	Definir result Como Entero;	
	result = __private_math_choose(value, limit, true());
FinFuncion
// max = (1>0, 1, 0) result = 1
Funcion result <- math_max_Float(value, limit)
	Definir result Como Real;
	result = __private_math_choose(value, limit, true());
FinFuncion
//----[ MIN ]------------------------------------------------------------------------<#>
Funcion result <- math_min_int(value, limit)
	Definir result Como Entero;
	result = __private_math_choose(value, limit, false());
FinFuncion
// min = (1<0, 0, 1) result = 0
Funcion result <- math_min_float(value, limit)
	Definir result Como Real;
	result = __private_math_choose(value, limit, false());
FinFuncion
//-----------
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
Funcion num_pow <- math_pow(x, exponent)
    Definir num_pow Como Real;
    num_pow = 1;
    Mientras exponent > 0 Hacer
        Si native_math_module(exponent, 2) <> 0 Entonces
            num_pow = num_pow * x;
        FinSi
        x = x * x;
        exponent = math_floor(exponent / 2); 
    FinMientras
FinFuncion

Funcion num_pow <- math_pow_float(base, exponente)
    Definir num_pow, ln_base Como Real;
    ln_base = math_ln(base);
    num_pow = math_exp(exponente * ln_base);
FinFuncion
//----[ TAYLOR ]----------------------------------------------------<#>
Funcion id <- TAYLOR_SIN
    Definir id Como Texto;
    id = "TAYLOR_SIN"; 
FinFuncion

Funcion id <- TAYLOR_COS
    Definir id Como Texto;
    id = "TAYLOR_COS"; 
FinFuncion

Funcion id <- TAYLOR_EXP
    Definir id Como Texto;
    id = "TAYLOR_EXP"; 
FinFuncion

Funcion id <- TAYLOR_LN
    Definir id Como Texto;
    id = "TAYLOR_LN"; 
FinFuncion

// ((-1)^i * x^(2i+1)) / (2i+1)!
Funcion term <- __private_taylor_helper_sin(x, i)
    Definir term Como Real;
    Definir signo, exponente Como Entero;
    signo = math_pow(math_negated(1), i);
    exponente = math_sum((2 * i), 1);
    term = (signo * math_pow(x, exponente)) / math_factorial(exponente);
FinFuncion
// ((-1)^i * x^(2i)) / (2i)!
Funcion term <- __private_taylor_helper_cos(x, i)
    Definir term Como Real;
    Definir signo, exponente Como Entero;
    signo = math_pow(math_negated(1), i);
    exponente = 2 * i;
    term = (signo * math_pow(x, exponente)) / math_factorial(exponente);
FinFuncion
// Taylor para e^x: x^i / i!
Funcion term <- __private_taylor_helper_exp(x, i)
    Definir term Como Real;
    term = math_pow(x, i) / math_factorial(i);
FinFuncion
// ((-1)^(i) * x^(i+1)) / (i+1)  
Funcion term <- __private_taylor_helper_ln(x, i)
    Definir term Como Real;
    Definir signo, exponente Como Entero;
    signo = math_pow(math_negated(1), i);
    exponente = math_sum(i, 1);
    term = (signo * math_pow(x, exponente)) / exponente;
FinFuncion

Funcion numerical_term <- __private_taylor_operation(name_func, x, i)
    Definir numerical_term Como Real;
    Segun name_func Hacer
        TAYLOR_SIN():
            numerical_term = __private_taylor_helper_sin(x, i);
        TAYLOR_COS():
            numerical_term = __private_taylor_helper_cos(x, i);
        TAYLOR_EXP():
            numerical_term = __private_taylor_helper_exp(x, i);
        TAYLOR_LN():
            numerical_term = __private_taylor_helper_ln(x, i);
        De Otro Modo:
            error_message_function("__private_taylor_operation(name_func, x, i)", "unsupported operation");
            numerical_term = 0;
    FinSegun
FinFuncion

Funcion num_taylor <- math_serie_taylor(x, name_function)
	Definir num_taylor, numerical_term, max_iterations, limite_epsilon Como Real;
	Definir i, max_iteraciones Como Entero;
	num_taylor = 0;
	i = 0;
	max_iterations = 80; 
	limite_epsilon = math_EPSILON(); 
	numerical_term = 1.0; 
	Mientras (i < max_iterations) & (i == 0 | math_abs(numerical_term) > limite_epsilon) Hacer
		numerical_term = __private_taylor_operation(name_function, x, i); 
		num_taylor = math_sum(num_taylor, numerical_term);
		i = math_increment(i);
	FinMientras
FinFuncion

Funcion sandbox_development
	Definir tui Como Texto;
	Definir Cx, Cy, x, i, n Como Entero;
	
FinFuncion
//----[ TRIGONOMETRY ]--------------------------------------------------------------<#>
Funcion n_result <- math_sin(x)
    Definir n_result, x_norm Como Real;
    x_norm = math_Normalize_InPiRange(x);
    n_result = math_serie_taylor(x_norm, TAYLOR_SIN());
FinFuncion

Funcion n_result <- math_cos(x)
    Definir n_result, x_norm Como Real;
    x_norm = math_Normalize_InPiRange(x);
    n_result = math_serie_taylor(x_norm, TAYLOR_COS());
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
	Definir x_norm, pi_, pi_2 Como Real;
	pi_ = math_PI();
	pi_2 = 2 * pi_;
	x_norm = math_minus(math_module( math_sum(x, pi_), pi_2), pi_);
FinFuncion
//----[ EXPONENTIAL ]--------------------------------------------------------------<#>
Funcion x_bounds <- math_bilinear_map(x)
    Definir x_bounds Como Real;
    x_bounds = (x - 1) / (x + 1);
FinFuncion

Funcion num_ln <- math_ln(x)
    Definir num_ln, resultado, z, taylorLn_pos, taylorLn_neg Como Real;
    Si x <= 0 Entonces
        error_message_function("math_ln(x)", "Math Error: Logarithm of non-positive number");
        num_ln = number_NULL(); 
    SiNo
        z = math_bilinear_map(x);
		taylorLn_pos = math_serie_taylor(z, TAYLOR_LN());
		taylorLn_neg = math_serie_taylor(math_negated(z), TAYLOR_LN());
        num_ln = math_minus(taylorLn_pos, taylorLn_neg);
    FinSi
FinFuncion

Funcion num_exp <- math_exp(x)
    Definir num_exp Como Real;
    num_exp = math_serie_taylor(x, TAYLOR_EXP());
FinFuncion

Funcion logx <- math_log(x, base)
    Definir logx Como Real;
    logx = math_ln(x) / math_ln(base);
FinFuncion

Funcion num_sqrt <- math_sqrt(S)
    Definir num_sqrt, xk, i Como Real;
	xk = S;//Babylonian method: 1/2(xk+S/xk)
	para i=1 Hasta 6 con paso 1 Hacer
		num_sqrt = 0.5 * (math_sum(xk, (math_div(S,xk))));
		xk = num_sqrt;
	FinPara
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
			length_value = string_toNumber(num_carry);
			num_carry = "";
			num_range = math_sum(num_range, length_value);
		FinSi
		i = math_increment(i);
	FinMientras
FinFuncion
//----[ BASIC_ARITHMETIC ]-----------------------------------------------------------<#>
Funcion num_abs <- math_abs(num)
	Definir num_abs Como Numero;
	num_abs = if_else(num < 0, math_negated(num), num);
FinFuncion

Funcion num_Negate <- math_negated(num)
	Definir num_Negate Como Numero;
	num_Negate = -1 * num;
FinFuncion

Funcion num_div <- math_div(dividend, divisor)
	Definir num_div Como Numero;
	Si divisor == 0 Entonces
		divisor = 1;
		error_message_Function("math_div(dividend, divisor)","divisor = 0");
	FinSi
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
Funcion num_Signum <- math_signum(num)
	Definir num_Signum Como Numero;
	num_Signum = if_else(num>0, 1, if_else(num<0, -1, 0));
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
Funcion number_Round <- math_round(number)
	Definir number_Round, index_point Como Numero;
	Definir number_String, number_Point Como Texto;
	number_String = number_toString(number);
	index_point = math_increment(string_indexOf(number_String, "."));
	number_Point = string_substring_from(number_String, index_point);
	number_Round = math_truncate(number);
	si string_toNumber(Char_At(number_Point, 0)) >= 5 Entonces
		si number >= 0 Entonces
			number_Round = math_increment(number_Round);
		SiNo
			number_Round = math_decrement(number_Round);
		FinSi
	FinSi
FinFuncion

Funcion num_floor <- math_floor(num)
	Definir num_floor Como Numero;
	Definir num_string Como Texto;
	num_floor = math_truncate(num);
	Si num_floor < 0 & string_isNumber_float(number_toString(num)) Entonces
		num_floor = math_decrement(num_floor);
	FinSi
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
//----[ MODULE ]----------------------------------------------------<#>
Funcion module <- math_module(dividend, divisor)
	Definir module Como Numero;// module = a-floor(a/b)*b
	divisor = math_max_float(divisor, 1);
	module = dividend - math_truncate(dividend/divisor) * divisor;
FinFuncion

Funcion value_normalized <- math_NormalizeCycle(current_value, max_limit)
    Definir value_normalized Como Real;
    value_normalized = math_module(current_value, max_limit);
    Si value_normalized < 0 Entonces
        value_normalized = math_sum(value_normalized, max_limit);
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
    num_PHI = 1.618033988749895;
FinFuncion

Funcion epsilon_val <- math_EPSILON
    Definir epsilon_val Como Real;
    epsilon_val = 0.000000000000001;
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

///=====[ DEPENDENCIES ]=====[  ///   ]=====================================
//--[ASCII]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion isType <- ascii_IsNumberSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '0', '9');//48-57
FinFuncion

Funcion iSinRangue <- ascii_isInRangue(char, char_start, char_end)
	Definir iSinRangue Como Logico;
	iSinRangue = (char_start <= char & char <= char_end);
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

//--[ERROR]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion error_message_Function(method, message)
	error_message(string_append_withSeparator(method, message, "//"));
FinFuncion

Funcion error_message(message)
	native_println(symbol_Escape() + "31m[ERROR] // " + message + ".");
FinFuncion

//--[FALSE]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion boolean <- false
	Definir boolean Como Logico;
	boolean = Falso;
FinFuncion

//--[GENERAL]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion boolean <- __private_isEquals_general(value1, value2)
	Definir boolean Como Logico;
	boolean = (value1 == value2);
FinFuncion

//--[IF]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result <- if_else(condition, result, result2)
	Si !(condition) Entonces
		result = result2;
	FinSi	
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
Funcion num_module <- native_math_module(number1, number2)
	Definir num_module Como Numero;
	num_module = number1 MOD number2;
FinFuncion

Funcion length <- native_string_length(text)
	Definir length Como Numero;
	length = Longitud(text);
FinFuncion

Funcion num <- native_string_toNumber(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion result_string <- native_number_ToString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion

Funcion native_println(text)
	Escribir text;
FinFuncion

Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

//--[NUMBER]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion Num <- number_NULL
	Definir Num Como Numero;
	Num = -1;
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

//--[STRING]-- -- -- -- -- -- -- -- -- -- -- -- -- --
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

Funcion num <- string_toNumber(result_string)
	Definir num Como Numero;
	Si !string_isEmpty(result_string) & string_isNumber(result_string) Entonces
		result_string = result_string; 
	SiNo
		result_string = "-1";
	FinSi
	num = native_string_toNumber(result_string);
FinFuncion

Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Numero;
	result = string_indexOf_fromIndex(text, text_match, 0);
FinFuncion

Funcion strSubs <- string_substring_from(result_string, start)
	Definir strSubs Como Texto;
	Definir end_substring Como Entero;
	end_substring = native_string_length(result_string);
	strSubs = string_substring(result_string, start, end_substring);
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

Funcion result_str <- string_delete_From(text, start)
	Definir result_str Como Texto;
	result_str = string_delete(text, start, native_string_length(text));
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

Funcion result_str <- string_delete(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateIndexRange("string_delete", text, start, end);
	start_Str = string_substring(text, 0, start);//Hello <-]
	end_Str = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
FinFuncion

Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion

Funcion strSubs <- string_substring(result_string, start, end)
	Definir strSubs, str_data Como Texto;
	Definir end_substring Como Entero;
	message_validateIndexRange("string_substring", result_string, start, end);
	end_substring = math_max_int( math_minus(end, 1), 0);
	str_data = native_string_substring(result_string, start, end_substring);
	strSubs = if_else(number_isEquals(start, end), "", str_data);
FinFuncion

Funcion boolean <- string_isNumber(text)
	Definir boolean Como Logico;
	boolean = string_isNumber_int(text) | string_isNumber_float(text);
FinFuncion

Funcion result_string <- string_trim(text)
    Definir result_string Como Texto;
	result_string = string_Strip(text, " ");
FinFuncion

Funcion boolean <- string_contains(text, text_match)
	Definir boolean Como Logico;
	boolean = string_indexOf(text, text_match) > -1;
FinFuncion

Funcion boolean <- string_startsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring(text, 0, native_string_length(text_match)), text_match);
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

Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = __private_isEquals_general(str1, str2);
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

//--[SYMBOL]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion

//--[TRUE]-- -- -- -- -- -- -- -- -- -- -- -- -- --
Funcion boolean <- true
	Definir boolean Como Logico;
	boolean = Verdadero;
FinFuncion
