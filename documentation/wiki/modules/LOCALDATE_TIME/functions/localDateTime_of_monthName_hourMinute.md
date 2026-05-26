# localDateTime_of_monthName_hourMinute

**Módulo:** [LOCALDATE_TIME](../LOCALDATE_TIME.md)

## Descripción
Crea un LocalDateTime con nombre de mes y sin segundos.

## Sintaxis
```pseudocode
Funcion struct_dateTime <- localDateTime_of_monthName_hourMinute(year, MONTH_NAME, dayOfMonth, hour, minute)
```

## Parámetros
- `year`: Año
- `MONTH_NAME`: Nombre del mes (ej: Month_JANUARY())
- `dayOfMonth`: Día del mes
- `hour`: Hora (0-23)
- `minute`: Minuto (0-59)

## Retorna
Un objeto LocalDateTime con segundos = 0.
