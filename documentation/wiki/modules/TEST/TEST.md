# TEST

**Código:** #TST
**Prefijo:** `test_`
**Estado:** [+] Stable

## Descripción

Framework de pruebas con puntos de control interactivos, aserciones de igualdad tipadas, contador de pruebas pasadas/falladas y medición de tiempo de ejecución. Las funciones `test_Checkpoint` e `test_Checkpoint_info` pausan la ejecución esperando una tecla; `test_Assert_Equal` y `test_Function_Assert_Equal` verifican igualdad usando el tipo especificado; `test_Passed` actualiza un contador de aciertos/errores; y `Execution_Timer` calcula la duración entre dos marcas de tiempo.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`test_Checkpoint()`](functions/test_Checkpoint.md) | Crea un punto de control en la prueba |
| [`test_Checkpoint_info()`](functions/test_Checkpoint_info.md) | Crea un punto de control con información |
| [`test_Assert_Equal()`](functions/test_Assert_Equal.md) | Verifica que dos valores sean iguales |
| [`test_Function_Assert_Equal()`](functions/test_Function_Assert_Equal.md) | Verifica igualdad con nombre de método |
| [`test_Function_Assert_Equal_returnBoolean()`](functions/test_Function_Assert_Equal_returnBoolean.md) | Retorna resultado booleano de aserción |
| [`test_Passed()`](functions/test_Passed.md) | Cuenta pruebas pasadas |
| [`test_Function_Passed()`](functions/test_Function_Passed.md) | Cuenta pruebas pasadas con nombre de método |
| [`test_Function_Passed_Debug()`](functions/test_Function_Passed_Debug.md) | Muestra depuración de resultados |
| [`Execution_Timer()`](functions/Execution_Timer.md) | Mide tiempo de ejecución |
| [`sandbox_development()`](functions/sandbox_development.md) | Entorno de pruebas de desarrollo |
| [`message_duration()`](functions/message_duration.md) | Muestra mensaje de duración |

## Ejemplo de Uso

```pseudocode
Algoritmo EjemploTest
    Definir tiempo_inicio Como Texto
    tiempo_inicio = localTime_now()
    
    test_Checkpoint(1)
    test_Assert_Equal(2 + 2, 4, TYPE_INT())
    test_Assert_Equal(3.14, 3.14, TYPE_FLOAT())
    
    Definir contador Como Texto
    contador = "0/0"
    contador = test_Passed(2 + 2, 4, TYPE_INT(), contador)
    contador = test_Passed(3 + 1, 5, TYPE_INT(), contador)
    test_Function_Passed_Debug(contador)
    
    message_duration(Execution_Timer(tiempo_inicio, ""))
FinAlgoritmo
```
