import "dart:io";

void main() {
  stdout.writeln("enter a number");
  int orignelnum = int.parse(stdin.readLineSync()!);
  int num = orignelnum;
  int rev = 0, rem = 0;
  while (num > 0) {
    rem = num % 10;
    rev = (rev * 10) + rem;
    num ~/= 10;
  }
  stdout.writeln("reverse of $orignelnum is : $rev");
}
