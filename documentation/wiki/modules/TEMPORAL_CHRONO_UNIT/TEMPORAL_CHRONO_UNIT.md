# TEMPORAL_CHRONO_UNIT

**Código:** #TMP
**Prefijo:** `chronoUnit_`, `temporal_`, `duration_`, `DayOfWeek_`, `Month_`, `month_`
**Estado:** [+] Stable

## Descripción

Módulo que proporciona unidades de tiempo y operaciones temporales para PseudoLib. Define constantes de unidades cronológicas (segundos, minutos, horas, días, semanas, meses, años, décadas), operaciones aritméticas sobre estructuras temporales y utilidades de conversión entre unidades.

## Funciones

| Función | Descripción |
|---------|-------------|
| [`chronoUnit_getDuration(chronoUnit_type)`](functions/chronoUnit_getDuration.md) | Obtiene la duración en segundos de una unidad |
| [`chronoUnit_isTimeBased(chronoUnit_type)`](functions/chronoUnit_isTimeBased.md) | Verifica si la unidad es basada en tiempo |
| [`chronoUnit_isDateBased(chronoUnit_type)`](functions/chronoUnit_isDateBased.md) | Verifica si la unidad es basada en fecha |
| [`chronoUnit_isSupportedTo(struct_temporal, chronoUnit_type)`](functions/chronoUnit_isSupportedTo.md) | Verifica si una unidad es soportada por un temporal |
| [`chronoUnit_isDurationEstimated(chronoUnit_type)`](functions/chronoUnit_isDurationEstimated.md) | Verifica si la duración de la unidad es estimada |
| [`temporal_getSeconds(struct_temporal)`](functions/temporal_getSeconds.md) | Obtiene los segundos de un temporal |
| [`temporal_Plus(struct_temporal, struct_temporal_minus)`](functions/temporal_Plus.md) | Suma dos temporales |
| [`temporal_PlusSeconds(struct_temporal, num_increment)`](functions/temporal_PlusSeconds.md) | Suma segundos a un temporal |
| [`temporal_PlusUnitTemporal(struct_temporal, num_increment, Temporal_Type)`](functions/temporal_PlusUnitTemporal.md) | Suma una cantidad en una unidad específica |
| [`temporal_PlusNumber(struct_temporal, number_plus)`](functions/temporal_PlusNumber.md) | Suma un número de segundos a un temporal |
| [`temporal_MinusUnitTemporal(struct_temporal, num_decrement, Temporal_Type)`](functions/temporal_MinusUnitTemporal.md) | Resta una cantidad en una unidad específica |
| [`temporal_Minus(struct_temporal, struct_temporal_minus)`](functions/temporal_Minus.md) | Resta dos temporales |
| [`temporal_with(struct_temporal, num_define, type_temporal)`](functions/temporal_with.md) | Establece un campo específico del temporal |
| [`temporal_isValidUnitTemporal(unit_temporal, type_temporal)`](functions/temporal_isValidUnitTemporal.md) | Valida una unidad temporal |
| [`temporal_isValidDate(year, month, day)`](functions/temporal_isValidDate.md) | Valida una fecha completa |
| [`temporal_isValidYear(year)`](functions/temporal_isValidYear.md) | Valida un año |
| [`temporal_isValidMonth(month)`](functions/temporal_isValidMonth.md) | Valida un mes |
| [`temporal_isValidDayInMonthOfTheYear(year, month, day)`](functions/temporal_isValidDayInMonthOfTheYear.md) | Valida un día en un mes y año |
| [`temporal_isValidHours(hours)`](functions/temporal_isValidHours.md) | Valida horas |
| [`temporal_isValidMinutes(minutes)`](functions/temporal_isValidMinutes.md) | Valida minutos |
| [`temporal_isValidSeconds(seconds)`](functions/temporal_isValidSeconds.md) | Valida segundos |
| [`temporal_isValid(hours, minutes, seconds)`](functions/temporal_isValid.md) | Valida una hora completa |
| [`__private_temporalDate_add(struct_date, year, month, day)`](functions/__private_temporalDate_add.md) | Agrega año, mes, día a una fecha |
| [`__private_temporalDate_set(struct_date, year, month, day)`](functions/__private_temporalDate_set.md) | Establece año, mes, día en una fecha |
| [`__private_temporal_addSecondOfDays(struct_time, seconds)`](functions/__private_temporal_addSecondOfDays.md) | Agrega segundos a un tiempo |
| [`__private_temporal_setSecondOfDays(struct_time, seconds)`](functions/__private_temporal_setSecondOfDays.md) | Establece los segundos de un tiempo |
| [`__private_temporalDate_setDateNull(struct_date)`](functions/__private_temporalDate_setDateNull.md) | Establece una fecha nula |
| [`__private_temporalTime_setTimeNull(struct_time)`](functions/__private_temporalTime_setTimeNull.md) | Establece un tiempo nulo |
| [`TEMPORAL_AMOUNT_DURATION()`](functions/TEMPORAL_AMOUNT_DURATION.md) | Constante de tipo Duration |
| [`TEMPORAL_AMOUNT_PERIOD()`](functions/TEMPORAL_AMOUNT_PERIOD.md) | Constante de tipo Period |
| [`TEMPORAL_LOCALTIME()`](functions/TEMPORAL_LOCALTIME.md) | Constante de tipo LocalTime |
| [`TEMPORAL_LOCALDATE()`](functions/TEMPORAL_LOCALDATE.md) | Constante de tipo LocalDate |
| [`TEMPORAL_LOCALDATETIME()`](functions/TEMPORAL_LOCALDATETIME.md) | Constante de tipo LocalDateTime |
| [`chronoUnit_DECADES()`](functions/chronoUnit_DECADES.md) | Constante de unidad décadas |
| [`chronoUnit_YEARS()`](functions/chronoUnit_YEARS.md) | Constante de unidad años |
| [`chronoUnit_MONTHS()`](functions/chronoUnit_MONTHS.md) | Constante de unidad meses |
| [`chronoUnit_WEEKS()`](functions/chronoUnit_WEEKS.md) | Constante de unidad semanas |
| [`chronoUnit_DAYS()`](functions/chronoUnit_DAYS.md) | Constante de unidad días |
| [`chronoUnit_HOURS()`](functions/chronoUnit_HOURS.md) | Constante de unidad horas |
| [`chronoUnit_MINUTES()`](functions/chronoUnit_MINUTES.md) | Constante de unidad minutos |
| [`chronoUnit_SECONDS()`](functions/chronoUnit_SECONDS.md) | Constante de unidad segundos |
| [`DayOfWeek_MONDAY()`](functions/DayOfWeek_MONDAY.md) | Constante de día lunes |
| [`DayOfWeek_TUESDAY()`](functions/DayOfWeek_TUESDAY.md) | Constante de día martes |
| [`DayOfWeek_WEDNESDAY()`](functions/DayOfWeek_WEDNESDAY.md) | Constante de día miércoles |
| [`DayOfWeek_THURSDAY()`](functions/DayOfWeek_THURSDAY.md) | Constante de día jueves |
| [`DayOfWeek_FRIDAY()`](functions/DayOfWeek_FRIDAY.md) | Constante de día viernes |
| [`DayOfWeek_SATURDAY()`](functions/DayOfWeek_SATURDAY.md) | Constante de día sábado |
| [`DayOfWeek_SUNDAY()`](functions/DayOfWeek_SUNDAY.md) | Constante de día domingo |
| [`Month_JANUARY()`](functions/Month_JANUARY.md) | Constante de mes enero |
| [`Month_FEBRUARY()`](functions/Month_FEBRUARY.md) | Constante de mes febrero |
| [`Month_MARCH()`](functions/Month_MARCH.md) | Constante de mes marzo |
| [`Month_APRIL()`](functions/Month_APRIL.md) | Constante de mes abril |
| [`Month_MAY()`](functions/Month_MAY.md) | Constante de mes mayo |
| [`Month_JUNE()`](functions/Month_JUNE.md) | Constante de mes junio |
| [`Month_JULY()`](functions/Month_JULY.md) | Constante de mes julio |
| [`Month_AUGUST()`](functions/Month_AUGUST.md) | Constante de mes agosto |
| [`Month_SEPTEMBER()`](functions/Month_SEPTEMBER.md) | Constante de mes septiembre |
| [`Month_OCTOBER()`](functions/Month_OCTOBER.md) | Constante de mes octubre |
| [`Month_NOVEMBER()`](functions/Month_NOVEMBER.md) | Constante de mes noviembre |
| [`Month_DECEMBER()`](functions/Month_DECEMBER.md) | Constante de mes diciembre |
| [`month_of(number_month)`](functions/month_of.md) | Obtiene el nombre del mes por número |
| [`month_value(name_month)`](functions/month_value.md) | Obtiene el número del mes por nombre |
| [`DayOfWeek_of(number_day)`](functions/DayOfWeek_of.md) | Obtiene el nombre del día por número |
| [`temporal_daysToSecond(unit_second)`](functions/temporal_daysToSecond.md) | Convierte días a segundos |
| [`duration_TemporalUnitToSeconds(unit_seconds, Temporal_Type)`](functions/duration_TemporalUnitToSeconds.md) | Convierte una unidad temporal a segundos |
| [`duration_secondsToTemporalUnitPart(unit_second, Temporal_Type)`](functions/duration_secondsToTemporalUnitPart.md) | Obtiene la parte de una unidad desde segundos |
| [`duration_hoursToSeconds(unit_second)`](functions/duration_hoursToSeconds.md) | Convierte horas a segundos |
| [`duration_minutesToSeconds(unit_second)`](functions/duration_minutesToSeconds.md) | Convierte minutos a segundos |
| [`duration_secondsToTemporalUnit(unit_second, Temporal_Type)`](functions/duration_secondsToTemporalUnit.md) | Convierte segundos a una unidad temporal |
| [`duration_secondsToDay(unit_second)`](functions/duration_secondsToDay.md) | Convierte segundos a días |
| [`duration_secondsToHours(unit_second)`](functions/duration_secondsToHours.md) | Convierte segundos a horas |
| [`duration_secondsToMinutes(unit_second)`](functions/duration_secondsToMinutes.md) | Convierte segundos a minutos |
| [`localDate_lengthOfMonth(year, month)`](functions/localDate_lengthOfMonth.md) | Obtiene la longitud de un mes |
| [`localDate_isLeapYear(year)`](functions/localDate_isLeapYear.md) | Verifica si un año es bisiesto |
