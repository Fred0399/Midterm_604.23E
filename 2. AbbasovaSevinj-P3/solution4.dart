// TASK 4.
abstract class Shape {
  double area();
}

class Triangle extends Shape {
  /// NOTE: It's better to use final variables. 
  /// For example, final double base;
  /// 
  double base;
  double height;
  
  Triangle(this.base, this.height);
  
  double area() {
    return (base * height)/2;
  }
}

void main() {
  var triangle = Triangle(15, 10);
  print('Area of the triangle: ${triangle.area()}');
}
