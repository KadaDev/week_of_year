# week_of_year

Fast dependency-free extension methods to get the ISO 8601 week of year from a dart DateTime object.

```dart
import 'package:week_of_year/week_of_year.dart';

void main() {
  final date = DateTime.now();
  print(date.weekOfYear); // Get the iso week of year
  print(date.ordinalDate); // Get the ordinal date
  print(date.isLeapYear); // Is this a leap year?
}
```
