# managerData_modify

**Módulo:** [MANAGER_DATA](../MANAGER_DATA.md)

## Descripción

Modifica un elemento en datos secuenciales empaquetados, actualizando tanto los datos como las longitudes.

## Sintaxis

```pseudocode
Funcion sequential_package <- managerData_modify(sequential_data, sequential_lengths, index_modify, value_string, isStorage)
```

## Parámetros

- `sequential_data`: Bloque de datos secuenciales
- `sequential_lengths`: String con longitudes de cada elemento
- `index_modify`: Índice del elemento a modificar
- `value_string`: Nuevo valor (string_NULL para eliminar)
- `isStorage`: Modo de empaquetado (verdadero = datos+longitudes, falso = longitudes+datos)

## Retorna

Paquete con datos y longitudes actualizados.
