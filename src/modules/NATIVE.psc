Algoritmo MODULE
FinAlgoritmo
///%%%%%[ NATIVE.................. ]%%%%%%%[   #NAT    ]%%%%%%%%%%%%%%%%%%%%
Funcion length <- native_string_length(text)
	Definir length Como Numero;
	length = Longitud(text);
FinFuncion

Funcion result_string <- native_number_ToString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion

Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

Funcion result_string <- native_string_ToUpperCase(text)
	Definir result_string Como Texto;
	result_string = Mayusculas(text);
FinFuncion

Funcion result_string <- native_string_ToLowerCase(text)
	Definir result_string Como Texto;
	result_string = Minusculas(text);
FinFuncion

Funcion num <- native_string_toNumber(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion native_println(text)
	Escribir text;
FinFuncion

Funcion native_print(text)
	Escribir text Sin Saltar;
FinFuncion

Funcion native_clear_console
	Limpiar Pantalla;
FinFuncion

Funcion num_trunc <- native_math_truncate(num)
	Definir num_trunc Como Numero;
	num_trunc = Trunc(num);
FinFuncion

Funcion num_module <- native_math_module(number1, number2)
	Definir num_module Como Numero;
	num_module = number1 MOD number2;
FinFuncion

Funcion num_abs <- native_math_abs(num)
	Definir num_abs Como Numero;
	num_abs = Abs(num);
FinFuncion

Funcion num_redon <- native_math_round(num)
	Definir num_redon Como Numero;
	num_redon = Redon(num);
FinFuncion

Funcion num_raiz <- native_math_sqrt(num)
	Definir num_raiz Como Numero;
	Si num < 0 Entonces
		num_raiz = 0; 
	SiNo
		num_raiz = Raiz(num);
	FinSi
FinFuncion

Funcion num_sen <- native_math_sin(angle_rad)
	Definir num_sen Como Numero;
	num_sen = Sen(angle_rad);
FinFuncion

Funcion num_cos <- native_math_cos(angle_rad)
	Definir num_cos Como Numero;
	num_cos = Cos(angle_rad);
FinFuncion

Funcion num_tan <- native_math_tan(angle_rad)
	Definir num_tan Como Numero;
	num_tan = Tan(angle_rad);
FinFuncion

Funcion num_ln <- native_math_ln(num)
	Definir num_ln Como Numero;
	Si num <= 0 Entonces
		num_ln = 0;
	SiNo
		num_ln = Ln(num);
	FinSi
FinFuncion

Funcion num_exp <- native_math_pow(num, num_pow)
	Definir num_exp Como Numero;
	num_exp = num ^ num_pow;
FinFuncion

Funcion num_exp <- native_math_exp(num)
	Definir num_exp Como Numero;
	num_exp = Exp(num);
FinFuncion
//===============================[ END_CODE ]===============================