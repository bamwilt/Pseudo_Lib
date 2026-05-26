Algoritmo MODULE_BOOLEAN
	Escribir false();
FinAlgoritmo
///%%%%%[ BOOLEAN............................. ]%%%%%%%[   #BOO    ]%%%%%%%%%%%%%%%%%%%%

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
	text = if_else(boolean, "true", "false");
FinFuncion

Funcion boolean <- __private_isEquals_general(value1, value2)
	Definir boolean Como Logico;
	boolean = (value1 == value2);
FinFuncion

///==========[DEPENDECES]=============================================
//---[ if_ (#CDT) ]------------------------------------------------------------------------

Funcion result <- if_else(condition, result, result2)
	Si !(condition) Entonces
		result = result2;
	FinSi	
FinFuncion
