# MANAGER_DATA

**Código:** #MDA
**Prefijo:** `managerData_`
**Estado:** [+] Stable

## Descripción

Módulo para la gestión de datos empaquetados en formato secuencial con metadatos de longitudes. Permite modificar elementos por índice en datos secuenciales, obtener elementos individuales como string, buscar índices internos por valor coincidente, separar datos con delimitadores, imprimir datos con decoradores de color, y gestionar celdas de tamaño fijo con limpieza de caracteres de relleno nulos.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`managerData_modify()`](functions/managerData_modify.md) | Modifica un elemento en datos secuenciales |
| [`managerData_getInnerIndex()`](functions/managerData_getInnerIndex.md) | Obtiene el índice interno de un string |
| [`managerData_get_toString()`](functions/managerData_get_toString.md) | Obtiene un elemento como string por índice |
| [`managerData_getSeparateString()`](functions/managerData_getSeparateString.md) | Separa datos secuenciales con un separador |
| [`managerData_printer_color()`](functions/managerData_printer_color.md) | Imprime datos secuenciales con decorador |
| [`managerData_getSeparateString_cells()`](functions/managerData_getSeparateString_cells.md) | Separa celdas de tamaño fijo |
| [`managerData_printer_cells()`](functions/managerData_printer_cells.md) | Imprime celdas de tamaño fijo |
| [`managerData_printer_cells_decorator()`](functions/managerData_printer_cells_decorator.md) | Imprime celdas con decorador |

## Ejemplo de Uso

```pseudocode
Algoritmo Ejemplo_MANAGER_DATA
    Definir datos, longitudes, resultado Como Texto;
    
    // Los datos secuenciales almacenan bloques y sus longitudes en metadata
    // Ejemplo: datos "HolaMundo" con longitudes "4,5"
    // (Hola=4, Mundo=5)
    datos <- "HolaMundo";
    longitudes <- "4,5";
    
    // managerData_get_toString: obtener un elemento por indice
    resultado <- managerData_get_toString(datos, longitudes, 0);
    Escribir "Elemento 0: ", resultado;  // "Hola"
    
    resultado <- managerData_get_toString(datos, longitudes, 1);
    Escribir "Elemento 1: ", resultado;  // "Mundo"
    
    // managerData_modify: modificar un elemento por indice
    // (con isStorage=Falso para empaquetar con metadata)
    resultado <- managerData_modify(datos, longitudes, 0, "HOLA", Falso);
    Escribir "Datos modificados: ", resultado;
    
    // managerData_getSeparateString: separar datos con un delimitador
    resultado <- managerData_getSeparateString(datos, longitudes, "|");
    Escribir "Separados por |: ", resultado;  // "Mundo|Hola"
    
    // managerData_getSeparateString_cells: separar celdas de tamanio fijo
    resultado <- managerData_getSeparateString_cells("ABCDEF", 3, 2);
    Escribir "Celdas separadas: ", resultado;
    
    // managerData_getInnerIndex: buscar indice interno por valor
    Definir indice Como Entero;
    indice <- managerData_getInnerIndex(datos, longitudes, 10, "Mundo");
    Escribir "Indice de 'Mundo': ", indice;
FinAlgoritmo
```
