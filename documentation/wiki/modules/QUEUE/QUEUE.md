# QUEUE

**Código:** #QUE
**Prefijo:** `util_queue_`
**Estado:** [+] Stable

## Descripción

Módulo que implementa una cola (FIFO) basada en colecciones lineales. Los elementos se agregan al final y se eliminan del inicio, siguiendo el principio primero en entrar, primero en salir.

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
