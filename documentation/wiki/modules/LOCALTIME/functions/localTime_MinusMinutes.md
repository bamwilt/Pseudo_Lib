# localTime_MinusMinutes

**Módulo:** [LOCALTIME](../LOCALTIME.md)

## Descripción
Resta una cantidad de minutos a un LocalTime, ajustando automáticamente si se va debajo de 0.

## Sintaxis
```pseudocode
Funcion struct_time <- localTime_MinusMinutes(struct_localTime, num_decrement)
```

## Parámetros
- `struct_localTime`: Objeto LocalTime
- `num_decrement`: Cantidad de minutos a restar

## Retorna
Nuevo LocalTime con los minutos restados.
