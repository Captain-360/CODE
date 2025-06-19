import 'dart:io';

void main(){
    stdout.writeln("area of circle: ${circle_a(3, 5)}");
    stdout.writeln("area of tringle: ${tringle_a(30, 54)}");
    stdout.writeln("area of squre :${squre(3)}");

}
double circle_a(double pi,double r){
    return pi*r*r;
}
double tringle_a(double b,double h){
  return 0.5*b*h;
}
double squre(double s){
  return s*s;
}