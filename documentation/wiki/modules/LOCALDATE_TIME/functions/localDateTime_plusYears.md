# localDateTime_plusYears

**Módulo:** [LOCALDATE_TIME](../LOCALDATE_TIME.md)

## Descripción
Suma años a un LocalDateTime. Ajusta el día si es necesario (ej. 29 feb en año no bisiesto).

## Sintaxis
```pseudocode
Funcion result_dateTime <- localDateTime_plusYears(struct_dateTime, unit_plus)
```

## Parámetros
- `struct_dateTime`: Objeto LocalDateTime
- `unit_plus`: Cantidad de años a sumar

## Retorna
Nuevo LocalDateTime con los años sumados.
