# CONDITIONS

**Código:** #CDT
**Prefijo:** `if_` / `error_` / `condition_` / `message_`
**Estado:** [+] Stable

## Descripción

Provides conditional branching utilities, error handling, and logging functions. Includes typed conditional evaluation, index range validation, log-level-based message logging (ERROR, INFO, DEBUG, TRACE, WARNING, FATAL), and error message formatting.

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
