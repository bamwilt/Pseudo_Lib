# TCOMPONENT

**Código:** #TCO
**Prefijo:** `tComponent_`
**Estado:** [+] Stable

## Descripción

Módulo de componentes TUI que define la estructura base para elementos de interfaz. Cada TComponent es un storageCellsCollection con un nombre simple (que identifica su tipo: botón, etiqueta, regla, panel o sprite) y propiedades como posición, texto, valor e input. Proporciona constructores específicos (`tComponent_newButton`, `tComponent_newLabel`, `tComponent_newHorizontalRuler`, `tComponent_newVerticalRuler`, `tComponent_newPanel`), getters y setters para cada propiedad (`tComponent_getTProperty_position/text/value/input`, `tComponent_setTProperty_position/text/value/input`), y funciones para añadir propiedades adicionales (`tComponent_addTProperty`, `tComponent_addTPropertyText`, `tComponent_addTPropertyInput`, `tComponent_addTPropertyValue`).

## Funciones

| Función | Descripción |
|---------|-------------|
| [`tComponent_new(simple_name, x0, y0)`](functions/tComponent_new.md) | Crea un nuevo TComponent |
| [`tComponent_isTcomponent(interface)`](functions/tComponent_isTcomponent.md) | Valida si es TComponent |
| [`tComponent_matchSimpleName(tcomp, name)`](functions/tComponent_matchSimpleName.md) | Compara nombre simple |
| [`tComponent_HasInput(tcomp)`](functions/tComponent_HasInput.md) | Verifica si tiene input |
| [`tComponent_getTProperty_position(tcomp)`](functions/tComponent_getTProperty_position.md) | Obtiene posición |
| [`tComponent_getTProperty_simpleName(tcomp)`](functions/tComponent_getTProperty_simpleName.md) | Obtiene nombre simple |
| [`tComponent_getTProperty_value(tcomp)`](functions/tComponent_getTProperty_value.md) | Obtiene valor |
| [`tComponent_getTProperty_input(tcomp)`](functions/tComponent_getTProperty_input.md) | Obtiene input |
| [`tComponent_getTProperty_text(tcomp)`](functions/tComponent_getTProperty_text.md) | Obtiene texto |
| [`tComponent_getTProperty(tcomp, type)`](functions/tComponent_getTProperty.md) | Obtiene propiedad genérica |
| [`tComponent_setTProperty(tcomp, prop, val)`](functions/tComponent_setTProperty.md) | Establece propiedad genérica |
| [`tComponent_setTProperty_text(tcomp, val)`](functions/tComponent_setTProperty_text.md) | Establece texto |
| [`tComponent_setTProperty_input(tcomp, val)`](functions/tComponent_setTProperty_input.md) | Establece input |
| [`tComponent_setTProperty_value_ByString(tcomp, val)`](functions/tComponent_setTProperty_value_ByString.md) | Establece valor (string) |
| [`tComponent_setTProperty_value(tcomp, val, TYPE)`](functions/tComponent_setTProperty_value.md) | Establece valor con tipo |
| [`tComponent_setTProperty_position(tcomp, x, y)`](functions/tComponent_setTProperty_position.md) | Establece posición |
| [`tComponent_setTProperty_position_ByString(tcomp, val)`](functions/tComponent_setTProperty_position_ByString.md) | Posición desde string |
| [`tComponent_setTProperty_position_TwoPoints(tcomp, x0, y0, x1, y1)`](functions/tComponent_setTProperty_position_TwoPoints.md) | Posición dos puntos |
| [`tComponent_newButton(text, input, x, y)`](functions/tComponent_newButton.md) | Crea botón |
| [`tComponent_newLabel(text, x, y)`](functions/tComponent_newLabel.md) | Crea etiqueta |
| [`tComponent_newHorizontalRuler(x, y, width)`](functions/tComponent_newHorizontalRuler.md) | Crea regla horizontal |
| [`tComponent_newVerticalRuler(x, y, height)`](functions/tComponent_newVerticalRuler.md) | Crea regla vertical |
| [`tComponent_newPanel(x0, y0, x1, y1)`](functions/tComponent_newPanel.md) | Crea panel |
| [`tComponent_newSpriteString(sprite, effect, x, y)`](functions/tComponent_newSpriteString.md) | Crea sprite component |
| [`tComponent_addTPropertyInput(tcomp, input)`](functions/tComponent_addTPropertyInput.md) | Añade propiedad input |
| [`tComponent_addTPropertyText(tcomp, text)`](functions/tComponent_addTPropertyText.md) | Añade propiedad texto |
| [`tComponent_addTPropertyValue(tcomp, value)`](functions/tComponent_addTPropertyValue.md) | Añade propiedad valor |
| [`tComponent_addTProperty(tcomp, TProperty, value)`](functions/tComponent_addTProperty.md) | Añade propiedad genérica |
| [`tComponent_TYPE_BUTTON()`](functions/tComponent_TYPE_BUTTON.md) | Constante tipo botón |
| [`tComponent_TYPE_LABEL()`](functions/tComponent_TYPE_LABEL.md) | Constante tipo label |
| [`tComponent_TYPE_HORIZONTAL_RULER()`](functions/tComponent_TYPE_HORIZONTAL_RULER.md) | Constante tipo regla H |
| [`tComponent_TYPE_VERTICAL_RULER()`](functions/tComponent_TYPE_VERTICAL_RULER.md) | Constante tipo regla V |
| [`tComponent_TYPE_PANEL()`](functions/tComponent_TYPE_PANEL.md) | Constante tipo panel |
| [`tComponent_TYPE_SPRITE_STRING()`](functions/tComponent_TYPE_SPRITE_STRING.md) | Constante tipo sprite |
| [`TProperty_position()`](functions/TProperty_position.md) | Constante propiedad posición |
| [`TProperty_text()`](functions/TProperty_text.md) | Constante propiedad texto |
| [`TProperty_value()`](functions/TProperty_value.md) | Constante propiedad valor |
| [`TProperty_input()`](functions/TProperty_input.md) | Constante propiedad input |
| [`TProperty_simpleName()`](functions/TProperty_simpleName.md) | Constante nombre simple |
| [`TProperty_visible()`](functions/TProperty_visible.md) | Constante propiedad visible |
| [`symbol_TComponent()`](functions/symbol_TComponent.md) | Símbolo separador TComponent |

## Ejemplo de Uso

```pseudocode
Funcion main
    Definir btn, lbl Como Texto;

    btn = tComponent_newButton("Aceptar", "btn_input", 5, 3);
    lbl = tComponent_newLabel("Nombre:", 2, 2);

    Escribir tComponent_getTProperty_text(btn);
    Escribir tComponent_getTProperty_position(btn);
    Escribir tComponent_getTProperty_input(btn);
FinFuncion
```
