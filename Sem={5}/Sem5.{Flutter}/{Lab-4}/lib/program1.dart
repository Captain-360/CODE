import 'dart:io';

void main() {
  int? p1, p2;
  stdout.writeln("enter a first point");
  p1 = int.parse(stdin.readLineSync()!);
  stdout.writeln("enter a secound point");
  p2 = int.parse(stdin.readLineSync()!);
  for (int i = p1; i <= p2; i++) {
    if (i % 2 == 0 && i % 3 != 0) {
      stdout.writeln("\t $i");
    }
  }
}
