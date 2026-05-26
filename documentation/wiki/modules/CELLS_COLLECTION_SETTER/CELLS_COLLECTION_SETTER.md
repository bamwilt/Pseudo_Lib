# CELLS_COLLECTION_SETTER

**Código:** #CCS
**Prefijo:** `cellsCollection_setter_`
**Estado:** [+] Stable

## Descripción
Extensión de CELLS_COLLECTION con comportamiento de conjunto (set) que garantiza la unicidad de elementos. Antes de añadir un elemento, verifica si ya existe mediante búsqueda por string; si existe, omite la inserción. Proporciona eliminación por valor, verificación de pertenencia y búsqueda de índice por contenido, todo con tipado dinámico (int, float, boolean, string) y soporte para búsqueda en rangos específicos.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`cellsCollection_Setter_add()`](functions/cellsCollection_Setter_add.md) | Añade un elemento si no existe |
| [`cellsCollection_Setter_add_byType()`](functions/cellsCollection_Setter_add_byType.md) | Añade un elemento tipado si no existe |
| [`cellsCollection_setter_add_byString()`](functions/cellsCollection_setter_add_byString.md) | Añade un string si no existe |
| [`cellsCollection_setter_delete()`](functions/cellsCollection_setter_delete.md) | Elimina un valor específico |
| [`cellsCollection_setter_delete_byString()`](functions/cellsCollection_setter_delete_byString.md) | Elimina un valor string específico |
| [`cellsCollection_setter_constains()`](functions/cellsCollection_setter_constains.md) | Verifica si un string existe |
| [`cellsCollection_setter_constains_inRange()`](functions/cellsCollection_setter_constains_inRange.md) | Verifica existencia en un rango |
| [`cellsCollection_setter_constains_inRange_force()`](functions/cellsCollection_setter_constains_inRange_force.md) | Verifica existencia con parámetros precalculados |
| [`cellsCollection_setter_getIndex()`](functions/cellsCollection_setter_getIndex.md) | Obtiene el índice de un valor |
| [`cellsCollection_setter_getIndex_byString()`](functions/cellsCollection_setter_getIndex_byString.md) | Obtiene el índice de un string |
| [`cellsCollection_setter_getIndex_byString_inRange()`](functions/cellsCollection_setter_getIndex_byString_inRange.md) | Obtiene el índice en un rango |
| [`cellsCollection_setter_getIndex_byString_inRange_force()`](functions/cellsCollection_setter_getIndex_byString_inRange_force.md) | Obtiene el índice con parámetros precalculados |

## Ejemplo de Uso

```pseudocode
Proceso Ejemplo_Setter
    Definir cells, elemento Como Texto;
    Definir indice Como Entero;
    Definir existe Como Logico;
    
    cells = ""; // Colección inicial
    
    // Añadir elementos (no se permiten duplicados)
    cells = cellsCollection_Setter_add(cells, "Manzana");
    cells = cellsCollection_Setter_add(cells, "Pera");
    cells = cellsCollection_Setter_add(cells, "Manzana"); // Ignorado, ya existe
    
    // Verificar si un elemento existe
    existe = cellsCollection_setter_constains(cells, "Pera");
    
    // Obtener el índice de un elemento por su valor string
    indice = cellsCollection_setter_getIndex_byString(cells, "Manzana");
    
    // Eliminar un elemento por valor
    cells = cellsCollection_setter_delete(cells, "Pera");
FinProceso
```

