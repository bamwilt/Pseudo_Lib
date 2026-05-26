# __private_localDate_RewindDays

**Módulo:** [LOCALDATE](../LOCALDATE.md)

## Descripción

Función privada que retrocede días iterativamente ajustando mes y año.

## Sintaxis

```pseudocode
Funcion struct_date_result <- __private_localDate_RewindDays(struct_date, year, month, days)
```

## Parámetros

- `struct_date`: Estructura LocalDate base.
- `year`: Año actual.
- `month`: Mes actual.
- `days`: Días a retroceder.

## Retorna

Texto con el nuevo LocalDate.
