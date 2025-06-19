import 'dart:io';
void main() {
  stdout.writeln("enter a name");
  String name = stdin.readLineSync()!;
  String r_name = name.split("").reversed.join("");
  stdout.writeln("ans is : ${r_name}");
}
