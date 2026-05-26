# localTime_PlusHours

**Módulo:** [LOCALTIME](../LOCALTIME.md)

## Descripción
Suma una cantidad de horas a un LocalTime, ajustando automáticamente si se superan las 24 horas.

## Sintaxis
```pseudocode
Funcion struct_time <- localTime_PlusHours(struct_localTime, num_increment)
```

## Parámetros
- `struct_localTime`: Objeto LocalTime
- `num_increment`: Cantidad de horas a sumar

## Retorna
Nuevo LocalTime con las horas sumadas.
