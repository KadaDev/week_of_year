import 'package:test/test.dart';

import 'package:week_of_year/week_of_year.dart';

void t(int year, List<int> expectations) {
  group('$year', () {
    test('January 1st', () {
      expect(DateTime(year, 1, 1).weekOfYear, expectations[0]);
    });
    test('Last of February', () {
      expect(
        DateTime(year, 2, DateTime(year).isLeapYear ? 29 : 28).weekOfYear,
        expectations[1],
      );
    });
    test('December 31st', () {
      expect(DateTime(year, 12, 31).weekOfYear, expectations[2]);
    });
  });
}

void main() {
  group('week_of_year', () {
    t(1990, [1, 9, 1]);
    t(1991, [1, 9, 1]);
    t(1992, [1, 9, 53]);
    t(1993, [53, 8, 52]);
    t(1994, [52, 9, 52]);
    t(1995, [52, 9, 52]);
    t(1996, [1, 9, 1]);
    t(1997, [1, 9, 1]);
    t(1998, [1, 9, 53]);
    t(1999, [53, 8, 52]);
    t(2000, [52, 9, 52]);
    t(2001, [1, 9, 1]);
    t(2002, [1, 9, 1]);
    t(2003, [1, 9, 1]);
    t(2004, [1, 9, 53]);
    t(2005, [53, 9, 52]);
    t(2006, [52, 9, 52]);
    t(2007, [1, 9, 1]);
    t(2008, [1, 9, 1]);
    t(2009, [1, 9, 53]);
    t(2010, [53, 8, 52]);
    t(2011, [52, 9, 52]);
    t(2012, [52, 9, 1]);
    t(2013, [1, 9, 1]);
    t(2014, [1, 9, 1]);
    t(2015, [1, 9, 53]);
    t(2016, [53, 9, 52]);
    t(2017, [52, 9, 52]);
    t(2018, [1, 9, 1]);
    t(2019, [1, 9, 1]);
    t(2020, [1, 9, 53]);
  });
}
