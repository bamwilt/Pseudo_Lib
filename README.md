# Pseudo Lib: Objects, Graphics & Libraries

![Banner de Pseudo Lib](media/PseudoLib_banner_.png)

### Estadísticas del Proyecto
PseudoLib es una extensa biblioteca de pseudo-código escrita en PSeInt que implementa funcionalidades para emular a una libreria estandar de un lenguaje real. Su propósito no es educativo sino experimental.

![demoSpiral](media/Spiral.jpeg)

> Estado: ~340 funciones & ~3700 Lineas 
> Versión: PSeInt 2023+
> Estado: En desarrollo activo

---

## Estructura del Proyecto
```
//NAME		       /		CODE_SEARCH 		/      USE			/      STATE
//--------------------------------------------------------------------------------------
//l--INPUT  ·  ·  ·  ·  ·  ·  · #1 					user_input_				[+]
//1--STRING ·  ·  ·  ·  ·  ·  · #2  			 	string_					[+]
//1--ARRAY  ·  ·  ·  ·  ·  ·  · #3  				array_					[P]
//1--PRINTERS  ·  ·  ·  ·  ·  · #4 		 	print_ : prinln_ : log_			[P]
//1    \--SLEEP   ·  ·  ·  ·  · ++4_1				sleep_					[+]
//1    \--LOGS ·  ·  ·  ·  ·  · ++4_2				Log_					[+]
//1    \--TEST ·  ·  ·  ·  ·  · ++4_3				Test_					[+]
//1--INT ·  ·  ·  ·  ·  ·  ·  · #5  				int_					[+]
//1    \--BINARY_STRING ·  ·  ·	++5					binaryString_			[+]
//1--MATH   ·  ·  ·  ·  ·  ·  ·	#6 				 	math_					[P]
//1--BOOLEAN   ·  ·  ·  ·  ·  ·	#7 					 ...					[+]
//1--CONDITIONS   ·  ·  ·  ·  ·	#8    	 			if_ : condition_		[+]
//1--DEFINITIONS  ·  ·  ·  ·  ·	#9 					NULL					[+]
//1--COLOR  ·  ·  ·  ·  ·  ·  · #+0 				COLOR_     				[P]
//1--LOCAL_DATE_TIME ·  ·  ·  ·	#+1					Local_					[P]
//1    \--DURATION   ·  ·  ·  · ++1_1				Duration_				[+]
//1--UTIL   ·  ·  ·  ·  ·  ·  · #+2 			 	NULL					[+]
//1    \--COLLECTION ·  ·  ·  · ///				    collection_				[+]
//1    \--LINEAR_COLLECTION   ·	++2_1		    	linearCollection_		[+]
//1    \--DEQUE   ·  ·  ·  ·  · ++2_2				util_Deque_				[+]
//1    \--QUEUE   ·  ·  ·  ·  ·	++2_3				util_Queue_				[+]
//1    \--STACK   ·  ·  ·  ·  ·	++2_4				util_Stack				[+]
//1    \--LIST ·  ·  ·  ·  ·  ·	++2_5				util_List_				[+]
//1    \--COLLECTION_SETTER·  · ++2_6				util_List_				[+]
//1    			\--SET  ·  ·  ·	++2_7				util_Set_				[+]
//1 			\--MAP  ·  ·  ·	++2_8				util_Map_				[+]
//1--OBJECT    ·  ·  ·  ·  ·  ·	#+3   			 	object_					[P]
//1--CANVAS    ·  ·  ·  ·  ·  ·	#+4  			 	canvas_					[P]
//1--TUI	   ·  ·  ·  ·  ·  · #+5   				TUI_					[P]
//1--VEC 	   ·  ·  ·  ·  ·  · #+6   				VEC_					[X]
//1--ASCCI/HASH   ·  ·  ·  ·  · #+7   				ascii_					[+]
//  _______________________________________________
//END_CODE ++0
//LINES_CODE: ~4300
//[+]: Stable
//[D]: Current Development
//[P]: stable (Pending additions)
//[X]: Unusable / undeveloped state
```
---

## Próximamente / En desarrollo

- mejoras en los helpers de funciones de Local_Date_Time y Duration
- Algoritmos de ordenamiento: **QuickSort, BubbleSort, MergeSort**  
- soperte para color 2D (y graficos simples 3D?)  
- Reescritura de **Vec**: optimización y mejoras de helpers  

> la mayoria de cosas complejas se manejan mediante asignaciones y texto
> es simulacion con el objetivo de programar cosas complejas con flexibilidad 
