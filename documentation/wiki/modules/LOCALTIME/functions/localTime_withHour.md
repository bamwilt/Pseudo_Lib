# localTime_withHour

**Módulo:** [LOCALTIME](../LOCALTIME.md)

## Descripción
Establece una nueva hora en un LocalTime, manteniendo los minutos y segundos existentes.

## Sintaxis
```pseudocode
Funcion struct_time <- localTime_withHour(struct_localTime, num_define)
```

## Parámetros
- `struct_localTime`: Objeto LocalTime
- `num_define`: Nueva hora (0-23)

## Retorna
LocalTime con la hora modificada.
