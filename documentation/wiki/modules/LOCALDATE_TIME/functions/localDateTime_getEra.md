# localDateTime_getEra

**Módulo:** [LOCALDATE_TIME](../LOCALDATE_TIME.md)

## Descripción
Obtiene la era de un LocalDateTime.

## Sintaxis
```pseudocode
Funcion era <- localDateTime_getEra(struct_dateTime)
```

## Parámetros
- `struct_dateTime`: Objeto LocalDateTime

## Retorna
"CE" (Common Era) si el año >= 1, "BCE" en caso contrario.
