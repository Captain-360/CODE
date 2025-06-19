import "dart:io";

void main() {
  stdout.writeln("enter a sign");
  String? sign = stdin.readLineSync()!;
  stdout.writeln("enter a first number");
  double? num1 = double.parse(stdin.readLineSync()!);
  stdout.writeln("enter a secound number");
  double? num2 = double.parse(stdin.readLineSync()!);

  // if (sign == '+') {
  //   stdout.writeln("answer is: ${num1 + num2}");
  // } else if (sign == '-') {
  //   stdout.writeln("answer is: ${num1 - num2}");
  // } else if (sign == '*') {
  //   stdout.writeln("answer is: ${num1 * num2}");
  // } else if (sign == '/') {
  //   stdout.writeln("answer is: ${num1 / num2}");
  // }

  switch (sign) {
    case '+':
      stdout.writeln("answer is: ${num1 + num2}");
      break;
    case '-':
      stdout.writeln("answer is: ${num1 - num2}");
      break;
    case '*':
      stdout.writeln("answer is: ${num1 * num2}");
      break;
    case '/':
      stdout.writeln("answer is: ${num1 / num2}");
      break;
    default:
      stdout.writeln("none");
  }
}
