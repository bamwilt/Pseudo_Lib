# localTime_of

**Módulo:** [LOCALTIME](../LOCALTIME.md)

## Descripción
Crea un objeto LocalTime a partir de horas, minutos y segundos. Valida que los valores estén en el rango 00:00:00 - 23:59:59.

## Sintaxis
```pseudocode
Funcion LocalTime_result <- localTime_of(hours, minutes, seconds)
```

## Parámetros
- `hours`: Horas (0-23)
- `minutes`: Minutos (0-59)
- `seconds`: Segundos (0-59)

## Retorna
Un objeto LocalTime. Si los valores no son válidos, retorna un LocalTime nulo.
