problem 4.1:
 What is the role of an abstract class in Dart? How is it different from a concrete class or a mixin?
Abstract Class in Dart:

An abstract class is a class that cannot be instantiated directly. It is used to define a common interface or structure for other classes. Abstract classes can contain:

Abstract methods (without a body)

Concrete methods (with implementation)

The main purpose of an abstract class is to act as a base class from which other classes can inherit and override the abstract methods.

In Dart, a class can only extend one other class. But it can implement or mixin as many as you want.

 ******Concrete Class
1.A concrete class can be instantiated (you can create objects from it).

2.It contains full implementation of all its methods.

3.It does not have abstract methods.

4.It is used when you want a complete, usable class.
*****Mixin
1.A mixin is not a class, but a way to share methods between multiple classes.

2.You cannot instantiate a mixin.

3.Mixins do not have constructors.

4.Mixins are used with the with keyword to add functionality to classes without inheritance.

Problem 4.2:
void main(){
  print("Factorial of 7 is ${factorial(7)}");
}
int factorial(int n) {
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}

Problem 4.3:
void main(){
  Book myBook = Book.untitled();
  print("Book Title: ${myBook.title}, Author: ${myBook.author}");
  
}
class Book {
  String title;
  String author;

  Book(this.title, this.author);

  Book.untitled()
      : title = "Untitled",
        author = "Unknown";
}
problem 4.4:
abstract class Vehicle {
  void start();
}

class Car implements Vehicle {
  @override
  void start() {
    print("Car is start...");
  }
}

class Bike implements Vehicle {
  @override
  void start() {
    print("Bike is start...");
  }
}


void main(){
 Vehicle car = Car();
  Vehicle bike = Bike();
  car.start();
  bike.start();
}


Problem 4.4:
abstract class Vehicle {
  void start();
}

class Car implements Vehicle {
  @override
  void start() {
    print("Car is start...");
  }
}

class Bike implements Vehicle {
  @override
  void start() {
    print("Bike is start...");
  }
}


void main(){
 Vehicle car = Car();
  Vehicle bike = Bike();
  car.start();
  bike.start();
}
