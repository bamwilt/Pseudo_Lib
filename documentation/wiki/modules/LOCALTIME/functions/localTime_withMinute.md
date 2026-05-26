# localTime_withMinute

**Módulo:** [LOCALTIME](../LOCALTIME.md)

## Descripción
Establece un nuevo minuto en un LocalTime, manteniendo la hora y segundos existentes.

## Sintaxis
```pseudocode
Funcion struct_time <- localTime_withMinute(struct_localTime, num_define)
```

## Parámetros
- `struct_localTime`: Objeto LocalTime
- `num_define`: Nuevo minuto (0-59)

## Retorna
LocalTime con el minuto modificado.
