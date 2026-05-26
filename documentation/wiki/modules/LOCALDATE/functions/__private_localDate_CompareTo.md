# __private_localDate_CompareTo

**Módulo:** [LOCALDATE](../LOCALDATE.md)

## Descripción

Función privada que compara dos LocalDate usando epoch day.

## Sintaxis

```pseudocode
Funcion int_result <- __private_localDate_CompareTo(struct_LocalDate, struct_LocalDate_match)
```

## Parámetros

- `struct_LocalDate`: Primera fecha.
- `struct_LocalDate_match`: Segunda fecha.

## Retorna

-1 si la primera es anterior, 0 si son iguales, 1 si es posterior.
