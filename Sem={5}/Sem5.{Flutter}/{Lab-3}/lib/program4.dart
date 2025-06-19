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
  stdout.writeln("This is your parsentage : $pr");
  if(pr<35){
    stdout.writeln("Your Result is Fali");
  }
  else if(pr>=35&&pr<=45){
    stdout.writeln("Your Result Grade is Pass Class");
  }
  else if(pr>45&&pr<=60){
    stdout.writeln("Your Result Grade is Secound Class");
  }
  else if(pr>60&&pr<=70){
    stdout.writeln("Your Result Grade is First Class");
  }
  else{
    stdout.writeln("Your Result Grade is Distinction");
  }
}