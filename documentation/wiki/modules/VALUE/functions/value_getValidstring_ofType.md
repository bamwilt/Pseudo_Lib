# value_getValidstring_ofType

**Módulo:** [VALUE](../VALUE.md)

## Descripción

Valida un string y si es nulo lo reemplaza por el valor nulo string del tipo especificado.

## Sintaxis

```pseudocode
Funcion result <- value_getValidstring_ofType(value, TYPE)
```

## Parámetros

- `value`: String a validar
- `TYPE`: Tipo de dato de referencia

## Retorna

El string original si no es nulo, o el string del valor nulo del tipo.
