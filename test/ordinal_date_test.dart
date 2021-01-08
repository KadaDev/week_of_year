import 'package:test/test.dart';

import 'package:week_of_year/week_of_year.dart';

void t(int year, List<int> expectations) {
  group('$year', () {
    test('January 5', () {
      expect(DateTime(year, 1, 5).ordinalDate, expectations[0]);
    });
    test('Last of February', () {
      expect(
        DateTime(year, 2, DateTime(year).isLeapYear ? 29 : 28).ordinalDate,
        expectations[1],
      );
    });
    test('March 8', () {
      expect(DateTime(year, 3, 8).ordinalDate, expectations[2]);
    });
    test('April 16', () {
      expect(DateTime(year, 4, 16).ordinalDate, expectations[3]);
    });
    test('May 20', () {
      expect(DateTime(year, 5, 20).ordinalDate, expectations[4]);
    });
    test('June 25', () {
      expect(DateTime(year, 6, 25).ordinalDate, expectations[5]);
    });
    test('July 30', () {
      expect(DateTime(year, 7, 30).ordinalDate, expectations[6]);
    });
    test('August 12', () {
      expect(DateTime(year, 8, 12).ordinalDate, expectations[7]);
    });
    test('September 18', () {
      expect(DateTime(year, 9, 18).ordinalDate, expectations[8]);
    });
    test('October 21', () {
      expect(DateTime(year, 10, 21).ordinalDate, expectations[9]);
    });
    test('November 26', () {
      expect(DateTime(year, 11, 26).ordinalDate, expectations[10]);
    });
    test('December 31', () {
      expect(DateTime(year, 12, 31).ordinalDate, expectations[11]);
    });
  });
}

void main() {
  group('ordinalDate', () {
    t(2000, [5, 60, 68, 107, 141, 177, 212, 225, 262, 295, 331, 366]);
    t(2001, [5, 59, 67, 106, 140, 176, 211, 224, 261, 294, 330, 365]);
    t(2003, [5, 59, 67, 106, 140, 176, 211, 224, 261, 294, 330, 365]);
    t(2004, [5, 60, 68, 107, 141, 177, 212, 225, 262, 295, 331, 366]);
  });
}
