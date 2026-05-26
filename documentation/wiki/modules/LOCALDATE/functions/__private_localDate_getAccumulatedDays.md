# __private_localDate_getAccumulatedDays

**Módulo:** [LOCALDATE](../LOCALDATE.md)

## Descripción

Función privada que calcula los días acumulados hasta el mes especificado, considerando año bisiesto.

## Sintaxis

```pseudocode
Funcion days <- __private_localDate_getAccumulatedDays(month, isLeap)
```

## Parámetros

- `month`: Mes (0-11, donde 0 es enero).
- `isLeap`: Indica si el año es bisiesto.

## Retorna

Número entero con los días acumulados.
