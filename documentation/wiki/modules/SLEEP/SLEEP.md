# SLEEP

**Código:** #SLP
**Prefijo:** `sleep_`
**Estado:** [+] Stable

## Descripción

Módulo de control de pausas y animaciones temporales basado en `Esperar Milisegundos`. Permite ejecutar esperas en milisegundos (`sleep`) o segundos (`sleep_Second`), combinarlas con limpieza de pantalla (`sleep_And_Clear`, `sleep_Second_And_Clear`), mostrar mensajes informativos durante las pausas (`sleep_message`, `sleep_if_message`), y ejecutar animaciones de carga circulares (`sleep_CircleLoad`) o completamente personalizadas con secuencia de caracteres, velocidad, padding y limpieza opcional (`sleep_Animation`).

## Funciones

| Función | Descripción |
|---------|-------------|
| [`sleep()`](functions/sleep.md) | Pausa la ejecución por milisegundos |
| [`sleep_And_Clear()`](functions/sleep_And_Clear.md) | Pausa y luego limpia la consola |
| [`sleep_Second_And_Clear()`](functions/sleep_Second_And_Clear.md) | Pausa en segundos y limpia consola |
| [`sleep_Second()`](functions/sleep_Second.md) | Pausa la ejecución por segundos |
| [`sleep_if_message()`](functions/sleep_if_message.md) | Pausa condicionalmente con mensaje |
| [`sleep_message()`](functions/sleep_message.md) | Pausa con mensaje informativo |
| [`sleep_CircleLoad()`](functions/sleep_CircleLoad.md) | Animación circular de carga |
| [`sleep_Animation()`](functions/sleep_Animation.md) | Controlador de animaciones personalizadas |

## Ejemplo de Uso

```pseudocode
Algoritmo Ejemplo_SLEEP
    Definir i Como Numero;

    Escribir "Esperando 1 segundo...";
    sleep_Second(1);

    Escribir "Esperando 500 milisegundos...";
    sleep(500);

    Escribir "Animacion de carga circular:";
    sleep_CircleLoad(3);

    sleep_message(1, "Pausa con mensaje informativo");

    Escribir "Listo, continuando ejecucion.";
FinAlgoritmo
```
