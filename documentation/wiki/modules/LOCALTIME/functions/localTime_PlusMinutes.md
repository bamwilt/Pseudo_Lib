# localTime_PlusMinutes

**Módulo:** [LOCALTIME](../LOCALTIME.md)

## Descripción
Suma una cantidad de minutos a un LocalTime, ajustando automáticamente si se superan las 24 horas.

## Sintaxis
```pseudocode
Funcion struct_time <- localTime_PlusMinutes(struct_localTime, num_increment)
```

## Parámetros
- `struct_localTime`: Objeto LocalTime
- `num_increment`: Cantidad de minutos a sumar

## Retorna
Nuevo LocalTime con los minutos sumados.
