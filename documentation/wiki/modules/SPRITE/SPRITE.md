# SPRITE

**Código:** #SPR
**Prefijo:** `sprite_`
**Estado:** [+] Stable

## Descripción

Módulo para la gestión y manipulación de sprites basados en cadenas de texto. Un SpriteString es una colección lineal que almacena líneas de texto como datos secuenciales, con la primera línea (índice 0) reservada para el ancho máximo. Permite crear sprites vacíos con `spriteString_new`, añadir líneas con `spriteString_addLine`, y obtener dimensiones (alto con `spriteString_getHeight`, líneas totales con `spriteString_GetSize`). Incluye la función `SpriteString_toCanvas_Size` para renderizar el sprite en un canvas, y constantes de efectos de renderizado (`sprite_EFFECT_NONE`, `sprite_EFFECT_CUTOUT`, `sprite_EFFECT_TRIMMED`, `sprite_EFFECT_FLIP_H`, `sprite_EFFECT_FLIP_V`) que se usan al dibujar el sprite en un canvas.

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

## Ejemplo de Uso

```pseudocode
Funcion main
    Definir sprite, canvas Como Texto;
    Definir Cx, Cy Como Numero;
    Cx = 20; Cy = 6;

    sprite = SpriteString_New();
    sprite = SpriteString_AddLine(sprite, "  ____  ");
    sprite = SpriteString_AddLine(sprite, " / __ \ ");
    sprite = SpriteString_AddLine(sprite, "| |  | |");
    sprite = SpriteString_AddLine(sprite, "| |__| |");
    sprite = SpriteString_AddLine(sprite, " \____/ ");

    canvas = SpriteString_toCanvas_Size(sprite, Cx, Cy);
    canvas_Display(canvas, Cx, Cy);
FinFuncion
```
