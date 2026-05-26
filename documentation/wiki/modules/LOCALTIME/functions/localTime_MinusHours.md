# localTime_MinusHours

**Módulo:** [LOCALTIME](../LOCALTIME.md)

## Descripción
Resta una cantidad de horas a un LocalTime, ajustando automáticamente si se va debajo de 0.

## Sintaxis
```pseudocode
Funcion struct_time <- localTime_MinusHours(struct_localTime, num_decrement)
```

## Parámetros
- `struct_localTime`: Objeto LocalTime
- `num_decrement`: Cantidad de horas a restar

## Retorna
Nuevo LocalTime con las horas restadas.
