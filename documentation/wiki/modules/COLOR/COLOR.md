# COLOR

**Código:** #COL
**Prefijo:** `color_` / `COLOR_`
**Estado:** [+] Stable

## Descripción

Provides ANSI terminal color and style utilities. Includes predefined colors (TRANSPARENT, RED, GREEN, YELLOW, BLUE, MAGENTA, CYAN, WHITE), text coloring functions, bold/plain styles, multi-color text generation, dark mode, and color/style detection in strings.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`COLOR_TRANSPARENT()`](functions/COLOR_TRANSPARENT.md) | Returns the ANSI code for transparent/default |
| [`COLOR_RED()`](functions/COLOR_RED.md) | Returns the ANSI code for red |
| [`COLOR_GREEN()`](functions/COLOR_GREEN.md) | Returns the ANSI code for green |
| [`COLOR_YELLOW()`](functions/COLOR_YELLOW.md) | Returns the ANSI code for yellow |
| [`COLOR_BLUE()`](functions/COLOR_BLUE.md) | Returns the ANSI code for blue |
| [`COLOR_MAGENTA()`](functions/COLOR_MAGENTA.md) | Returns the ANSI code for magenta |
| [`COLOR_CYAN()`](functions/COLOR_CYAN.md) | Returns the ANSI code for cyan |
| [`COLOR_WHITE()`](functions/COLOR_WHITE.md) | Returns the ANSI code for white |
| [`COLOR_getcolor_forIndex()`](functions/COLOR_getcolor_forIndex.md) | Gets ANSI color code by index (0-7) |
| [`__private_color_getcolor_or_style_forIndex()`](functions/__private_color_getcolor_or_style_forIndex.md) | Internal: builds ANSI escape sequence |
| [`COLOR_STYLE_BOLD()`](functions/COLOR_STYLE_BOLD.md) | Returns the ANSI code for bold style |
| [`COLOR_STYLE_PLAIN()`](functions/COLOR_STYLE_PLAIN.md) | Returns the ANSI code for plain style |
| [`remove_Colors()`](functions/remove_Colors.md) | Placeholder for color removal |
| [`color_setColorText()`](functions/color_setColorText.md) | Wraps text with a color ANSI code |
| [`color_setColorText_brakelines()`](functions/color_setColorText_brakelines.md) | Wraps text with color between newline separators |
| [`color_setColorText_multiColor()`](functions/color_setColorText_multiColor.md) | Applies cycling colors to each character |
| [`color_Darked()`](functions/color_Darked.md) | Applies dark style then a color to text |
| [`color_Normal()`](functions/color_Normal.md) | Applies dark (normal) style to text |
| [`color_text_hasColor()`](functions/color_text_hasColor.md) | Checks if text contains a color code |
| [`color_text_hasStyle()`](functions/color_text_hasStyle.md) | Checks if text contains a style code |
| [`color_text_hasColor_or_Style()`](functions/color_text_hasColor_or_Style.md) | Checks if text contains color or style |
| [`__private_color_text_hasStyle_or_Color()`](functions/__private_color_text_hasStyle_or_Color.md) | Internal: checks for escape character presence |
