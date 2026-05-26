# value_catch

**Módulo:** [VALUE](../VALUE.md)

## Descripción

Captura un valor y lo reemplaza por el valor nulo del tipo si es nulo, registrando un error.

## Sintaxis

```pseudocode
Funcion result <- value_catch(expected_value, method, message, TYPE)
```

## Parámetros

- `expected_value`: Valor esperado
- `method`: Nombre del método
- `message`: Mensaje de error
- `TYPE`: Tipo de dato

## Retorna

El valor original si no es nulo, o el valor nulo del tipo.
