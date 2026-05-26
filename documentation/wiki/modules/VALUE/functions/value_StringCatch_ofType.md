# value_StringCatch_ofType

**Módulo:** [VALUE](../VALUE.md)

## Descripción

Captura un string; si es nulo lo reemplaza por el string nulo del tipo y registra un error.

## Sintaxis

```pseudocode
Funcion result <- value_StringCatch_ofType(value, TYPE, method, message)
```

## Parámetros

- `value`: String a evaluar
- `TYPE`: Tipo de dato
- `method`: Nombre del método que reporta el error
- `message`: Mensaje de error

## Retorna

El string original o el valor nulo del tipo si es nulo.
