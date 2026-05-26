# localDateTime_withDayOfYear

**Módulo:** [LOCALDATE_TIME](../LOCALDATE_TIME.md)

## Descripción
Establece un nuevo día del año en un LocalDateTime, ajustando mes y día automáticamente.

## Sintaxis
```pseudocode
Funcion result_dateTime <- localDateTime_withDayOfYear(struct_dateTime, dayOfYear)
```

## Parámetros
- `struct_dateTime`: Objeto LocalDateTime
- `dayOfYear`: Nuevo día del año (1-365/366)

## Retorna
LocalDateTime con el día del año modificado.
