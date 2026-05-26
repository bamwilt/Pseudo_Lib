# condition_message_log

**Módulo:** [CONDITIONS](..\CONDITIONS.md)

## Descripción

Conditionally logs a message at a specified severity level (error, info, debug, trace, warning, fatal) only if the condition is true.

## Sintaxis
```pseudocode
Funcion condition_message_log(condition, message, log)
```

## Parámetros
- `condition`: If true, the message is logged
- `message`: The message to log
- `log`: Severity level string ("error", "info", "debug", "trace", "warning", otherwise "fatal")

## Retorna
Nothing. Logs the message at the specified level if condition is true.
