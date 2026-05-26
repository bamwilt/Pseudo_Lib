# __private_color_text_hasStyle_or_Color

**Módulo:** [COLOR](..\COLOR.md)

## Descripción

Internal helper that checks whether a text string contains the escape character `\x1b[`, indicating an ANSI escape sequence.

## Sintaxis
```pseudocode
Funcion boolean <- __private_color_text_hasStyle_or_Color(text)
```

## Parámetros
- `text`: The text to inspect

## Retorna
`true` if the escape character is found, `false` otherwise.
