# localDateTime_of_monthName

**Módulo:** [LOCALDATE_TIME](../LOCALDATE_TIME.md)

## Descripción
Crea un LocalDateTime usando el nombre del mes en lugar del número.

## Sintaxis
```pseudocode
Funcion struct_dateTime <- localDateTime_of_monthName(year, MONTH_NAME, dayOfMonth, hour, minute, second)
```

## Parámetros
- `year`: Año
- `MONTH_NAME`: Nombre del mes (ej: Month_JANUARY())
- `dayOfMonth`: Día del mes
- `hour`: Hora (0-23)
- `minute`: Minuto (0-59)
- `second`: Segundo (0-59)

## Retorna
Un objeto LocalDateTime.
