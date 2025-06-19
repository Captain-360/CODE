import 'dart:io';

void main() {
  stdout.writeln("enter a first number");
  int? n1 = int.parse(stdin.readLineSync()!);
  stdout.writeln("enter a secound number");
  int? n2 = int.parse(stdin.readLineSync()!);
  stdout.writeln("enter a third number");
  int? n3 = int.parse(stdin.readLineSync()!);
  int max = (n1 > n2) ? ((n1 > n3) ? n1 : n3) : ((n2 > n3) ? n2 : n3);
  stdout.writeln("result is : $max");
}
