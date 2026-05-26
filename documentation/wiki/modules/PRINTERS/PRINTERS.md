# PRINTERS

**Código:** #PRN
**Prefijo:** `print_` / `println_`
**Estado:** [+] Stable

## Descripción

Módulo de salida de texto con formato para la consola. Proporciona funciones para imprimir texto plano (`print`, `println`), impresión dividida por separadores (`print_byseparator`, `println_bySeparator`), animaciones progresivas de escritura carácter por carácter (`print_progress`, `print_progress_with_speed`), efectos de "disparo" que imprimen múltiples líneas rápidamente (`print_shoot`, `println_shoot`), impresión de arreglos línea por línea con o sin color (`println_array`, `println_array_color`), repetición de texto (`print_Repeat`, `println_Repeat`), salto de línea (`break_Line`) y limpieza de consola (`hide_Text`).

## Funciones

| Función | Descripción |
|---------|-------------|
| [`print()`](functions/print.md) | Imprime texto sin salto de línea |
| [`println()`](functions/println.md) | Imprime texto con salto de línea |
| [`print_byseparator()`](functions/print_byseparator.md) | Imprime texto separándolo por un delimitador |
| [`println_bySeparator()`](functions/println_bySeparator.md) | Imprime texto con separador y salto de línea |
| [`__private_Print_Split()`](functions/__private_Print_Split.md) | Divide e imprime texto por separador |
| [`println_progress()`](functions/println_progress.md) | Imprime texto con animación progresiva |
| [`print_progress()`](functions/print_progress.md) | Imprime texto con animación progresiva |
| [`print_progress_Simple()`](functions/print_progress_Simple.md) | Imprime texto progresivo simple |
| [`print_progress_with_speed()`](functions/print_progress_with_speed.md) | Imprime progresivo con velocidad personalizada |
| [`print_progress_with_speed_Simple()`](functions/print_progress_with_speed_Simple.md) | Imprime progresivo simple con velocidad |
| [`print_shoot()`](functions/print_shoot.md) | Imprime texto con efecto de disparo |
| [`println_shoot()`](functions/println_shoot.md) | Imprime texto con salto y efecto de disparo |
| [`print_shoot_clear()`](functions/print_shoot_clear.md) | Imprime con efecto de disparo limpiando consola |
| [`println_shoot_clear()`](functions/println_shoot_clear.md) | Imprime con salto, disparo y limpieza |
| [`__private_internal_printer_formater_shoot()`](functions/__private_internal_printer_formater_shoot.md) | Formateador interno de efecto disparo |
| [`println_array()`](functions/println_array.md) | Imprime un arreglo línea por línea |
| [`print_array()`](functions/print_array.md) | Imprime un arreglo en línea continua |
| [`println_array_color()`](functions/println_array_color.md) | Imprime arreglo coloreado línea por línea |
| [`print_array_color()`](functions/print_array_color.md) | Imprime arreglo coloreado en línea continua |
| [`print_Repeat()`](functions/print_Repeat.md) | Repite un texto varias veces |
| [`println_Repeat()`](functions/println_Repeat.md) | Repite un texto con salto varias veces |
| [`break_Line()`](functions/break_Line.md) | Imprime un salto de línea |
| [`hide_Text()`](functions/hide_Text.md) | Limpia la consola |

## Ejemplo de Uso

```pseudocode
Algoritmo Ejemplo_PRINTERS
    Definir mensaje, lista, i Como Numero;
    Dimension lista[3];

    lista[0] = 10;
    lista[1] = 20;
    lista[2] = 30;

    println("Imprimiendo arreglo:");
    println_array(lista, 3);

    break_Line();

    println("Repitiendo texto:");
    print_Repeat("-", 10);
    Escribir "";

    println("Linea 1");
    println("Linea 2");
    println("Linea 3");

    println("Texto con progreso:");
    print_progress("Hola");
FinAlgoritmo
```
