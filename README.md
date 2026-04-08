# Pseudo Lib: Objects, Graphics & Libraries

![Banner de Pseudo Lib](media/PseudoLib_banner_.png)

### Acerca del Proyecto
PseudoLib es una infraestructura integral de pseudo-código desarrollada para PSeInt. Su objetivo es romper las limitaciones del entorno educativo, emulando la arquitectura y robustez de una librería estándar profesional (inspirada Java, C y JavaScript).

>Disclaimer: Este proyecto no tiene un fin pedagógico básico. Es una implementación técnica de naturaleza experimental. Para su correcta integración y aprovechamiento, se requiere comprensión previa de ciertos conceptos de programación.

> Spirtal Demostracion
![demoSpiral](media/Spiral.png)
> poder de dibujo con TUI o Canvas
![demoTUI](media/TUI_Example.png)

---

## Estructura del Proyecto
```
//--------------------------------------------------------------------------------------
//    NAME	       /		CODE_SEARCH 		/      USE			/      STATE	   
//--------------------------------------------------------------------------------------
//1--INPUT  ·  ·  ·  ·  ·  ·  · #1 					user_input_				[+]
//1--STRING ·  ·  ·  ·  ·  ·  · #2  			 	string_					[+]
//1--ARRAY  ·  ·  ·  ·  ·  ·  · #3  				array_					[P]
//1--PRINTERS  ·  ·  ·  ·  ·  · #4 		        	print_ : prinln_ 		[P]
//1    \--SLEEP   ·  ·  ·  ·  · ++4_1				sleep_					[+]
//1    \--LOGS ·  ·  ·  ·  ·  · ++4_2				Log_					[+]
//1    \--TEST ·  ·  ·  ·  ·  · ++4_3				Test_					[+]
//1--INT ·  ·  ·  ·  ·  ·  ·  · #5  				int_					[+]
//1    \--BINARY_STRING ·  ·  ·	++5					binarystring_			[+]
//1--MATH   ·  ·  ·  ·  ·  ·  ·	#6 				 	math_					[+]
//1--BOOLEAN   ·  ·  ·  ·  ·  ·	#7 					 ...					[+]
//1--CONDITIONS   ·  ·  ·  ·  ·	#8    	 			if_ : condition_		[+]
//1--COLOR  ·  ·  ·  ·  ·  ·  · #9  				COLOR_     				[P]
//1--TEMPORAL\CHRONO_UNIT ·  ·	#+0					localDate_time_			[+] 
//1--LOCALDATE_TIME ·  ·  ·  ·	-+0_1				localDate_time_			[D] 
//1    \--LOCALDATE  ·  ·  ·  · -+0_2				localDate_				[P]
//1    \--LOCALTIME  ·  ·  ·  · -+0_3				localTime_				[+]	
//1    \--DURATION   ·  ·  ·  · -+0_4				duration_				[+]	
//1    \--PERIOD     ·  ·  ·  · -+0_5				period_  				[P]
//1--VALUE	·  ·  ·  ·  ·  · 	#+1				    value_					[+]
//1--UTIL   ·  ·  ·  ·  ·  ·  · /// 			 	...						[+] 
//1    \--COLLECTION ·  ·  ·  · #+2				    collection_				[+]
//1      \--LINEAR_COLLECTION ·	-+2_1		    	linearCollection_		[+]
//1    	   \--DEQUE  ·  ·  ·  · -+2_2				util_Deque_				[+]
//1    	   \--QUEUE  ·  ·  ·  ·	-+2_3				util_Queue_				[+]
//1    	   \--STACK  ·  ·  ·  ·	-+2_4				util_Stack				[+]
//1        \--LIST   ·  ·  ·  ·	-+2_5				util_List_				[+]
//1        \--COLLECTION_SETTER -+2_6				collectionSetter_		[+]
//1    			\--SET  ·  ·  ·	-+2_7				util_Set_				[+]
//1 			\--MAP  ·  ·  ·	-+2_8				util_Map_				[+]
//1--OBJECT ·  ·  ·  ·  ·  ·  ·	#+3   			 	object_					[+]
//1--CANVAS ·  ·  ·  ·  ·  ·  ·	#+4  			 	canvas_					[+]
//1    \--SPRITE  ·  ·  ·  ·  ·	-+4_1  			 	sprite_					[+]
//1--TUI ·  ·  ·  ·  ·  ·  ·  · #+5  				TUI_					[+]
//1    \--TCOMPONENT ·  ·  ·  ·	-+5_1  			 	Tcomponent_				[+]
//1--VEC 	   ·  ·  ·  ·  ·  · #+6   				VEC_					[X]
//1--ASCCI/HASH   ·  ·  ·  ·  · #+7   				ascii_					[+]
//1-- END_CODE ++0
//¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
//[+]: Stable
//[D]: Current Development (Unusable temporaly)
//[P]: stable (Pending additions)
//[X]: Unusable / undeveloped state
//Pseint --version 2023
//LINES_CODE: ~6900
```
---

## Próximamente / En desarrollo

- Algoritmos de ordenamiento de arreglos compatibles con la estructura String  
- soperte para color 2D (y graficos simples 3D?)  
- Vectores Cruz y Punto a partir de Cadenas y arreglos  

> la mayoria de cosas complejas se manejan mediante asignaciones y texto
> es simulacion con el objetivo de programar cosas complejas con flexibilidad 
