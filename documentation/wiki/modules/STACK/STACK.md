# STACK

**Código:** #STA
**Prefijo:** `util_stack_`
**Estado:** [+] Stable

## Descripción

Módulo que implementa una pila (LIFO) basada en colecciones lineales. Los elementos se apilan al final con `util_stack_push` y se desapilan del final con `util_stack_Pop` (que obtiene y elimina) o `util_stack_Top` (que solo consulta), siguiendo el principio último en entrar, primero en salir.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`util_stack_new(TYPE)`](functions/util_stack_new.md) | Crea una nueva pila vacía |
| [`util_stack_Size(struct_Stack)`](functions/util_stack_Size.md) | Obtiene el tamaño de la pila |
| [`util_stack_push(struct_Stack, element)`](functions/util_stack_push.md) | Apila un elemento |
| [`util_stack_println(struct_Stack)`](functions/util_stack_println.md) | Imprime el contenido de la pila |
| [`util_stack_Top(struct_Stack)`](functions/util_stack_Top.md) | Obtiene el elemento superior sin eliminarlo |
| [`util_stack_removeLast(struct_Stack)`](functions/util_stack_removeLast.md) | Elimina el último elemento |
| [`util_stack_Pop(struct_Stack)`](functions/util_stack_Pop.md) | Obtiene y elimina el elemento superior |

## Ejemplo de Uso

```pseudocode
Algoritmo EjemploStack
    Definir pila Como Texto
    Definir elemento Como Entero
	
    pila = util_stack_new(TYPE_INT())
    pila = util_stack_push(pila, 10)
    pila = util_stack_push(pila, 20)
    pila = util_stack_push(pila, 30)
	
    Escribir "Tamaño: ", util_stack_Size(pila)
    Escribir "Top: ", util_stack_Top(pila)
	
    elemento = util_stack_Pop(pila)
    Escribir "Pop devolvió: ", elemento
    Escribir "Tamaño tras Pop: ", util_stack_Size(pila)
    Escribir "Nuevo Top: ", util_stack_Top(pila)
FinAlgoritmo
```
