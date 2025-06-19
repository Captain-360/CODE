import "dart:io";
void main(){
  stdout.writeln("enter a first number");
  int a=int.parse(stdin.readLineSync()!);
  stdout.writeln("enter a secound number");
  int b=int.parse(stdin.readLineSync()!);
  stdout.writeln(max_two(a, b));
}
int max_two(int a,int b){
  if(a>b){
    return a;
  }
  else{
    return b;
  }
}