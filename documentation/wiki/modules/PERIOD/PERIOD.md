# PERIOD

**Código:** #PER
**Prefijo:** `period_`
**Estado:** [+] Stable

## Descripción
Módulo para la representación y manipulación de periodos basados en años, meses y días. A diferencia de Duration, Period trabaja con unidades de calendario (no segundos). Proporciona funciones para crear periodos, obtener sus componentes individuales (año, mes, día), sumar y restar periodos, multiplicar por un escalar, negar, normalizar los meses a rango 0-11, convertir a string en formato "Y:años M:meses D:días", y calcular la diferencia entre dos fechas.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`period_of(year, month, day)`](functions/period_of.md) | Crea un Period a partir de año, mes y día |
| [`period_ofYears(years)`](functions/period_ofYears.md) | Crea un Period solo con años |
| [`period_ofMonths(months)`](functions/period_ofMonths.md) | Crea un Period solo con meses |
| [`period_ofWeeks(weeks)`](functions/period_ofWeeks.md) | Crea un Period a partir de semanas |
| [`period_ofDays(days)`](functions/period_ofDays.md) | Crea un Period solo con días |
| [`period_getYear(struct)`](functions/period_getYear.md) | Obtiene el año del Period |
| [`period_getMonth(struct)`](functions/period_getMonth.md) | Obtiene el mes del Period |
| [`period_getDay(struct)`](functions/period_getDay.md) | Obtiene el día del Period |
| [`period_withYears(struct, years)`](functions/period_withYears.md) | Establece los años del Period |
| [`period_withMonths(struct, months)`](functions/period_withMonths.md) | Establece los meses del Period |
| [`period_withDays(struct, days)`](functions/period_withDays.md) | Establece los días del Period |
| [`period_plus(struct_a, struct_b)`](functions/period_plus.md) | Suma dos Periods |
| [`period_plusYear(struct, years)`](functions/period_plusYear.md) | Suma años al Period |
| [`period_plusMonths(struct, months)`](functions/period_plusMonths.md) | Suma meses al Period |
| [`period_plusDays(struct, days)`](functions/period_plusDays.md) | Suma días al Period |
| [`period_minus(struct_a, struct_b)`](functions/period_minus.md) | Resta dos Periods |
| [`period_minusYear(struct, years)`](functions/period_minusYear.md) | Resta años al Period |
| [`period_minusMonths(struct, months)`](functions/period_minusMonths.md) | Resta meses al Period |
| [`period_minusDays(struct, days)`](functions/period_minusDays.md) | Resta días al Period |
| [`period_multipliedBy(struct, scalar)`](functions/period_multipliedBy.md) | Multiplica el Period por un escalar |
| [`period_negated(struct)`](functions/period_negated.md) | Invierte el signo del Period |
| [`period_toTotalMonths(struct)`](functions/period_toTotalMonths.md) | Convierte a meses totales |
| [`period_normalized(struct)`](functions/period_normalized.md) | Normaliza los meses (ajusta a rango 0-11) |
| [`period_toString(struct)`](functions/period_toString.md) | Convierte a texto (Y: años M: meses D: días) |
| [`period_isNegative(struct)`](functions/period_isNegative.md) | Verifica si el Period es negativo |
| [`period_isZero(struct)`](functions/period_isZero.md) | Verifica si el Period es cero |
| [`period_between(date_start, date_end)`](functions/period_between.md) | Calcula el Period entre dos fechas |

## Ejemplo de Uso
```pseudocode
Algoritmo Ejemplo_Period
    Definir per, per2, per_suma, per_str Como Texto;
    Definir anios, meses, dias Como Entero;
    // Crear un periodo de 1 año, 6 meses y 15 días
    per = period_of(1, 6, 15);
    // Obtener componentes
    anios = period_getYear(per);
    meses = period_getMonth(per);
    dias = period_getDay(per);
    Escribir "Años: ", anios, " Meses: ", meses, " Días: ", dias;
    // Multiplicar por 2 y negar
    per2 = period_multipliedBy(per, 2);
    // Sumar periodos
    per_suma = period_plus(per, per2);
    // Convertir a texto
    per_str = period_toString(per_suma);
    Escribir "Periodo sumado: ", per_str;
    // Normalizar meses
    per_str = period_toString(period_normalized(period_of(0, 14, 0)));
    Escribir "14 meses normalizado: ", per_str;
FinAlgoritmo
```
