import "dart:io";

void main() {
  stdout.writeln("enter a number");
  int? num1 = int.parse(stdin.readLineSync()!);
  if (num1 < 0) {
    stdout.writeln("negetive number");
  } else if (num1 == 0) {
    stdout.writeln("zero number");
  } else {
    stdout.writeln("positive number");
  }
}
