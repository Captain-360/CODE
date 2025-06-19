import "dart:io";
void main(){
  double? faranhit,culcus,ans;
  stdout.write("enter a tempreture in farenhit");
  culcus=(((faranhit!-32)*5)/9);
  stdout.writeln("culcus is :${culcus}");
  stdout.write("enter a tempreture in farenhit");
  faranhit=((culcus*1.8)+32);
  stdout.writeln("culcus is :${culcus}");
}