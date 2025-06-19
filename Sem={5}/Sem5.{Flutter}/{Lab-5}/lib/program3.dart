import 'dart:io';
import 'dart:math';
void main(){
  stdout.writeln("enter a number");
  double num=double.parse(stdin.readLineSync()!);
  prime(num);
}

void prime(double n) {
  bool flag = false;
  if (n == 0 && n == 1) {
    flag = true;
  }
  else {
    for (double i = 2; i <= sqrt(n); i++) {
      if (n % i == 0) {
        flag = true;
      }
      else {
        flag = false;
      }
    }
    if(flag==true){
      stdout.writeln("number is not prime");
    }
    else{
      stdout.writeln("number is prime");
    }
  }
}