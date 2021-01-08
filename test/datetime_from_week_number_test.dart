import 'package:test/test.dart';
import 'package:week_of_year/datetime_from_week_number.dart';

void t(int year, List<DateTime> expectations) {
  group('$year', () {
    test('w1 monday', () {
      expect(
        expectations[0],
        dateTimeFromWeekNumber(year, 1, DateTime.monday),
      );
    });
    test('w10 thursday', () {
      expect(
        expectations[1],
        dateTimeFromWeekNumber(year, 10, DateTime.thursday),
      );
    });
    test('w52 saturday', () {
      expect(
        expectations[2],
        dateTimeFromWeekNumber(year, 52, DateTime.saturday),
      );
    });
    test('w53 wednesday', () {
      expect(
        expectations[3],
        dateTimeFromWeekNumber(year, 53, DateTime.wednesday),
      );
    });
  });
}

void main() {
  group('dateTimeFromWeekNumber', () {
    t(2020, [
      DateTime(2019, 12, 30),
      DateTime(2020, 03, 05),
      DateTime(2020, 12, 26),
      DateTime(2020, 12, 30),
    ]);
    t(2021, [
      DateTime(2021, 01, 04),
      DateTime(2021, 03, 11),
      DateTime(2022, 01, 01),
      DateTime(2022, 01, 05),
    ]);
    t(2022, [
      DateTime(2022, 01, 03),
      DateTime(2022, 03, 10),
      DateTime(2022, 12, 31),
      DateTime(2023, 01, 04),
    ]);
    t(2023, [
      DateTime(2023, 01, 02),
      DateTime(2023, 03, 09),
      DateTime(2023, 12, 30),
      DateTime(2024, 01, 03),
    ]);
    t(2024, [
      DateTime(2024, 01, 01),
      DateTime(2024, 03, 07),
      DateTime(2024, 12, 28),
      DateTime(2025, 01, 01),
    ]);
  });
}
