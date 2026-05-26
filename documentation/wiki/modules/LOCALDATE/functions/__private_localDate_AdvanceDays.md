# __private_localDate_AdvanceDays

**Módulo:** [LOCALDATE](../LOCALDATE.md)

## Descripción

Función privada que avanza días iterativamente ajustando mes y año cuando es necesario.

## Sintaxis

```pseudocode
Funcion struct_date_result <- __private_localDate_AdvanceDays(struct_date, year, month, days)
```

## Parámetros

- `struct_date`: Estructura LocalDate base.
- `year`: Año actual.
- `month`: Mes actual.
- `days`: Días a avanzar.

## Retorna

Texto con el nuevo LocalDate.
