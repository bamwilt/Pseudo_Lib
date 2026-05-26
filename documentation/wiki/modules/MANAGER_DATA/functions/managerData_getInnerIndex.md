# managerData_getInnerIndex

**Módulo:** [MANAGER_DATA](../MANAGER_DATA.md)

## Descripción

Busca el índice interno (posición) de un string dentro de datos secuenciales comparando valores.

## Sintaxis

```pseudocode
Funcion inner_IdData <- managerData_getInnerIndex(sequential_data, sequential_lengths, max_NumComparations, data_string)
```

## Parámetros

- `sequential_data`: Bloque de datos secuenciales
- `sequential_lengths`: Longitudes de cada elemento
- `max_NumComparations`: Número máximo de comparaciones
- `data_string`: String a buscar

## Retorna

Índice interno del string encontrado, o number_NULL si no se encuentra.
