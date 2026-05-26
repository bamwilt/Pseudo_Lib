# SPRITE

**Código:** #SPR
**Prefijo:** `sprite_`
**Estado:** [+] Stable

## Descripción

Módulo para la gestión y manipulación de sprites en formato string. Permite crear sprites, añadir líneas, modificar caracteres individuales, y obtener dimensiones. Incluye efectos de renderizado como recorte (cutout), recorte por símbolo (trimmed), y volteo horizontal/vertical.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`spriteString_new()`](functions/spriteString_new.md) | Crea un nuevo sprite vacío |
| [`spriteString_addLine(sprite, line)`](functions/spriteString_addLine.md) | Añade una línea al sprite |
| [`spriteString_setLine(sprite, index, line)`](functions/spriteString_setLine.md) | Modifica una línea del sprite |
| [`spriteString_getHeight(sprite)`](functions/spriteString_getHeight.md) | Obtiene altura del sprite |
| [`spriteString_getWidth(sprite)`](functions/spriteString_getWidth.md) | Obtiene ancho máximo del sprite |
| [`spriteString_getSize(sprite)`](functions/spriteString_getSize.md) | Obtiene número de líneas |
| [`spriteString_num_indexValidate(sprite, index)`](functions/spriteString_num_indexValidate.md) | Valida índice de línea |
| [`spriteString_UpdateMaxWidth(sprite, line)`](functions/spriteString_UpdateMaxWidth.md) | Actualiza ancho máximo |
| [`SpriteString_toCanvas_Size(sprite, Cx, Cy)`](functions/SpriteString_toCanvas_Size.md) | Convierte sprite a canvas |
| [`sprite_EFFECT_NONE()`](functions/sprite_EFFECT_NONE.md) | Efecto: directo |
| [`sprite_EFFECT_CUTOUT()`](functions/sprite_EFFECT_CUTOUT.md) | Efecto: recorte |
| [`sprite_EFFECT_TRIMMED()`](functions/sprite_EFFECT_TRIMMED.md) | Efecto: recorte por símbolo |
| [`sprite_EFFECT_FLIP_H()`](functions/sprite_EFFECT_FLIP_H.md) | Efecto: volteo horizontal |
| [`sprite_EFFECT_FLIP_V()`](functions/sprite_EFFECT_FLIP_V.md) | Efecto: volteo vertical |
| [`pixel_clear()`](functions/pixel_clear.md) | Píxel transparente |
| [`get_pixel_withIndex(index)`](functions/get_pixel_withIndex.md) | Obtiene píxel por índice |
