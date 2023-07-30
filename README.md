# week_of_year

Fast dependency-free extension methods to get the ISO 8601 week of year from a dart DateTime object.

Also includes a function to create a DateTime from a year and week number.

```dart
import 'package:week_of_year/week_of_year.dart';

void main() {
  final date = DateTime.now();
  print(date.weekOfYear); // Get the iso week of year
  print(date.ordinalDate); // Get the ordinal date
  print(date.isLeapYear); // Is this a leap year?

  final DateTime dateFromWeekNumber = dateTimeFromWeekNumber(2023, 13, DateTime.tuesday);
  print(dateFromWeekNumber); // 2023-02-28
}
```
