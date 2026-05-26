# SET

**Código:** #SET
**Prefijo:** `util_set_`
**Estado:** [+] Stable

## Descripción
Módulo que implementa un conjunto (set) sin elementos duplicados, construido sobre una colección de celdas con modo setter dinámico. Las operaciones de adición verifican automáticamente si el elemento ya existe antes de insertarlo, y el tamaño de celda se ajusta dinámicamente según la longitud del elemento más grande almacenado.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`util_set_new()`](functions/util_set_new.md) | Crea un nuevo conjunto vacío |
| [`util_set_Add()`](functions/util_set_Add.md) | Agrega un elemento al conjunto |
| [`util_set_Delete()`](functions/util_set_Delete.md) | Elimina un elemento del conjunto |
| [`util_set_println()`](functions/util_set_println.md) | Imprime el contenido del conjunto |
| [`util_set_Containss()`](functions/util_set_Containss.md) | Verifica si un elemento existe en el conjunto |

## Ejemplo de Uso
```pseudocode
Algoritmo ejemplo_Set
    Definir conjunto Como Texto;
    Definir existe Como Logico;
    conjunto = util_set_new(TYPE_STRING());
    conjunto = util_set_Add(conjunto, "A");
    conjunto = util_set_Add(conjunto, "B");
    conjunto = util_set_Add(conjunto, "A");
    existe = util_set_Containss(conjunto, "A");
    Escribir existe;
    existe = util_set_Containss(conjunto, "C");
    Escribir existe;
    conjunto = util_set_Delete(conjunto, "A");
FinAlgoritmo
```
