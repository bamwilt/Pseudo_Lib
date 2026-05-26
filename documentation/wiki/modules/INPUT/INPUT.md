# INPUT

**Código:** #INP
**Prefijo:** `user_input_`
**Estado:** [+] Stable

## Descripción

Gestiona la entrada de datos del usuario por consola mediante la instrucción `Leer`. Proporciona funciones para leer strings, enteros, booleanos (validando contra representaciones como "true", "verdadero", "yes", "sí", "t", "v", "1") y flotantes (con validación de punto decimal). Incluye menús de opciones con separadores personalizados, soporte para mayúsculas/minúsculas (`user_input_options_ignoreCase`) y valores por defecto cuando el usuario ingresa una opción inválida.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`user_input_String()`](functions/user_input_String.md) | Lee una cadena de texto ingresada por el usuario |
| [`user_input_Interger()`](functions/user_input_Interger.md) | Lee un número entero ingresado por el usuario |
| [`user_input_boolean()`](functions/user_input_boolean.md) | Lee un valor booleano ingresado por el usuario |
| [`user_input_Float()`](functions/user_input_Float.md) | Lee un número flotante ingresado por el usuario |
| [`user_input_wait()`](functions/user_input_wait.md) | Espera a que el usuario presione una tecla |
| [`user_input_options_message()`](functions/user_input_options_message.md) | Solicita input con opciones y un mensaje |
| [`user_input_options_separator_message()`](functions/user_input_options_separator_message.md) | Solicita input con opciones, separador y mensaje |
| [`user_input_options()`](functions/user_input_options.md) | Solicita input con opciones predefinidas |
| [`user_input_options_ignoreCase()`](functions/user_input_options_ignoreCase.md) | Solicita input con opciones sin distinción de mayúsculas |
| [`user_input_options_separator()`](functions/user_input_options_separator.md) | Solicita input con opciones y separador personalizado |

## Ejemplo de Uso

```pseudocode
Algoritmo Ejemplo_INPUT
    Definir nombre Como Texto;
    Definir edad Como Numero;
    Definir opcion Como Texto;

    Escribir "Como te llamas?";
    nombre = user_input_String();

    Escribir "Cuantos anios tienes?";
    edad = user_input_Interger();

    Escribir "Elige una opcion (rojo, verde, azul): ";
    opcion = user_input_options("rojo,verde,azul", TYPE_STRING());

    Escribir "Hola, ", nombre, ". Tienes ", edad, " anios.";
    Escribir "Elegiste: ", opcion;

    Escribir "Presiona una tecla para continuar...";
    user_input_wait();
FinAlgoritmo
```
