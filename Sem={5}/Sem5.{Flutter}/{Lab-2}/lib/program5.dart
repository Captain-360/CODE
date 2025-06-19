import 'dart:io';
void main(){
  String? name;
  String? age;
  stdout.writeln('enter a name');
  name=stdin.readLineSync()!;
  stdout.writeln('enter a age');
  age=stdin.readLineSync()!;
  stdout.writeln("concate:${name} ${age}");
}