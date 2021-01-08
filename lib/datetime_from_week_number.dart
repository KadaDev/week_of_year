/// Create a DateTime based on ISO year, week number, and optional week day.
///
/// Allows overflowing/underflowing the week numbers. For example: year 2023,
/// week 53 doesn't exist and will overflow to year 2024, week 1
DateTime dateTimeFromWeekNumber(
  int year,
  int weekNumber, [
  int weekDay = DateTime.monday,
]) {
  // January 4th is always in week 1
  final fourthJanuary = DateTime(year, 1, 4);

  // removing the weekday from January 4th returns the monday of week 1, which could be in the preceding year.
  final firstDayOfWeek1 = DateTime(year, 1, 4 - (fourthJanuary.weekday - 1));

  // Not using DateTime.add() since that adds a duration which takes things such as daylight savings into account, which could introduce errors.
  return DateTime(
    firstDayOfWeek1.year,
    firstDayOfWeek1.month,
    firstDayOfWeek1.day + 7 * (weekNumber - 1) + (weekDay - 1),
  );
}
