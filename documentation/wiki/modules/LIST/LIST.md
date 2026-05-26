# LIST

**Código:** #LIS
**Prefijo:** `util_List_`
**Estado:** [+] Stable

## Descripción
Módulo que implementa una estructura de datos de lista dinámica tipada. Proporciona funciones para crear una nueva lista vacía especificando el tipo de dato (entero, real, booleano o texto), agregar elementos al final, obtener y modificar elementos por su índice, eliminar elementos, consultar el tamaño e imprimir la lista completa en consola.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`util_List_new(TYPE)`](functions/util_List_new.md) | Crea una nueva lista vacía del tipo especificado |
| [`util_List_add(list, element)`](functions/util_List_add.md) | Agrega un elemento al final de la lista |
| [`util_List_get(list, index)`](functions/util_List_get.md) | Obtiene un elemento por su índice |
| [`util_List_set(list, index, value)`](functions/util_List_set.md) | Modifica un elemento en la posición indicada |
| [`util_List_delete(list, index)`](functions/util_List_delete.md) | Elimina un elemento por su índice |
| [`util_List_Size(list)`](functions/util_List_Size.md) | Obtiene la cantidad de elementos de la lista |
| [`util_List_println(list)`](functions/util_List_println.md) | Imprime la lista en consola |
| [`util_get_Size(set)`](functions/util_get_Size.md) | Obtiene el tamaño de un conjunto |

## Ejemplo de Uso
```pseudocode
Algoritmo Ejemplo_Lista
    Definir lista, elemento Como Texto;
    Definir tamano Como Entero;
    // Crear una lista de tipo texto
    lista = util_List_new(TYPE_STRING());
    // Agregar elementos
    lista = util_List_add(lista, "Manzana");
    lista = util_List_add(lista, "Banana");
    lista = util_List_add(lista, "Cereza");
    // Obtener tamaño
    tamano = util_List_Size(lista);
    Escribir "Tamaño de la lista: ", tamano;
    // Obtener elemento por índice
    elemento = util_List_get(lista, 1);
    Escribir "Elemento en índice 1: ", elemento;
    // Modificar elemento
    lista = util_List_set(lista, 1, "Naranja");
    // Eliminar elemento
    lista = util_List_delete(lista, 0);
    // Imprimir lista completa
    util_List_println(lista);
FinAlgoritmo
```
