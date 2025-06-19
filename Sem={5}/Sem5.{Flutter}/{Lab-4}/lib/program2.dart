import 'dart:io';

void main() {
  stdout.writeln("enter a number");
  double fact = 1, num;
  num = double.parse(stdin.readLineSync()!);
  for (double i = 1; i <= num; i++) {
    fact *= i;
  }
  stdout.writeln("fact is : $fact");
}
