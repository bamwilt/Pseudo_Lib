# LOGS

**Código:** #LOG
**Prefijo:** `log_`
**Estado:** [+] Stable

## Descripción

Proporciona funciones para imprimir mensajes con etiquetas de severidad y color ANSI. Incluye los niveles WARNING (amarillo), INFO (blanco), ERROR (rojo), DEBUG (azul), TRACE (cian) y FATAL (magenta), cada uno envolviendo la función interna `__private_general_log` que concatena la etiqueta con el mensaje y lo imprime con el escape de color correspondiente.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`log_WARNING()`](functions/log_WARNING.md) | Registra un mensaje de advertencia |
| [`log_INFO()`](functions/log_INFO.md) | Registra un mensaje informativo |
| [`log_ERROR()`](functions/log_ERROR.md) | Registra un mensaje de error |
| [`log_DEBUG()`](functions/log_DEBUG.md) | Registra un mensaje de depuración |
| [`log_TRACE()`](functions/log_TRACE.md) | Registra un mensaje de trazabilidad |
| [`log_FATAL()`](functions/log_FATAL.md) | Registra un mensaje fatal |
| [`__private_general_log()`](functions/__private_general_log.md) | Registro interno genérico de logs |

## Ejemplo de Uso

```pseudocode
Algoritmo EjemploLogs
    log_INFO("Inicio del proceso")
    log_WARNING("Memoria baja")
    log_ERROR("No se pudo abrir el archivo")
    log_DEBUG("Variable x = 42")
    log_TRACE("Entrando al bucle principal")
    log_FATAL("Fallo crítico del sistema")
FinAlgoritmo
```
