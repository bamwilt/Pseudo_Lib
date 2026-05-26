# localDateTime_of_hourMinute

**Módulo:** [LOCALDATE_TIME](../LOCALDATE_TIME.md)

## Descripción
Crea un LocalDateTime sin segundos (segundos = 0).

## Sintaxis
```pseudocode
Funcion struct_dateTime <- localDateTime_of_hourMinute(year, month, dayOfMonth, hour, minute)
```

## Parámetros
- `year`: Año
- `month`: Mes (1-12)
- `dayOfMonth`: Día del mes
- `hour`: Hora (0-23)
- `minute`: Minuto (0-59)

## Retorna
Un objeto LocalDateTime con segundos = 0.
