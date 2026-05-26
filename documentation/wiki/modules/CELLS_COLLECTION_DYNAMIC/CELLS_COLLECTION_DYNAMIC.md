# CELLS_COLLECTION_DYNAMIC

**Código:** #CCD
**Prefijo:** `cellsCollection_Dynamic_`
**Estado:** [+] Stable

## Descripción
Extensión de CELLS_COLLECTION que permite redimensionar dinámicamente la longitud de celda de una colección. Cuando se añade un elemento que excede el tamaño de celda actual, la estructura se expande automáticamente (`ensureCapacity` → `reSize` → `applyPadding`). También permite reducir el tamaño (`applyCropping`) para acortar celdas existentes. Incluye funciones para añadir elementos (con redimensión automática) y obtener celdas por índice con tipado dinámico.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`cellsCollection_Dynamic_ensureCapacity()`](functions/cellsCollection_Dynamic_ensureCapacity.md) | Asegura que la capacidad sea suficiente |
| [`cellsCollection_Dynamic_UpdateLength()`](functions/cellsCollection_Dynamic_UpdateLength.md) | Actualiza la longitud fija de celda |
| [`cellsCollection_Dynamic_getCell()`](functions/cellsCollection_Dynamic_getCell.md) | Obtiene un elemento tipado por índice |
| [`cellsCollection_Dynamic_getCell_toType()`](functions/cellsCollection_Dynamic_getCell_toType.md) | Obtiene un elemento al tipo especificado |
| [`cellsCollection_Dynamic_getCell_toString()`](functions/cellsCollection_Dynamic_getCell_toString.md) | Obtiene un elemento como string |
| [`cellsCollection_Dynamic_add()`](functions/cellsCollection_Dynamic_add.md) | Añade un elemento con redimensión dinámica |
| [`cellsCollection_Dynamic_add_byType()`](functions/cellsCollection_Dynamic_add_byType.md) | Añade un elemento tipado con redimensión |
| [`cellsCollection_Dynamic_add_byString()`](functions/cellsCollection_Dynamic_add_byString.md) | Añade un elemento string con redimensión |
| [`cellsCollection_Dynamic_add_byString_force()`](functions/cellsCollection_Dynamic_add_byString_force.md) | Añade string con parámetros precalculados |
| [`cellsCollection_Dynamic_reSize()`](functions/cellsCollection_Dynamic_reSize.md) | Redimensiona toda la colección |
| [`cellsCollection_Dynamic_reSize_inRange()`](functions/cellsCollection_Dynamic_reSize_inRange.md) | Redimensiona en un rango de índices |
| [`cellsCollection_Dynamic_reSize_inRange_force()`](functions/cellsCollection_Dynamic_reSize_inRange_force.md) | Redimensiona con parámetros precalculados |
| [`__private_cellsCollection_Dynamic_applyPadding()`](functions/__private_cellsCollection_Dynamic_applyPadding.md) | Aplica relleno a las celdas |
| [`__private_cellsCollection_Dynamic_applyCropping()`](functions/__private_cellsCollection_Dynamic_applyCropping.md) | Aplica recorte a las celdas |

## Ejemplo de Uso

```pseudocode
Proceso Ejemplo_Dynamic
    Definir cells, elemento Como Texto;
    Definir capacidad, longitud_celda Como Entero;
    
    cells = ""; // Colección inicial
    capacidad = 10;
    longitud_celda = 4;
    
    // Asegurar capacidad para un elemento de 10 caracteres
    cells = cellsCollection_Dynamic_ensureCapacity(cells, longitud_celda, capacidad);
    
    // Redimensionar todas las celdas a una nueva longitud
    cells = cellsCollection_Dynamic_reSize(cells, 8);
    
    // Añadir un elemento (redimensiona automáticamente si es necesario)
    cells = cellsCollection_Dynamic_add(cells, "Ejemplo");
    
    // Leer un elemento por índice
    elemento = cellsCollection_Dynamic_getCell_toString(cells, 0);
FinProceso
```

