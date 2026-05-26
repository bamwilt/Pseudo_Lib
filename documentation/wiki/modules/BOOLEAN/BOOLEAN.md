# BOOLEAN

**Código:** #BOO
**Prefijo:** `boolean_`
**Estado:** [+] Stable

## Descripción

Proporciona constantes lógicas y utilidades básicas: funciones `true()` y `false()` que devuelven los valores lógicos Verdadero/Falso de PSeInt, `boolean_ToString()` para convertir un valor lógico a los textos "true" o "false", y la función interna `__private_isEquals_general` usada por otros módulos para comparación de igualdad genérica.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`false()`](functions/false.md) | Returns the boolean value `false` |
| [`true()`](functions/true.md) | Returns the boolean value `true` |
| [`boolean_ToString()`](functions/boolean_ToString.md) | Converts a boolean to "true" or "false" string |
| [`__private_isEquals_general()`](functions/__private_isEquals_general.md) | Checks equality of any two values |

## Ejemplo de Uso

```pseudocode
Algoritmo EjemploBoolean
    Definir a, b Como Logico
    a = true()
    b = false()
    
    Escribir boolean_ToString(a)
    Escribir boolean_ToString(b)
    
    Si a Entonces
        Escribir "Es verdadero"
    FinSi
    
    Escribir if_else(true(), "SI", "NO")
FinAlgoritmo
```
