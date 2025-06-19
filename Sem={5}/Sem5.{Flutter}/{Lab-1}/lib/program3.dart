import "dart:io";
void main() {
  int? a = int.parse(stdin.readLineSync()!);
  int? b = int.parse(stdin.readLineSync()!);
  int? ans = a+b;
  print("ans of addition is ${ans}");
}