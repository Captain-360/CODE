import 'dart:io';
void main(){
  stdout.writeln("enter a principal amount");
  double p=double.parse(stdin.readLineSync()!);
  stdout.writeln("enter a rate of amount");
  double r=double.parse(stdin.readLineSync()!);
  stdout.writeln("enter a net time amount");
  double n=double.parse(stdin.readLineSync()!);
  stdout.writeln(simple_intrest(p, n, r));
}
double simple_intrest(double p,double n,[double r=1]){
  return (p*n*r)/100;
}