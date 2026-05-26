# localTime_PlusSeconds

**Módulo:** [LOCALTIME](../LOCALTIME.md)

## Descripción
Suma una cantidad de segundos a un LocalTime, ajustando automáticamente si se superan las 24 horas.

## Sintaxis
```pseudocode
Funcion struct_time <- localTime_PlusSeconds(struct_localTime, num_increment)
```

## Parámetros
- `struct_localTime`: Objeto LocalTime
- `num_increment`: Cantidad de segundos a sumar

## Retorna
Nuevo LocalTime con los segundos sumados.
