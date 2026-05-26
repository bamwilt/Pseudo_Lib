# TUI

**Código:** #TUI
**Prefijo:** `tui_`
**Estado:** [+] Stable

## Descripción

Módulo de interfaz de usuario textual (TUI) que permite crear ventanas con componentes como botones, etiquetas, reglas, paneles y sprites. Proporciona manejo de entradas del usuario y almacenamiento de componentes. Soporta renderizado a canvas con colores.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`tui_new()`](functions/tui_new.md) | Crea una nueva TUI por defecto |
| [`tui_new_withSize(Wx, Wy)`](functions/tui_new_withSize.md) | Crea TUI con tamaño |
| [`tui_new_withSizeTitle(Wx, Wy, title)`](functions/tui_new_withSizeTitle.md) | TUI con tamaño y título |
| [`tui_new_withConfig(Wx, Wy, title, color)`](functions/tui_new_withConfig.md) | TUI con configuración completa |
| [`tui_display(tui)`](functions/tui_display.md) | Muestra la interfaz TUI |
| [`tui_setSize(tui, Wx, Wy)`](functions/tui_setSize.md) | Establece tamaño |
| [`tui_setTitle(tui, title)`](functions/tui_setTitle.md) | Establece título |
| [`tui_setColor(tui, color)`](functions/tui_setColor.md) | Establece color |
| [`tui_getTitle(tui)`](functions/tui_getTitle.md) | Obtiene título |
| [`tui_getSize(tui)`](functions/tui_getSize.md) | Obtiene tamaño |
| [`tui_getColor(tui)`](functions/tui_getColor.md) | Obtiene color |
| [`tui_getInput(tui)`](functions/tui_getInput.md) | Obtiene colección de inputs |
| [`tui_getStore(tui)`](functions/tui_getStore.md) | Obtiene almacén de componentes |
| [`tui_getStore_Tcomponent(tui, name)`](functions/tui_getStore_Tcomponent.md) | Obtiene componente del store |
| [`tui_getInputOptions(tui)`](functions/tui_getInputOptions.md) | Obtiene opciones de input |
| [`tui_GetUser_Input(tui, TYPE)`](functions/tui_GetUser_Input.md) | Solicita input al usuario |
| [`tui_GetUser_Input_message(tui, msg, TYPE)`](functions/tui_GetUser_Input_message.md) | Input con mensaje |
| [`tui_input_add(tui, input)`](functions/tui_input_add.md) | Añade opción de input |
| [`tui_store_addTComponent(tui, name, tcomp)`](functions/tui_store_addTComponent.md) | Añade componente al store |
| [`tui_store_addTComponent_force(tui, store, name, tcomp)`](functions/tui_store_addTComponent_force.md) | Añade componente forzado |
| [`tui_store_addTComponent_input(tui, name, tcomp)`](functions/tui_store_addTComponent_input.md) | Añade componente con input |
| [`tui_addTComponent(tui, name, tcomp)`](functions/tui_addTComponent.md) | Añade componente (autodetecta input) |
| [`tui_addTComponent_newButton(tui, name, text, input, x, y)`](functions/tui_addTComponent_newButton.md) | Añade botón nuevo |
| [`tui_addTComponent_newLabel(tui, name, text, x, y)`](functions/tui_addTComponent_newLabel.md) | Añade etiqueta nueva |
| [`tui_addTComponent_newHorizontalRuler(tui, name, x, y, val)`](functions/tui_addTComponent_newHorizontalRuler.md) | Añade regla horizontal |
| [`tui_addTComponent_newVerticalRuler(tui, name, x, y, val)`](functions/tui_addTComponent_newVerticalRuler.md) | Añade regla vertical |
| [`tui_addTComponent_newPanel(tui, name, x0, y0, x1, y1)`](functions/tui_addTComponent_newPanel.md) | Añade panel |
| [`tui_addTComponent_newSpriteString(tui, name, sprite, effect, x, y)`](functions/tui_addTComponent_newSpriteString.md) | Añade sprite |
| [`tui_ToCanvas(tui)`](functions/tui_ToCanvas.md) | Convierte TUI a canvas |
| [`tui_store_deleteTComponent(tui, name)`](functions/tui_store_deleteTComponent.md) | Elimina componente del store |
| [`tui_input_delete(tui, input)`](functions/tui_input_delete.md) | Elimina opción de input |
| [`tui_deleteTcomponent(tui, name)`](functions/tui_deleteTcomponent.md) | Elimina componente (con input) |
| [`tui_Input_Exist(tui, input)`](functions/tui_Input_Exist.md) | Verifica si input existe |
| [`tui_IsInterface_Valid(tui)`](functions/tui_IsInterface_Valid.md) | Valida si es TUI |
| [`tui_ParsePointXY_ToString(x, y)`](functions/tui_ParsePointXY_ToString.md) | Convierte coordenadas a string |
| [`tui_ParseTwoPointsXY_ToString(x0, y0, x1, y1)`](functions/tui_ParseTwoPointsXY_ToString.md) | Convierte dos puntos a string |
| [`tui_TYPE_TFRAME()`](functions/tui_TYPE_TFRAME.md) | Constante de tipo TUI frame |
| [`tui_TYPE_TSTORE()`](functions/tui_TYPE_TSTORE.md) | Constante de tipo Store |
| [`tui_TYPE_TINPUT()`](functions/tui_TYPE_TINPUT.md) | Constante de tipo Input |
| [`tui_TYPE_TCOMPONENT()`](functions/tui_TYPE_TCOMPONENT.md) | Constante de tipo TComponent |
