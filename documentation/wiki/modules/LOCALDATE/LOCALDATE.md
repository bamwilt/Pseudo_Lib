# LOCALDATE

**Código:** #LDA
**Prefijo:** `localDate_`
**Estado:** [+] Stable

## Descripción

Módulo que implementa una fecha sin zona horaria (año-mes-día) basada en colecciones lineales. Permite crear fechas desde la fecha actual o valores explícitos, consultar año/mes/día, sumar y restar días/semanas/meses/años, comparar fechas, obtener el día de la semana, verificar años bisiestos, calcular longitud de meses y convertir a epoch day. Las fechas inválidas retornan un objeto nulo.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`__private_getDate_Now()`](functions/__private_getDate_Now.md) | Obtiene la fecha actual en número |
| [`__private_getDate_Now_toString()`](functions/__private_getDate_Now_toString.md) | Obtiene la fecha actual como texto |
| [`localDate_now()`](functions/localDate_now.md) | Crea un LocalDate con la fecha actual |
| [`localDate_of_monthName(year, MONTH_NAME, day)`](functions/localDate_of_monthName.md) | Crea un LocalDate con nombre de mes |
| [`localDate_of(year, month, day)`](functions/localDate_of.md) | Crea un LocalDate con año, mes, día |
| [`__private_localDate_forceOf(year, month, day)`](functions/__private_localDate_forceOf.md) | Fuerza la creación de un LocalDate sin validar |
| [`localDate_toString(struct_date)`](functions/localDate_toString.md) | Convierte un LocalDate a texto |
| [`__private_localDate_ofDateNull()`](functions/__private_localDate_ofDateNull.md) | Crea un LocalDate nulo |
| [`__private_localDate_getDateUnixEpoch()`](functions/__private_localDate_getDateUnixEpoch.md) | Obtiene la fecha Unix epoch |
| [`localDate_getYear(struct_date)`](functions/localDate_getYear.md) | Obtiene el año |
| [`localDate_getMonthValue(struct_date)`](functions/localDate_getMonthValue.md) | Obtiene el mes como número |
| [`localDate_getMonth(struct_date)`](functions/localDate_getMonth.md) | Obtiene el mes como nombre |
| [`localDate_getDayOfMonth(struct_date)`](functions/localDate_getDayOfMonth.md) | Obtiene el día del mes |
| [`localDate_getEra(struct_date)`](functions/localDate_getEra.md) | Obtiene la era (CE/BCE) |
| [`localDate_plusDays(struct_date, plus_days)`](functions/localDate_plusDays.md) | Suma días a una fecha |
| [`localDate_plusWeeks(struct_date, plus_weeks)`](functions/localDate_plusWeeks.md) | Suma semanas a una fecha |
| [`__private_localDate_AdvanceDays(struct_date, year, month, days)`](functions/__private_localDate_AdvanceDays.md) | Avanza días internamente |
| [`__private_localDate_RewindDays(struct_date, year, month, days)`](functions/__private_localDate_RewindDays.md) | Retrocede días internamente |
| [`localDate_plusMonths(struct_date, plus_months)`](functions/localDate_plusMonths.md) | Suma meses a una fecha |
| [`localDate_plusYears(struct_date, plus_years)`](functions/localDate_plusYears.md) | Suma años a una fecha |
| [`localDate_minusDays(struct_date, minus_days)`](functions/localDate_minusDays.md) | Resta días a una fecha |
| [`localDate_minusWeeks(struct_date, minus_weeks)`](functions/localDate_minusWeeks.md) | Resta semanas a una fecha |
| [`localDate_minusMonths(struct_date, minus_month)`](functions/localDate_minusMonths.md) | Resta meses a una fecha |
| [`localDate_minusYears(struct_date, minus_years)`](functions/localDate_minusYears.md) | Resta años a una fecha |
| [`__private_localDate_getAccumulatedDays(month, isLeap)`](functions/__private_localDate_getAccumulatedDays.md) | Obtiene días acumulados hasta un mes |
| [`__private_localDate_getMonthFromDays(year, days)`](functions/__private_localDate_getMonthFromDays.md) | Obtiene el mes desde días acumulados |
| [`localDate_ofDayOfYear(year, dayOfYear)`](functions/localDate_ofDayOfYear.md) | Crea un LocalDate desde día del año |
| [`localDate_withMonth(struct_date, month_int)`](functions/localDate_withMonth.md) | Cambia el mes de una fecha |
| [`localDate_withDayOfYear(struct_date, dayOfYear)`](functions/localDate_withDayOfYear.md) | Cambia el día del año |
| [`localDate_withDayOfMonth(struct_date, day_int)`](functions/localDate_withDayOfMonth.md) | Cambia el día del mes |
| [`localDate_withYear(struct_date, year_int)`](functions/localDate_withYear.md) | Cambia el año |
| [`localDate_with(struct_date, new_value, temporal_unit)`](functions/localDate_with.md) | Cambia un campo específico |
| [`localDate_plus(struct_date, num_plus, temporal_unit)`](functions/localDate_plus.md) | Suma una cantidad en una unidad específica |
| [`localDate_minus(struct_date, num_minus, temporal_unit)`](functions/localDate_minus.md) | Resta una cantidad en una unidad específica |
| [`localDate_getDayOfYear(year, month, day)`](functions/localDate_getDayOfYear.md) | Obtiene el día del año |
| [`localDate_getDayOfTheWeek(struct_date)`](functions/localDate_getDayOfTheWeek.md) | Obtiene el nombre del día de la semana |
| [`localDate_getDayOfTheWeek_Value(struct_date)`](functions/localDate_getDayOfTheWeek_Value.md) | Obtiene el valor del día de la semana |
| [`__private_localDate_getDayOfTheWeek_Value(year, month, day)`](functions/__private_localDate_getDayOfTheWeek_Value.md) | Calcula el valor del día de la semana |
| [`localDate_atStartOfDay(struct_date)`](functions/localDate_atStartOfDay.md) | Obtiene el inicio del día |
| [`localDate_atTime_fromLocalTime(struct_date, struct_time)`](functions/localDate_atTime_fromLocalTime.md) | Combina fecha con un LocalTime |
| [`localDate_atTime_HourMinute(struct_date, hour, minute)`](functions/localDate_atTime_HourMinute.md) | Combina fecha con hora y minuto |
| [`localDate_atTime(struct_date, hour, minute, second)`](functions/localDate_atTime.md) | Combina fecha con hora, minuto, segundo |
| [`__private_localDate_atTime_fromSeconds(struct_date, seconds)`](functions/__private_localDate_atTime_fromSeconds.md) | Crea un DateTime desde segundos |
| [`localDate_isLeapYear(year)`](functions/localDate_isLeapYear.md) | Verifica si un año es bisiesto |
| [`localDate_lengthOfYear(struct_date)`](functions/localDate_lengthOfYear.md) | Obtiene la longitud del año |
| [`localDate_lengthOfMonth(year, month)`](functions/localDate_lengthOfMonth.md) | Obtiene la longitud del mes |
| [`localDate_isBefore(struct_LocalDate, struct_LocalDate_match)`](functions/localDate_isBefore.md) | Verifica si una fecha es anterior |
| [`localDate_isAfter(struct_LocalDate, struct_LocalDate_match)`](functions/localDate_isAfter.md) | Verifica si una fecha es posterior |
| [`localDate_isEqual(struct_LocalDate, struct_LocalDate_match)`](functions/localDate_isEqual.md) | Verifica si dos fechas son iguales |
| [`__private_localDate_CompareTo(struct_LocalDate, struct_LocalDate_match)`](functions/__private_localDate_CompareTo.md) | Compara dos fechas |
| [`localDate_until_Years(struct_date_start, struct_date_end)`](functions/localDate_until_Years.md) | Calcula años entre dos fechas |
| [`localDate_until_Months(struct_date_start, struct_date_end)`](functions/localDate_until_Months.md) | Calcula meses entre dos fechas |
| [`localDate_until_Days(struct_date_start, struct_date_end)`](functions/localDate_until_Days.md) | Calcula días entre dos fechas |
| [`localDate_toEpochDay(struct_date)`](functions/localDate_toEpochDay.md) | Convierte fecha a epoch day |
| [`__private_localDate_getEpochOffset()`](functions/__private_localDate_getEpochOffset.md) | Obtiene el offset de epoch |
| [`__private_localDate_getDaysFromYears(year_int)`](functions/__private_localDate_getDaysFromYears.md) | Calcula días desde años |
| [`localDate_format(text)`](functions/localDate_format.md) | Formatea una fecha según patrón |

## Ejemplo de Uso

```pseudocode
Algoritmo EjemploLocalDate
    Definir fecha, fecha2 Como Texto
	
    fecha = localDate_now()
    Escribir "Fecha actual: ", localDate_toString(fecha)
	
    fecha2 = localDate_of(2024, 3, 15)
    Escribir "Fecha creada: ", localDate_toString(fecha2)
    Escribir "Año: ", localDate_getYear(fecha2)
    Escribir "Mes: ", localDate_getMonth(fecha2)
    Escribir "Día: ", localDate_getDayOfMonth(fecha2)
	
    Si localDate_isLeapYear(2024) Entonces
        Escribir "2024 es bisiesto"
    FinSi
	
    Escribir "Días en febrero 2024: ", localDate_lengthOfMonth(2024, 2)
    Escribir "Día de la semana: ", localDate_getDayOfTheWeek(fecha2)
FinAlgoritmo
```
