# OBJECTS

**Código:** #OBJ
**Prefijo:** `object_`
**Estado:** [+] Stable

## Descripción

Módulo que implementa un sistema de objetos con propiedades tipadas basado en cadenas de texto. Cada objeto se almacena como una estructura lineal con un nombre, un área de propiedades (nombre=tipo) y un área de datos secuenciales. Permite crear objetos (`object_new`), agregar/obtener/modificar/eliminar propiedades con verificación de tipo, herencia entre objetos (`object_InheritsFrom` que copia propiedades de un objeto a otro) y operaciones de comparación/eliminación de propiedades comunes. Soporta propiedades anidadas mediante el separador `.` (por ejemplo, `objeto.propiedad`).

## Funciones

| Función | Descripción |
|---------|-------------|
| [`object_Empty()`](functions/object_Empty.md) | Crea un objeto vacío de un tipo |
| [`object_ToString()`](functions/object_ToString.md) | Convierte un objeto a string validando tipo |
| [`object_new()`](functions/object_new.md) | Crea un nuevo objeto |
| [`object_Property_Add()`](functions/object_Property_Add.md) | Agrega una propiedad sin valor inicial |
| [`object_Property_Add_GiveValue()`](functions/object_Property_Add_GiveValue.md) | Agrega una propiedad con valor inicial |
| [`object_Property_GetValue()`](functions/object_Property_GetValue.md) | Obtiene el valor de una propiedad |
| [`object_Property_GetValue_toString()`](functions/object_Property_GetValue_toString.md) | Obtiene el valor de una propiedad como string |
| [`object_Property_SetValue()`](functions/object_Property_SetValue.md) | Establece el valor de una propiedad |
| [`object_Property_SetValue_ToSeparator()`](functions/object_Property_SetValue_ToSeparator.md) | Establece valor con separador personalizado |
| [`object_Property_Delete()`](functions/object_Property_Delete.md) | Elimina una propiedad del objeto |
| [`object_InheritsFrom()`](functions/object_InheritsFrom.md) | Agrega propiedades heredadas de otro objeto |
| [`object_Delete_CommonPropertiesFrom()`](functions/object_Delete_CommonPropertiesFrom.md) | Elimina propiedades comunes con otro objeto |
| [`object_isType()`](functions/object_isType.md) | Verifica si un objeto es de un tipo |
| [`object_getName()`](functions/object_getName.md) | Obtiene el nombre/tipo del objeto |
| [`object_Property_Exist()`](functions/object_Property_Exist.md) | Verifica si una propiedad existe |
| [`object_Property_GetIndex()`](functions/object_Property_GetIndex.md) | Obtiene el índice de una propiedad |
| [`object_Property_GetType()`](functions/object_Property_GetType.md) | Obtiene el tipo de una propiedad |
| [`object_Property_GetInnerIndex()`](functions/object_Property_GetInnerIndex.md) | Obtiene el índice interno de una propiedad |
| [`object_getAreaProperty()`](functions/object_getAreaProperty.md) | Obtiene el área de propiedades del objeto |

## Ejemplo de Uso

```pseudocode
Funcion New_Persona
    Definir persona Como Texto;
    persona = Object_newObject("persona");
    persona = Object_add_property(persona, "nombre", TYPE_STRING());
    persona = Object_add_property(persona, "edad", TYPE_INT());
FinFuncion

Funcion New_Empleado
    Definir empleado, persona Como Texto;
    empleado = Object_newObject("empleado");
    persona = New_Persona();
    empleado = Object_InheritsFrom(empleado, persona);
    empleado = Object_add_property(empleado, "salario", TYPE_FLOAT());
FinFuncion

Funcion main
    Definir emp, persona Como Texto;
    persona = New_Persona();
    persona = Object_setValue_property(persona, "nombre", "Maria");
    persona = Object_setValue_property(persona, "edad", 25);

    emp = New_Empleado();
    emp = Object_setValue_property(emp, "nombre", "Juan");
    emp = Object_setValue_property(emp, "edad", 30);
    emp = Object_setValue_property(emp, "salario", 1500.50);

    Escribir Object_getValue_property(emp, "nombre");
    Escribir Object_getValue_property(emp, "edad");
    Escribir Object_getValue_property(emp, "salario");
FinFuncion
```
