import "dart:io";
void main(){
  int? num1,num2;
  stdout.writeln("enter a first number");
  num1=int.parse(stdin.readLineSync()!);
  stdout.writeln("enter a secound number");
  num2=int.parse(stdin.readLineSync()!);
  stdout.writeln("addition is:${num1+num2}");
}