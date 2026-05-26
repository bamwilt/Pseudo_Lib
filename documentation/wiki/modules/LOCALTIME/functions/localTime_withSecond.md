# localTime_withSecond

**Módulo:** [LOCALTIME](../LOCALTIME.md)

## Descripción
Establece un nuevo segundo en un LocalTime, manteniendo la hora y minutos existentes.

## Sintaxis
```pseudocode
Funcion struct_time <- localTime_withSecond(struct_localTime, num_define)
```

## Parámetros
- `struct_localTime`: Objeto LocalTime
- `num_define`: Nuevo segundo (0-59)

## Retorna
LocalTime con el segundo modificado.
