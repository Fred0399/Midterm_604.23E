import 'dart:math';
void main() {
  
  var triangle1 = Triangle(3,4,5);
  triangle1.area();
  
}

abstract class Shape {
  
  void area();
  
}

class Triangle extends Shape{
  
  late double side1;
  late double side2;
  late double side3;
  late double perimeter;
  late double s;
  late double u;
  
  Triangle(double side1, double side2, double side3){
    this.side1=side1;
    this.side2=side2;
    this.side3=side3;
  }
  
  void perimeterCalculation(){ // I mean it's the "u" in the formula not exactly Perimeter
    perimeter= (side1+side2+side3)/2;
  }
  
  void area() {
    perimeterCalculation();
    u = ((perimeter)*(perimeter-side1)*(perimeter-side2)*(perimeter-side3));
    final s = pow(u, 1/2);
    print(s);
  }
  
  
}