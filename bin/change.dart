import 'dart:io';

class Coin {
  final num value;
  final String name;
  final String pluralName;

  Coin(this.value, this.name, this.pluralName);
}

class Change {
  static final coins = [new Coin(25, "Quarter", "Quarters"), new Coin(10, "Dime", "Dimes"), new Coin(5, "Nickel", "Nickels"), new Coin(1, "Penny", "Pennies")];
  static final coinNames = ["Quarters", "Dimes", "Nickels", "Pennies"];

  static void calculate(int cents) {
    for (var i in coins) {
      var count = cents ~/ i.value;
      cents %= i.value;
      stdout.writeln("${count != 1? i.pluralName: i.name}: $count"); //Use plural name if not 1.
    }
  }
}

void main() {
  stdout.write("Enter number of cents: ");
  Change.calculate(int.parse(stdin.readLineSync(), onError: (source) => 0)); //If anything goes wrong, use 0.
}