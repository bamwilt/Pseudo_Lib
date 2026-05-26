# LOCALTIME

**Código:** #LTI
**Prefijo:** `localTime_`
**Estado:** [+] Stable

## Descripción
Módulo para la representación y manipulación de horas locales (sin fecha). Proporciona funciones para crear, comparar, formatear y modificar objetos de tiempo local en el rango 00:00:00 - 23:59:59.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`localTime_now()`](functions/localTime_now.md) | Obtiene la hora actual del sistema |
| [`localTime_of(hours, minutes, seconds)`](functions/localTime_of.md) | Crea un objeto LocalTime a partir de hora, minuto y segundo |
| [`localTime_of_HourMinute(hours, minutes)`](functions/localTime_of_HourMinute.md) | Crea un LocalTime solo con hora y minuto (segundos = 0) |
| [`localTime_ofSecondOfDays(seconds)`](functions/localTime_ofSecondOfDays.md) | Crea un LocalTime a partir de los segundos transcurridos del día |
| [`localTime_getHours(struct)`](functions/localTime_getHours.md) | Obtiene las horas del LocalTime |
| [`localTime_getMinutes(struct)`](functions/localTime_getMinutes.md) | Obtiene los minutos del LocalTime |
| [`localTime_getSeconds(struct)`](functions/localTime_getSeconds.md) | Obtiene los segundos del LocalTime |
| [`localTime_getSecondsOfDay(struct)`](functions/localTime_getSecondsOfDay.md) | Obtiene el total de segundos transcurridos del día |
| [`localTime_isBefore(struct, match)`](functions/localTime_isBefore.md) | Verifica si un LocalTime es anterior a otro |
| [`localTime_isAfter(struct, match)`](functions/localTime_isAfter.md) | Verifica si un LocalTime es posterior a otro |
| [`localTime_isEquals(struct, match)`](functions/localTime_isEquals.md) | Verifica si dos LocalTime son iguales |
| [`localTime_ToString(struct)`](functions/localTime_ToString.md) | Convierte el LocalTime a texto (HH:mm:ss) |
| [`localTime_PlusHours(struct, increment)`](functions/localTime_PlusHours.md) | Suma horas al LocalTime |
| [`localTime_PlusMinutes(struct, increment)`](functions/localTime_PlusMinutes.md) | Suma minutos al LocalTime |
| [`localTime_PlusSeconds(struct, increment)`](functions/localTime_PlusSeconds.md) | Suma segundos al LocalTime |
| [`localTime_MinusHours(struct, decrement)`](functions/localTime_MinusHours.md) | Resta horas al LocalTime |
| [`localTime_MinusMinutes(struct, decrement)`](functions/localTime_MinusMinutes.md) | Resta minutos al LocalTime |
| [`localTime_MinusSeconds(struct, decrement)`](functions/localTime_MinusSeconds.md) | Resta segundos al LocalTime |
| [`localTime_withHour(struct, hour)`](functions/localTime_withHour.md) | Establece la hora del LocalTime |
| [`localTime_withMinute(struct, minute)`](functions/localTime_withMinute.md) | Establece el minuto del LocalTime |
| [`localTime_withSecond(struct, second)`](functions/localTime_withSecond.md) | Establece el segundo del LocalTime |
| [`localTime_truncatedToHours(struct)`](functions/localTime_truncatedToHours.md) | Trunca el LocalTime a la hora |
| [`localTime_truncatedToMinutes(struct)`](functions/localTime_truncatedToMinutes.md) | Trunca el LocalTime al minuto |
