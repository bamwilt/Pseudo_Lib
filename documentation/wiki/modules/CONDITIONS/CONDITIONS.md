# CONDITIONS

**Código:** #CDT
**Prefijo:** `if_` / `error_` / `condition_` / `message_`
**Estado:** [+] Stable

## Descripción

Proporciona evaluaciones condicionales con retorno de valores (`if_else`, `if`), sistema de registro de errores con formato y color ANSI rojo, y validación de rangos de índice en cadenas. También incluye logging condicional por nivel de severidad (ERROR, INFO, DEBUG, TRACE, WARNING, FATAL) y una función de error fatal que interrumpe la ejecución.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`if_else()`](functions/if_else.md) | Returns one of two values based on a condition |
| [`if()`](functions/if.md) | Conditionally returns a value or typed null |
| [`error_message_Function()`](functions/error_message_Function.md) | Logs a formatted error with method name |
| [`error_message()`](functions/error_message.md) | Logs an error message with ANSI red |
| [`condition_message_log()`](functions/condition_message_log.md) | Conditional logging by severity level |
| [`message_validateIndexRange()`](functions/message_validateIndexRange.md) | Validates start/end indices within string bounds |
| [`num_indexValidate()`](functions/num_indexValidate.md) | Returns whether indices are valid for a range |
| [`exection_Error()`](functions/exection_Error.md) | Logs an error and returns a null integer |

## Ejemplo de Uso

```pseudocode
Algoritmo Ejemplo_CONDITIONS
    Definir resultado Como Texto;
    // if_else: retorna "mayor" si 5>3, sino "menor"
    resultado <- if_else(5 > 3, "mayor", "menor");
    Escribir "5 es ", resultado;
    
    // if: retorna el valor si la condicion es verdadera, sino nulo del tipo
    Definir valor, valorCondicional Como Entero;
    valor <- 10;
    valorCondicional <- if(valor > 0, valor, TYPE_INT());
    Escribir "Valor condicional: ", valorCondicional;
    
    // error_message: muestra mensaje de error en rojo
    error_message("Esto es un error de prueba");
    
    // error_message_Function: muestra error con nombre de funcion
    error_message_Function("miFuncion", "argumento invalido");
    
    // condition_message_log: log condicional por nivel
    condition_message_log(Verdadero, "Todo correcto", "info");
    condition_message_log(Falso, "Esto no se mostrara", "debug");
    
    // exection_Error: log de error fatal (detiene la ejecucion)
    // exection_Error("Error critico: division por cero");
FinAlgoritmo
```
