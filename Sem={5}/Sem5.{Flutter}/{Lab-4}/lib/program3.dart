import 'dart:io';
import 'dart:math';

void main() {
  bool flag = false;
  stdout.writeln("enter a number");
  int num = int.parse(stdin.readLineSync()!);
  if (num > 0 && num < 2) {
    flag = false;
  }
  for (int i = 2; i <= sqrt(num); i++) {
    if (num % i == 0) {
      flag = false;
    } else {
      flag = true;
    }
  }
  if (flag == true) {
    stdout.writeln("prime number");
  } else {
    stdout.writeln("not prime number");
  }
}
