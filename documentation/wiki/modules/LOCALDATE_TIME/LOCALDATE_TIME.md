# LOCALDATE_TIME

**Código:** #LDT
**Prefijo:** `localDateTime_`
**Estado:** [+] Stable

## Descripción
Módulo que combina fecha y hora local en un único objeto (LocalDateTime). Proporciona funciones para construir un LocalDateTime a partir de año, mes, día, hora, minuto y segundo (o usando nombre del mes), convertirlo a texto en formato "yyyy-MM-dd HH:mm:ss", y realizar operaciones aritméticas de suma/resta de unidades, comparación, consulta de campos individuales, truncado y extracción de las partes de fecha y hora.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`localDateTime_of(year, month, day, hour, minute, second)`](functions/localDateTime_of.md) | Crea un LocalDateTime a partir de año, mes, día, hora, minuto y segundo |
| [`localDateTime_of_hourMinute(year, month, day, hour, minute)`](functions/localDateTime_of_hourMinute.md) | Crea un LocalDateTime sin segundos |
| [`localDateTime_of_monthName(year, MONTH_NAME, day, hour, minute, second)`](functions/localDateTime_of_monthName.md) | Crea un LocalDateTime usando nombre del mes |
| [`localDateTime_of_monthName_hourMinute(year, MONTH_NAME, day, hour, minute)`](functions/localDateTime_of_monthName_hourMinute.md) | Crea LocalDateTime con nombre de mes, sin segundos |
| [`localDateTime_of_struct_DateAndTime(localDate, localTime)`](functions/localDateTime_of_struct_DateAndTime.md) | Combina un LocalDate y un LocalTime |
| [`localDateTime_plusYears(struct, years)`](functions/localDateTime_plusYears.md) | Suma años al LocalDateTime |
| [`localDateTime_plusMonths(struct, months)`](functions/localDateTime_plusMonths.md) | Suma meses al LocalDateTime |
| [`localDateTime_plusWeeks(struct, weeks)`](functions/localDateTime_plusWeeks.md) | Suma semanas al LocalDateTime |
| [`localDateTime_plusDays(struct, days)`](functions/localDateTime_plusDays.md) | Suma días al LocalDateTime |
| [`localDateTime_plusHours(struct, hours)`](functions/localDateTime_plusHours.md) | Suma horas al LocalDateTime |
| [`localDateTime_plusMinutes(struct, minutes)`](functions/localDateTime_plusMinutes.md) | Suma minutos al LocalDateTime |
| [`localDateTime_plusSeconds(struct, seconds)`](functions/localDateTime_plusSeconds.md) | Suma segundos al LocalDateTime |
| [`localDateTime_minusYears(struct, years)`](functions/localDateTime_minusYears.md) | Resta años al LocalDateTime |
| [`localDateTime_minusMonths(struct, months)`](functions/localDateTime_minusMonths.md) | Resta meses al LocalDateTime |
| [`localDateTime_minusWeeks(struct, weeks)`](functions/localDateTime_minusWeeks.md) | Resta semanas al LocalDateTime |
| [`localDateTime_minusDays(struct, days)`](functions/localDateTime_minusDays.md) | Resta días al LocalDateTime |
| [`localDateTime_minusHours(struct, hours)`](functions/localDateTime_minusHours.md) | Resta horas al LocalDateTime |
| [`localDateTime_minusMinutes(struct, minutes)`](functions/localDateTime_minusMinutes.md) | Resta minutos al LocalDateTime |
| [`localDateTime_minusSeconds(struct, seconds)`](functions/localDateTime_minusSeconds.md) | Resta segundos al LocalDateTime |
| [`localDateTime_withYear(struct, year)`](functions/localDateTime_withYear.md) | Establece el año |
| [`localDateTime_withMonth(struct, month)`](functions/localDateTime_withMonth.md) | Establece el mes |
| [`localDateTime_withDayOfMonth(struct, day)`](functions/localDateTime_withDayOfMonth.md) | Establece el día del mes |
| [`localDateTime_withDayOfYear(struct, dayOfYear)`](functions/localDateTime_withDayOfYear.md) | Establece el día del año |
| [`localDateTime_withHour(struct, hour)`](functions/localDateTime_withHour.md) | Establece la hora |
| [`localDateTime_withMinute(struct, minute)`](functions/localDateTime_withMinute.md) | Establece el minuto |
| [`localDateTime_withSecond(struct, second)`](functions/localDateTime_withSecond.md) | Establece el segundo |
| [`localDateTime_isBefore(struct1, struct2)`](functions/localDateTime_isBefore.md) | Verifica si un LocalDateTime es anterior a otro |
| [`localDateTime_isAfter(struct1, struct2)`](functions/localDateTime_isAfter.md) | Verifica si un LocalDateTime es posterior a otro |
| [`localDateTime_isEqual(struct1, struct2)`](functions/localDateTime_isEqual.md) | Verifica si dos LocalDateTime son iguales |
| [`localDateTime_getYear(struct)`](functions/localDateTime_getYear.md) | Obtiene el año |
| [`localDateTime_getMonthValue(struct)`](functions/localDateTime_getMonthValue.md) | Obtiene el mes (1-12) |
| [`localDateTime_getDayOfMonth(struct)`](functions/localDateTime_getDayOfMonth.md) | Obtiene el día del mes |
| [`localDateTime_getDayOfYear(struct)`](functions/localDateTime_getDayOfYear.md) | Obtiene el día del año |
| [`localDateTime_getHour(struct)`](functions/localDateTime_getHour.md) | Obtiene la hora |
| [`localDateTime_getMinute(struct)`](functions/localDateTime_getMinute.md) | Obtiene el minuto |
| [`localDateTime_getSecond(struct)`](functions/localDateTime_getSecond.md) | Obtiene el segundo |
| [`localDateTime_getDayOfWeek(struct)`](functions/localDateTime_getDayOfWeek.md) | Obtiene el nombre del día de la semana |
| [`localDateTime_getEra(struct)`](functions/localDateTime_getEra.md) | Obtiene la era (CE/BCE) |
| [`localDateTime_toString(struct)`](functions/localDateTime_toString.md) | Convierte a texto (yyyy-MM-dd HH:mm:ss) |
| [`localDateTime_toLocalDate(struct)`](functions/localDateTime_toLocalDate.md) | Extrae la parte de fecha |
| [`localDateTime_toLocalTime(struct)`](functions/localDateTime_toLocalTime.md) | Extrae la parte de hora |
| [`localDateTime_truncatedToHours(struct)`](functions/localDateTime_truncatedToHours.md) | Trunca a la hora |
| [`localDateTime_truncatedToMinutes(struct)`](functions/localDateTime_truncatedToMinutes.md) | Trunca al minuto |

## Ejemplo de Uso
```pseudocode
Algoritmo Ejemplo_LocalDateTime
    Definir dt, dt2, dt_str Como Texto;
    // Crear un LocalDateTime: 15 de marzo de 2024 a las 10:30:00
    dt = localDateTime_of(2024, 3, 15, 10, 30, 0);
    // Convertir a texto y mostrar
    dt_str = localDateTime_toString(dt);
    Escribir "Fecha y hora: ", dt_str;
    // Crear usando nombre del mes
    dt2 = localDateTime_of_monthName(2024, Month_MARCH(), 15, 10, 30, 0);
    // Obtener año, mes, día, hora
    Escribir "Año: ", localDateTime_getYear(dt);
    Escribir "Mes: ", localDateTime_getMonthValue(dt);
    Escribir "Día: ", localDateTime_getDayOfMonth(dt);
    Escribir "Hora: ", localDateTime_getHour(dt);
FinAlgoritmo
```
