# DURATION

**Código:** #DUR
**Prefijo:** `duration_`
**Estado:** [+] Stable

## Descripción
Módulo para la representación y manipulación de duraciones basadas en segundos. Permite crear, convertir, comparar y operar aritméticamente con lapsos de tiempo.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`duration_of(units, Temporal_Type)`](functions/duration_of.md) | Crea una duración a partir de una cantidad y unidad temporal |
| [`duration_ofDays(days)`](functions/duration_ofDays.md) | Crea una duración en días |
| [`duration_ofHours(hours)`](functions/duration_ofHours.md) | Crea una duración en horas |
| [`duration_ofMinutes(minutes)`](functions/duration_ofMinutes.md) | Crea una duración en minutos |
| [`duration_ofSeconds(seconds)`](functions/duration_ofSeconds.md) | Crea una duración en segundos |
| [`duration_getSeconds(struct)`](functions/duration_getSeconds.md) | Obtiene el total de segundos de la duración |
| [`duration_ToDays(struct)`](functions/duration_ToDays.md) | Convierte la duración a días |
| [`duration_ToHours(struct)`](functions/duration_ToHours.md) | Convierte la duración a horas |
| [`duration_ToMinutes(struct)`](functions/duration_ToMinutes.md) | Convierte la duración a minutos |
| [`duration_ToSeconds(struct)`](functions/duration_ToSeconds.md) | Convierte la duración a segundos |
| [`duration_ToDaysPart(struct)`](functions/duration_ToDaysPart.md) | Obtiene la parte entera de días |
| [`duration_ToHoursPart(struct)`](functions/duration_ToHoursPart.md) | Obtiene la parte entera de horas |
| [`duration_ToMinutesPart(struct)`](functions/duration_ToMinutesPart.md) | Obtiene la parte entera de minutos |
| [`duration_ToSecondsPart(struct)`](functions/duration_ToSecondsPart.md) | Obtiene la parte entera de segundos |
| [`duration_isNegative(struct)`](functions/duration_isNegative.md) | Verifica si la duración es negativa |
| [`duration_isZero(struct)`](functions/duration_isZero.md) | Verifica si la duración es cero |
| [`duration_between(start, end)`](functions/duration_between.md) | Calcula la duración entre dos instantes |
| [`duration_Negated(struct)`](functions/duration_Negated.md) | Invierte el signo de la duración |
| [`duration_abs(struct)`](functions/duration_abs.md) | Valor absoluto de la duración |
| [`duration_MultipliedBy(struct, scalar)`](functions/duration_MultipliedBy.md) | Multiplica la duración por un escalar |
| [`duration_DividedBy(struct, divisor)`](functions/duration_DividedBy.md) | Divide la duración por un escalar |
| [`duration_Plus(struct, duration)`](functions/duration_Plus.md) | Suma dos duraciones |
| [`duration_PlusDays(struct, days)`](functions/duration_PlusDays.md) | Suma días a la duración |
| [`duration_PlusHours(struct, hours)`](functions/duration_PlusHours.md) | Suma horas a la duración |
| [`duration_PlusMinutes(struct, minutes)`](functions/duration_PlusMinutes.md) | Suma minutos a la duración |
| [`duration_PlusSeconds(struct, seconds)`](functions/duration_PlusSeconds.md) | Suma segundos a la duración |
| [`duration_Minus(struct, duration)`](functions/duration_Minus.md) | Resta dos duraciones |
| [`duration_MinusDays(struct, days)`](functions/duration_MinusDays.md) | Resta días a la duración |
| [`duration_MinusHours(struct, hours)`](functions/duration_MinusHours.md) | Resta horas a la duración |
| [`duration_MinusMinutes(struct, minutes)`](functions/duration_MinusMinutes.md) | Resta minutos a la duración |
| [`duration_MinusSeconds(struct, seconds)`](functions/duration_MinusSeconds.md) | Resta segundos a la duración |
| [`duration_CompareTo(struct, match)`](functions/duration_CompareTo.md) | Compara dos duraciones |
