import "dart:io";
void main(){
  int? sub1 = int.parse(stdin.readLineSync()!);
  int? sub2 = int.parse(stdin.readLineSync()!);
  int? sub3 = int.parse(stdin.readLineSync()!);
  print('sum of marks');
  int? ans = sub1+sub2+sub3;
  print(ans);
}