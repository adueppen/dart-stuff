import 'package:test/test.dart';
import '../bin/easter.dart';

void main() {
  test("Easter 2018 should be on April 1", () {expect(Easter.calculateEaster(2018), equals(new DateTime(2018, 4, 1)));});
  test("Easter 2017 should be on April 16", () {expect(Easter.calculateEaster(2017), equals(new DateTime(2017, 4, 16)));});
  test("Easter 2016 should be on March 27", () {expect(Easter.calculateEaster(2016), equals(new DateTime(2016, 3, 27)));});
}