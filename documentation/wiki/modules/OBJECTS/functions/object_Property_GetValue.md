# object_Property_GetValue

**Módulo:** [OBJECTS](../OBJECTS.md)

## Descripción
Obtiene el valor de una propiedad, con soporte para propiedades anidadas usando separador ".".

## Sintaxis
```
Funcion element_Result <- object_Property_GetValue(struct_Object, property_name)
```

## Parámetros
- `struct_Object`: Objeto
- `property_name`: Nombre de la propiedad (soporta notación punto para subpropiedades)

## Retorna
Valor de la propiedad, tipado según su tipo.
