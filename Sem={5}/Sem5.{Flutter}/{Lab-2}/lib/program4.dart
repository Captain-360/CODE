import 'dart:io';
void main(){
  double? wight,height;
  stdout.writeln("enter a wight in pound");
  wight=double.parse(stdin.readLineSync()!);
  stdout.writeln("enter a height in inch");
  height=double.parse(stdin.readLineSync()!);
  double? kg=0.45359237 * wight;
  double? inch=0.0254 * height;
  double ans = (kg/inch*inch);
  stdout.writeln(ans);
}