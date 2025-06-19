import 'dart:io';

void main() {
  int? num;
  int sum = 0, min = 0;
  while (num != 0) {
    stdout.writeln("enter a number");
    num = int.parse(stdin.readLineSync()!);
    if (num > 0 && num % 2 == 0) {
      sum += num;
    } else if (num < 0 && num % 2 != 0) {
      min -= num;
    }
  }
  stdout.writeln("sum of all positive even number is : $sum");
  stdout.writeln("min of all negetive odd number is : $min");
}
