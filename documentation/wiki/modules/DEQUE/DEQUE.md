# DEQUE

**Código:** #DEQ
**Prefijo:** `util_deque_`
**Estado:** [+] Stable

## Descripción

Módulo que implementa una estructura de datos de doble extremo (deque) basada en colecciones lineales. Permite agregar, eliminar y consultar elementos tanto al inicio como al final de la estructura, con tipado dinámico según el tipo especificado en su creación.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`util_deque_new(TYPE)`](functions/util_deque_new.md) | Crea un nuevo deque vacío |
| [`util_deque_Size(struct_Deque)`](functions/util_deque_Size.md) | Obtiene el tamaño del deque |
| [`util_deque_AddFirst(struct_Deque, element)`](functions/util_deque_AddFirst.md) | Agrega un elemento al inicio |
| [`util_deque_AddLast(struct_Deque, element)`](functions/util_deque_AddLast.md) | Agrega un elemento al final |
| [`util_deque_DeleteFirst(struct_Deque)`](functions/util_deque_DeleteFirst.md) | Elimina el primer elemento |
| [`util_deque_DeleteLast(struct_Deque)`](functions/util_deque_DeleteLast.md) | Elimina el último elemento |
| [`util_deque_println(struct_Deque)`](functions/util_deque_println.md) | Imprime el contenido del deque |
| [`util_deque_getFirst(struct_Deque)`](functions/util_deque_getFirst.md) | Obtiene el primer elemento |
| [`util_deque_getLast(struct_Deque)`](functions/util_deque_getLast.md) | Obtiene el último elemento |

## Ejemplo de Uso

```pseudocode
Algoritmo EjemploDeque
    Definir deque, elemento Como Texto
    Definir primerElem, ultimoElem Como Entero
	
    deque = util_deque_new(TYPE_INT())
    deque = util_deque_AddFirst(deque, 10)
    deque = util_deque_AddLast(deque, 20)
    deque = util_deque_AddFirst(deque, 5)
    deque = util_deque_AddLast(deque, 25)
	
    Escribir "Tamaño: ", util_deque_Size(deque)
    Escribir "Primero: ", util_deque_getFirst(deque)
    Escribir "Último: ", util_deque_getLast(deque)
	
    deque = util_deque_DeleteFirst(deque)
    Escribir "Primero tras eliminar: ", util_deque_getFirst(deque)
	
    deque = util_deque_DeleteLast(deque)
    Escribir "Último tras eliminar: ", util_deque_getLast(deque)
FinAlgoritmo
```
