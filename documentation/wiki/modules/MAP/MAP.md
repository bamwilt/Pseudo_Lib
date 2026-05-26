# MAP

**Código:** #MAP
**Prefijo:** `util_map_`
**Estado:** [+] Stable

## Descripción
Módulo que implementa un mapa/diccionario construido sobre storageCellsCollection, donde las claves se almacenan como celdas ajustables dinámicamente (con verificación de duplicados mediante setter) y los valores se guardan en un almacenamiento lineal indexado. Proporciona inserción y actualización, obtención de valor por clave, eliminación, verificación de existencia por clave o valor, tamaño e impresión separada de claves y valores.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`util_map_new()`](functions/util_map_new.md) | Crea un nuevo mapa vacío |
| [`util_map_Put()`](functions/util_map_Put.md) | Inserta o actualiza un par clave-valor |
| [`util_map_remove()`](functions/util_map_remove.md) | Elimina un elemento por su clave |
| [`util_map_println_Key()`](functions/util_map_println_Key.md) | Imprime las claves del mapa |
| [`util_map_println_Value()`](functions/util_map_println_Value.md) | Imprime los valores del mapa |
| [`util_map_Get()`](functions/util_map_Get.md) | Obtiene el valor asociado a una clave |
| [`util_map_Size()`](functions/util_map_Size.md) | Obtiene la cantidad de elementos |
| [`util_map_ContainsValue()`](functions/util_map_ContainsValue.md) | Verifica si un valor existe |
| [`util_map_ContainsKey()`](functions/util_map_ContainsKey.md) | Verifica si una clave existe |

## Ejemplo de Uso
```pseudocode
Algoritmo ejemplo_Map
    Definir mapa, contenido Como Texto;
    Definir existe Como Logico;
    Definir tamano Como Numero;
    mapa = util_map_new(TYPE_STRING(), TYPE_STRING());
    mapa = util_map_Put(mapa, "notas.txt", "contenido del archivo");
    mapa = util_map_Put(mapa, "config.txt", "version 1.0");
    contenido = util_map_Get(mapa, "notas.txt");
    Escribir contenido;
    existe = util_map_ContainsKey(mapa, "config.txt");
    Escribir existe;
    tamano = util_map_Size(mapa);
    Escribir tamano;
    mapa = util_map_remove(mapa, "notas.txt");
    Escribir util_map_Size(mapa);
FinAlgoritmo
```
