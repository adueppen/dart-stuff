import 'dart:io';

class Easter {
  ///Calculates the date of easter based off of Butcher's algorithm. Slightly compacted in order to use fewer variables
  static DateTime calculateEaster(int year) {
    var a = year ~/ 100;
    var b = (19 * (year % 19) + a - a ~/ 4 - (a - (a + 8) ~/ 25 + 1) ~/ 3 + 15) % 30;
    var c = (32 + 2 * a % 4 + 2 * (year % 100 ~/ 4) - b - year % 100 % 4) % 7;
    var d = b + c - 7 * ((year % 19 + 11 * b + 22 * c) ~/ 451) + 114;
    return new DateTime(year, d ~/ 31, d % 31 + 1);
  }
}

void main() {
  stdout.write("Enter year: ");
  var date = Easter.calculateEaster(int.parse(stdin.readLineSync(), onError: (source) => new DateTime.now().year)); //If anything goes wrong, use current year.
  stdout.writeln("Easter in ${date.year} is on ${date.month == 3? "March": "April"} ${date.day}."); //Prints either March or April for month.
}