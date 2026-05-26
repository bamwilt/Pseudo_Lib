# QUEUE

**Código:** #QUE
**Prefijo:** `util_queue_`
**Estado:** [+] Stable

## Descripción

Módulo que implementa una cola (FIFO) basada en colecciones lineales. Los elementos se agregan al final con `util_queue_Offer` y se recuperan del inicio con `util_queue_Poll` (que obtiene y elimina) o `util_queue_Peek` (que solo consulta), siguiendo el principio primero en entrar, primero en salir.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`util_queue_new(TYPE)`](functions/util_queue_new.md) | Crea una nueva cola vacía |
| [`util_queue_Size(struct_Queue)`](functions/util_queue_Size.md) | Obtiene el tamaño de la cola |
| [`util_queue_Offer(struct_Queue, element)`](functions/util_queue_Offer.md) | Agrega un elemento al final |
| [`util_queue_println(struct_Queue)`](functions/util_queue_println.md) | Imprime el contenido de la cola |
| [`util_queue_Peek(struct_Queue)`](functions/util_queue_Peek.md) | Obtiene el primer elemento sin eliminarlo |
| [`util_queue_DeleteFirst(struct_Queue)`](functions/util_queue_DeleteFirst.md) | Elimina el primer elemento |
| [`util_queue_Poll(struct_Queue)`](functions/util_queue_Poll.md) | Obtiene y elimina el primer elemento |

## Ejemplo de Uso

```pseudocode
Algoritmo EjemploQueue
    Definir cola Como Texto
    Definir elemento Como Entero
	
    cola = util_queue_new(TYPE_INT())
    cola = util_queue_Offer(cola, 10)
    cola = util_queue_Offer(cola, 20)
    cola = util_queue_Offer(cola, 30)
	
    Escribir "Tamaño: ", util_queue_Size(cola)
    Escribir "Primero (Peek): ", util_queue_Peek(cola)
	
    elemento = util_queue_Poll(cola)
    Escribir "Poll devolvió: ", elemento
    Escribir "Tamaño tras Poll: ", util_queue_Size(cola)
FinAlgoritmo
```
