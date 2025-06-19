import "dart:io";
void main(){
  double? s1,s2,s3,s4,s5;
  stdout.writeln("enter a first subject marks:");
  s1=double.parse(stdin.readLineSync()!);
  stdout.writeln("enter a secound subject marks:");
  s2=double.parse(stdin.readLineSync()!);
  stdout.writeln("enter a third subject marks:");
  s3=double.parse(stdin.readLineSync()!);
  stdout.writeln("enter a fourth subject marks:");
  s4=double.parse(stdin.readLineSync()!);
  stdout.writeln("enter a fifth subject marks:");
  s5=double.parse(stdin.readLineSync()!);
  double? sum = (s1+s2+s3+s4+s5);
  double? pr = ((sum*100)/500);
  stdout.writeln(pr);
}