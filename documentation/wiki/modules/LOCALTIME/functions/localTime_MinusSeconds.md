# localTime_MinusSeconds

**Módulo:** [LOCALTIME](../LOCALTIME.md)

## Descripción
Resta una cantidad de segundos a un LocalTime, ajustando automáticamente si se va debajo de 0.

## Sintaxis
```pseudocode
Funcion struct_time <- localTime_MinusSeconds(struct_localTime, num_decrement)
```

## Parámetros
- `struct_localTime`: Objeto LocalTime
- `num_decrement`: Cantidad de segundos a restar

## Retorna
Nuevo LocalTime con los segundos restados.
