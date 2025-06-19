import 'dart:io';
void main(){
  stdout.writeln("enter a number");
  int l = int.parse(stdin.readLineSync()!);
  maxList(l);
}
void maxList(int l){
  List<int> list1 = [];
  int n,c_o=0,c_e=0;
  for(int i=0;i<l;i++){
  stdout.writeln("enter a number");
    n=int.parse(stdin.readLineSync()!);
      list1.add(n);
  }
  for(int i=0;i<l;i++){
   if(list1[i]%2==0){
        c_e++;
   }
   else{
        c_o++;
   }
  }
  stdout.writeln("number of odd is ${c_o}");
  stdout.writeln("number of even is ${c_e}");
}