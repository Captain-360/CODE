import 'dart:io';
void main(){
  stdout.writeln("enter a length of list");
  int len = int.parse(stdin.readLineSync()!);
  list_sum(len);
}
void list_sum(int len){
  List<int> array1 = [];
  int sum=0;
  for(int i=0;i<len;i++){
      stdout.writeln("enter a number");
      int n = int.parse(stdin.readLineSync()!);
      array1.add(n);
  }
  for(int i=0;i<len;i++){
      if(array1[i]%3==0 || array1[i]%5==0){
            sum+=array1[i];
      }
  }

  for(int i=0;i<len;i++){
    stdout.write(" \t ${array1[i]}");
  }
  stdout.writeln("");
  stdout.writeln("ans is : ${sum}");
}