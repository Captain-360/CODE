import 'dart:io';

void main() {
  stdout.writeln("enter a first number");
  int? n1 = int.parse(stdin.readLineSync()!);
  stdout.writeln("enter a secound number");
  int? n2 = int.parse(stdin.readLineSync()!);
  stdout.writeln("enter a third number");
  int? n3 = int.parse(stdin.readLineSync()!);
  int max = n1;
  if (n2 > max) {
    max = n2;
  }
  if (n3 > max) {
    max = n3;
  }
  stdout.writeln("result is : $max");
}
