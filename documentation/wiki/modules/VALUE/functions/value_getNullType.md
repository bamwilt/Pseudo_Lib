# value_getNullType

**Módulo:** [VALUE](../VALUE.md)

## Descripción

Retorna el valor nulo por defecto asociado a un tipo de dato.

## Sintaxis

```pseudocode
Funcion result <- value_getNullType(TYPE)
```

## Parámetros

- `TYPE`: Tipo de dato (TYPE_INT, TYPE_FLOAT, TYPE_BOOLEAN, TYPE_STRING, etc.)

## Retorna

Valor nulo correspondiente al tipo (number_NULL para int/float, false para boolean, string_NULL para string, object_Empty para object).
