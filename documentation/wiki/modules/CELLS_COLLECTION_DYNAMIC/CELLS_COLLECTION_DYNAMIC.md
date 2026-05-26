# CELLS_COLLECTION_DYNAMIC

**Código:** #CCD
**Prefijo:** `cellsCollection_Dynamic_`
**Estado:** [+] Stable

## Descripción
Extensión del módulo CELLS_COLLECTION que permite manejar celdas de longitud dinámica. Cuando un elemento excede el tamaño de celda actual, la estructura se redimensiona automáticamente para acomodar el nuevo dato, ajustando todas las celdas existentes.

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
