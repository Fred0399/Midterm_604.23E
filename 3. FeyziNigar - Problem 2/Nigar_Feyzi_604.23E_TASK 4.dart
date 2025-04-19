//firstly we create class circle
class Circle {
  final double radius;

  const Circle(this.radius); 

// here we create the method to calculate the area
  double area() {
    /// Note: Would be better to use dart math library for pi.
    return 3.1415 * radius * radius; 
  }
}

void main() {
  const circle = Circle(8);
  print("The area of the circle is: ${circle.area()}");
}
