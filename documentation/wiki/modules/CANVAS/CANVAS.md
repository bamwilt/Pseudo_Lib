# CANVAS

**Código:** #CAN
**Prefijo:** `canvas_`
**Estado:** [+] Stable

## Descripción

Módulo de creación y manipulación de canvases (lienzos) de texto para renderizar gráficos ASCII en la terminal. Proporciona funciones para dibujar puntos, líneas, rectángulos, elipses, triángulos, sprites, botones, paneles y componentes TUI, además de operaciones de redimensionado, desplazamiento y extracción de regiones. También incluye generación de códigos QR.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`pixel_Qr_plain()`](functions/pixel_Qr_plain.md) | Retorna el píxel QR sólido (`  `) |
| [`pixel_Qr_clear()`](functions/pixel_Qr_clear.md) | Retorna el píxel QR transparente (`??`) |
| [`canvas_getSizeVersionQr(version)`](functions/canvas_getSizeVersionQr.md) | Calcula el tamaño de un canvas QR según versión |
| [`Qr_getBase(version, outer_margin)`](functions/Qr_getBase.md) | Genera la base de un QR con patrones |
| [`Qr_drawFinderPatterns(canvas, ...)`](functions/Qr_drawFinderPatterns.md) | Dibuja los patrones de búsqueda QR |
| [`Qr_drawTimingPatterns(canvas, ...)`](functions/Qr_drawTimingPatterns.md) | Dibuja los patrones de sincronización QR |
| [`canvas_new(CWx, CWy)`](functions/canvas_new.md) | Crea un canvas vacío |
| [`canvas_new_WithPixel(CWx, CWy, pixel)`](functions/canvas_new_WithPixel.md) | Crea canvas con un píxel de fondo |
| [`canvas_display(canvas, CWx, CWy)`](functions/canvas_display.md) | Muestra un canvas en pantalla |
| [`canvas_display_MonoColor(canvas, CWx, CWy, color)`](functions/canvas_display_MonoColor.md) | Muestra canvas en un color |
| [`canvas_displayWindow(canvas, Cx, Cy, title)`](functions/canvas_displayWindow.md) | Muestra canvas en ventana |
| [`canvas_displayWindow_monoColor(canvas, Cx, Cy, title, color)`](functions/canvas_displayWindow_monoColor.md) | Ventana con color de fondo |
| [`canvas_displayWindow_color(canvas, Cx, Cy, title, c1, c2)`](functions/canvas_displayWindow_color.md) | Ventana con colores personalizados |
| [`canvas_toSpriteString(canvas, Cx, Cy)`](functions/canvas_toSpriteString.md) | Convierte canvas a sprite |
| [`canvas_extractRegion(canvas, Cx, Cy, x0, y0, x1, y1)`](functions/canvas_extractRegion.md) | Extrae una región del canvas |
| [`canvas_Row_WithText_toBorders(text, repeats, border)`](functions/canvas_Row_WithText_toBorders.md) | Crea fila con bordes |
| [`canvas_Row_WithText(text, repeats)`](functions/canvas_Row_WithText.md) | Crea fila repetida |
| [`canvas_getIndex(x0, y0, CWx)`](functions/canvas_getIndex.md) | Obtiene índice lineal en canvas |
| [`canvas_addColumn(canvas, CWx, CWy)`](functions/canvas_addColumn.md) | Añade columna al final |
| [`canvas_addColumn_atStart(canvas, CWx, CWy)`](functions/canvas_addColumn_atStart.md) | Añade columna al inicio |
| [`canvas_addColumn_withPixel(canvas, CWx, CWy, pixel)`](functions/canvas_addColumn_withPixel.md) | Añade columna con píxel |
| [`canvas_addColumn_atStart_withPixel(canvas, CWx, CWy, pixel)`](functions/canvas_addColumn_atStart_withPixel.md) | Añade columna al inicio con píxel |
| [`canvas_addColumn_ofIndex(canvas, CWx, CWy, index)`](functions/canvas_addColumn_ofIndex.md) | Añade columna en índice |
| [`canvas_addColumns(canvas, CWx, CWy, n)`](functions/canvas_addColumns.md) | Añade múltiples columnas |
| [`canvas_addColumns_atStart(canvas, CWx, CWy, n)`](functions/canvas_addColumns_atStart.md) | Añade columnas al inicio |
| [`canvas_addColumns_withPixel(canvas, CWx, CWy, n, pixel)`](functions/canvas_addColumns_withPixel.md) | Columnas con píxel |
| [`canvas_addColumns_atStart_withPixel(canvas, CWx, CWy, n, pixel)`](functions/canvas_addColumns_atStart_withPixel.md) | Columnas al inicio con píxel |
| [`canvas_addColumns_ofIndex(canvas, CWx, CWy, n, index)`](functions/canvas_addColumns_ofIndex.md) | Columnas en índice |
| [`canvas_addColumns_ofIndex_withPixel(canvas, CWx, CWy, n, x, pixel)`](functions/canvas_addColumns_ofIndex_withPixel.md) | Columnas en índice con píxel |
| [`canvas_removeColumn(canvas, CWx, CWy)`](functions/canvas_removeColumn.md) | Elimina columna del final |
| [`canvas_removeColumn_atStart(canvas, CWx, CWy)`](functions/canvas_removeColumn_atStart.md) | Elimina columna del inicio |
| [`canvas_removeColumn_ofIndex(canvas, CWx, CWy, index)`](functions/canvas_removeColumn_ofIndex.md) | Elimina columna en índice |
| [`canvas_removeColumns(canvas, CWx, CWy, n)`](functions/canvas_removeColumns.md) | Elimina múltiples columnas |
| [`canvas_removeColumns_atStart(canvas, CWx, CWy, n)`](functions/canvas_removeColumns_atStart.md) | Elimina columnas del inicio |
| [`canvas_removeColumns_ofIndex(canvas, CWx, CWy, n, index)`](functions/canvas_removeColumns_ofIndex.md) | Elimina columnas en índice |
| [`canvas_removeColumns_count(canvas, CWx, CWy, n, x)`](functions/canvas_removeColumns_count.md) | Elimina columnas desde posición |
| [`canvas_addRow(canvas, CWx, CWy)`](functions/canvas_addRow.md) | Añade fila al final |
| [`canvas_addRow_atStart(canvas, CWx, CWy)`](functions/canvas_addRow_atStart.md) | Añade fila al inicio |
| [`canvas_addRow_withPixel(canvas, CWx, CWy, pixel)`](functions/canvas_addRow_withPixel.md) | Añade fila con píxel |
| [`canvas_addRow_atStart_withPixel(canvas, CWx, CWy, pixel)`](functions/canvas_addRow_atStart_withPixel.md) | Fila al inicio con píxel |
| [`canvas_addRow_ofIndex(canvas, CWx, CWy, index)`](functions/canvas_addRow_ofIndex.md) | Añade fila en índice |
| [`canvas_addRows(canvas, CWx, CWy, n)`](functions/canvas_addRows.md) | Añade múltiples filas |
| [`canvas_addRows_atStart(canvas, CWx, CWy, n)`](functions/canvas_addRows_atStart.md) | Filas al inicio |
| [`canvas_addRows_withPixel(canvas, CWx, CWy, n, pixel)`](functions/canvas_addRows_withPixel.md) | Filas con píxel |
| [`canvas_addRows_atStart_withPixel(canvas, CWx, CWy, n, pixel)`](functions/canvas_addRows_atStart_withPixel.md) | Filas al inicio con píxel |
| [`canvas_addRows_ofIndex(canvas, CWx, CWy, n, index)`](functions/canvas_addRows_ofIndex.md) | Filas en índice |
| [`canvas_addRows_ofIndex_withPixel(canvas, CWx, CWy, n, y, pixel)`](functions/canvas_addRows_ofIndex_withPixel.md) | Filas en índice con píxel |
| [`canvas_removeRow(canvas, CWx, CWy)`](functions/canvas_removeRow.md) | Elimina fila del final |
| [`canvas_removeRow_atStart(canvas, CWx, CWy)`](functions/canvas_removeRow_atStart.md) | Elimina fila del inicio |
| [`canvas_removeRows(canvas, CWx, CWy, n)`](functions/canvas_removeRows.md) | Elimina múltiples filas |
| [`canvas_removeRows_atStart(canvas, CWx, CWy, n)`](functions/canvas_removeRows_atStart.md) | Elimina filas del inicio |
| [`canvas_removeRows_count(canvas, CWx, CWy, n, isTop)`](functions/canvas_removeRows_count.md) | Elimina filas desde extremo |
| [`canvas_moveContent_top(canvas, CWx, CWy)`](functions/canvas_moveContent_top.md) | Desplaza contenido arriba |
| [`canvas_moveContent_bottom(canvas, CWx, CWy)`](functions/canvas_moveContent_bottom.md) | Desplaza contenido abajo |
| [`canvas_moveContent_left(canvas, CWx, CWy)`](functions/canvas_moveContent_left.md) | Desplaza contenido izquierda |
| [`canvas_moveContent_right(canvas, CWx, CWy)`](functions/canvas_moveContent_right.md) | Desplaza contenido derecha |
| [`canvas_moveContent_topLeft(canvas, CWx, CWy)`](functions/canvas_moveContent_topLeft.md) | Desplaza diagonal arriba-izquierda |
| [`canvas_moveContent_topRight(canvas, CWx, CWy)`](functions/canvas_moveContent_topRight.md) | Desplaza diagonal arriba-derecha |
| [`canvas_moveContent_bottomLeft(canvas, CWx, CWy)`](functions/canvas_moveContent_bottomLeft.md) | Desplaza diagonal abajo-izquierda |
| [`canvas_moveContent_bottomRight(canvas, CWx, CWy)`](functions/canvas_moveContent_bottomRight.md) | Desplaza diagonal abajo-derecha |
| [`canvas_DrawPoint(canvas, CWx, CWy, x0, y0)`](functions/canvas_DrawPoint.md) | Dibuja un punto |
| [`canvas_DrawPoint_withPixel(canvas, CWx, CWy, x0, y0, pixel)`](functions/canvas_DrawPoint_withPixel.md) | Dibuja punto con píxel |
| [`canvas_DrawPoint_Normalized(canvas, CWx, CWy, x0, y0)`](functions/canvas_DrawPoint_Normalized.md) | Dibuja punto (normalizado) |
| [`canvas_DrawPoint_withPixel_Normalized(canvas, CWx, CWy, x0, y0, p)`](functions/canvas_DrawPoint_withPixel_Normalized.md) | Punto normalizado con píxel |
| [`canvas_DrawLine(canvas, CWx, CWy, x0, y0, x1, y1)`](functions/canvas_DrawLine.md) | Dibuja línea |
| [`canvas_DrawLine_whitPixel(canvas, CWx, CWy, pixel, x0, y0, x1, y1)`](functions/canvas_DrawLine_whitPixel.md) | Línea con píxel |
| [`canvas_DrawLine_Normalized(canvas, CWx, CWy, x0, y0, x1, y1)`](functions/canvas_DrawLine_Normalized.md) | Línea normalizada |
| [`canvas_DrawLine_Horizontal(canvas, Cx, Cy, x0, y0, width)`](functions/canvas_DrawLine_Horizontal.md) | Línea horizontal |
| [`canvas_DrawLine_Horizontal_withPixel(canvas, Cx, Cy, x0, y0, w, p)`](functions/canvas_DrawLine_Horizontal_withPixel.md) | Línea horizontal con píxel |
| [`canvas_DrawLine_Vertical(canvas, Cx, Cy, x0, y0, height)`](functions/canvas_DrawLine_Vertical.md) | Línea vertical |
| [`canvas_DrawLine_Vertical_withPixel(canvas, Cx, Cy, x0, y0, h, p)`](functions/canvas_DrawLine_Vertical_withPixel.md) | Línea vertical con píxel |
| [`canvas_DrawLine_Horizontal_Full(canvas, Cx, Cy, y0)`](functions/canvas_DrawLine_Horizontal_Full.md) | Línea horizontal completa |
| [`canvas_DrawLine_Vertical_Full(canvas, Cx, Cy, x0)`](functions/canvas_DrawLine_Vertical_Full.md) | Línea vertical completa |
| [`canvas_DrawRectangle(canvas, Cx, Cy, x0, y0, w, h)`](functions/canvas_DrawRectangle.md) | Dibuja rectángulo |
| [`canvas_DrawRectangle_whitPixel(canvas, Cx, Cy, p, x0, y0, w, h)`](functions/canvas_DrawRectangle_whitPixel.md) | Rectángulo con píxel |
| [`canvas_DrawRectangle_whitPixels(canvas, Cx, Cy, pH, pV, x0, y0, w, h)`](functions/canvas_DrawRectangle_whitPixels.md) | Rectángulo con píxeles H/V |
| [`canvas_DrawRectangle_whitPixels_Full(canvas, Cx, Cy, pH, pH1, pV, pV1, ...)`](functions/canvas_DrawRectangle_whitPixels_Full.md) | Rectángulo con 4 píxeles distintos |
| [`canvas_DrawRectangle_Normalized(canvas, Cx, Cy, x0, y0, x1, y1)`](functions/canvas_DrawRectangle_Normalized.md) | Rectángulo normalizado |
| [`canvas_DrawEllipse(canvas, CWx, CWy, x0, y0, rx, ry)`](functions/canvas_DrawEllipse.md) | Dibuja elipse |
| [`canvas_DrawTriangle(canvas, CWx, CWy, x0, y0, x1, y1, x2, y2)`](functions/canvas_DrawTriangle.md) | Dibuja triángulo |
| [`canvas_DrawTriangle_Normalized(canvas, CWx, CWy, x0, y0, x1, y1, x2, y2)`](functions/canvas_DrawTriangle_Normalized.md) | Triángulo normalizado |
| [`canvas_DrawText(canvas, CWx, CWy, text, x0, y0)`](functions/canvas_DrawText.md) | Dibuja texto en canvas |
| [`canvas_DrawText_Normalized(canvas, CWx, CWy, text, x0, y0)`](functions/canvas_DrawText_Normalized.md) | Texto normalizado |
| [`canvas_DrawButton(canvas, Cx, Cy, text, x0, y0)`](functions/canvas_DrawButton.md) | Dibuja botón |
| [`canvas_DrawPanel(canvas, Cx, Cy, x0, y0, width, height)`](functions/canvas_DrawPanel.md) | Dibuja panel |
| [`canvas_DrawRectanglePoint(canvas, Cx, Cy, p, x0, y0, x1, y1)`](functions/canvas_DrawRectanglePoint.md) | Dibuja esquinas de rectángulo |
| [`canvas_drawCanvas(canvas, Cx, Cy, sub, Cx2, Cy2, x0, y0)`](functions/canvas_drawCanvas.md) | Dibuja un canvas sobre otro |
| [`canvas_DrawSpriteString(canvas, Cx, Cy, sprite, x0, y0)`](functions/canvas_DrawSpriteString.md) | Dibuja sprite en canvas |
| [`canvas_DrawspriteString_Cutout(canvas, Cx, Cy, sprite, x0, y0)`](functions/canvas_DrawspriteString_Cutout.md) | Sprite con recorte |
| [`canvas_DrawspriteString_Trimmed(canvas, Cx, Cy, sprite, sym, x0, y0)`](functions/canvas_DrawspriteString_Trimmed.md) | Sprite recortado por símbolo |
| [`canvas_DrawspriteString_Cutout_FlipHorizontal(canvas, ...)`](functions/canvas_DrawspriteString_Cutout_FlipHorizontal.md) | Sprite recortado flip horizontal |
| [`canvas_DrawspriteString_Cutout_FlipVertical(canvas, ...)`](functions/canvas_DrawspriteString_Cutout_FlipVertical.md) | Sprite recortado flip vertical |
| [`Canvas_ApplyRenderEffect(canvas, Cx, Cy, x0, y0, arr, size, sym, effect)`](functions/Canvas_ApplyRenderEffect.md) | Aplica efecto de renderizado |
| [`canvas_DrawSprite_Array(canvas, Cx, Cy, x0, y0, arr, size)`](functions/canvas_DrawSprite_Array.md) | Dibuja sprite desde array |
| [`canvas_Drawsprite_Cutout(canvas, Cx, Cy, x0, y0, arr, size)`](functions/canvas_Drawsprite_Cutout.md) | Sprite array con recorte |
| [`canvas_Drawsprite_Trimmed(canvas, Cx, Cy, x0, y0, arr, size, sym)`](functions/canvas_Drawsprite_Trimmed.md) | Sprite array recortado |
| [`canvas_Drawsprite_Cutout_FlipHorizontal(canvas, Cx, Cy, x0, y0, ...)`](functions/canvas_Drawsprite_Cutout_FlipHorizontal.md) | Sprite array flip H |
| [`canvas_Drawsprite_Cutout_FlipVertical(canvas, Cx, Cy, x0, y0, ...)`](functions/canvas_Drawsprite_Cutout_FlipVertical.md) | Sprite array flip V |
| [`canvas_DrawtComponent_Button(canvas, Cx, Cy, Tbutton)`](functions/canvas_DrawtComponent_Button.md) | Dibuja componente TButton |
| [`canvas_DrawtComponent_Label(canvas, Cx, Cy, Tlabel)`](functions/canvas_DrawtComponent_Label.md) | Dibuja componente TLabel |
| [`canvas_DrawtComponent_HorizontalRuler(canvas, Cx, Cy, THrz)`](functions/canvas_DrawtComponent_HorizontalRuler.md) | Dibuja regla horizontal |
| [`canvas_DrawtComponent_VerticalRuler(canvas, Cx, Cy, TVrt)`](functions/canvas_DrawtComponent_VerticalRuler.md) | Dibuja regla vertical |
| [`canvas_DrawtComponent_Panel(canvas, Cx, Cy, TPanel)`](functions/canvas_DrawtComponent_Panel.md) | Dibuja componente TPanel |
| [`canvas_DrawtComponent_SpriteString(canvas, Cx, Cy, TSprite)`](functions/canvas_DrawtComponent_SpriteString.md) | Dibuja componente TSprite |
| [`canvas_DrawTComponent(canvas, Cx, Cy, Tcomponent)`](functions/canvas_DrawTComponent.md) | Dibuja cualquier TComponent |
| [`canvas_Normalized_ToPixelX(Cx, x)`](functions/canvas_Normalized_ToPixelX.md) | Convierte X normalizado a píxel |
| [`canvas_Normalized_ToPixelY(Cy, y)`](functions/canvas_Normalized_ToPixelY.md) | Convierte Y normalizado a píxel |
| [`canvas_PixelX_ToNoramalized(Cx, x)`](functions/canvas_PixelX_ToNoramalized.md) | Convierte píxel X a normalizado |
| [`canvas_PixelY_ToNoramalized(Cy, y)`](functions/canvas_PixelY_ToNoramalized.md) | Convierte píxel Y a normalizado |
| [`canvas_resize(canvas, CWx, CWy, n_rows, n_cols)`](functions/canvas_resize.md) | Redimensiona canvas |
| [`canvas_resize_atStart(canvas, CWx, CWy, n_rows, n_cols)`](functions/canvas_resize_atStart.md) | Redimensiona desde inicio |
| [`canvas_resize_withPixel(...)`](functions/canvas_resize_withPixel.md) | Redimensiona con píxel |
| [`canvas_resize_atStart_withPixel(...)`](functions/canvas_resize_atStart_withPixel.md) | Redimensiona inicio con píxel |
| [`canvas_resize_expand(canvas, CWx, CWy)`](functions/canvas_resize_expand.md) | Expande canvas 1px |
| [`canvas_resize_expand_atStart(canvas, CWx, CWy)`](functions/canvas_resize_expand_atStart.md) | Expande desde inicio |
| [`canvas_resize_expand_withPixel(...)`](functions/canvas_resize_expand_withPixel.md) | Expande con píxel |
| [`canvas_resize_expand_atStart_withPixel(...)`](functions/canvas_resize_expand_atStart_withPixel.md) | Expande inicio con píxel |
| [`canvas_decrementSize(canvas, CWx, CWy, n_rows, n_cols)`](functions/canvas_decrementSize.md) | Reduce tamaño |
| [`canvas_decrementSize_atStart(canvas, CWx, CWy, n_rows, n_cols)`](functions/canvas_decrementSize_atStart.md) | Reduce desde inicio |
| [`canvas_decrementSizeOne(canvas, CWx, CWy)`](functions/canvas_decrementSizeOne.md) | Reduce en 1px |
| [`canvas_decrementSizeOne_atStart(canvas, CWx, CWy)`](functions/canvas_decrementSizeOne_atStart.md) | Reduce 1px desde inicio |
| [`Qr_getSpritePositionPattern()`](functions/Qr_getSpritePositionPattern.md) | Obtiene sprite de patrón QR |
