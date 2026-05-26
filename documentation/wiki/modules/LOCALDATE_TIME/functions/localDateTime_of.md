# localDateTime_of

**Módulo:** [LOCALDATE_TIME](../LOCALDATE_TIME.md)

## Descripción
Crea un objeto LocalDateTime a partir de año, mes, día, hora, minuto y segundo.

## Sintaxis
```pseudocode
Funcion struct_dateTime <- localDateTime_of(year, month, dayOfMonth, hour, minute, second)
```

## Parámetros
- `year`: Año
- `month`: Mes (1-12)
- `dayOfMonth`: Día del mes
- `hour`: Hora (0-23)
- `minute`: Minuto (0-59)
- `second`: Segundo (0-59)

## Retorna
Un objeto LocalDateTime. Si la fecha no es válida, retorna nulo.
