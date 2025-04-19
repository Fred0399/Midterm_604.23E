// Problem 4

//No. 1
//Abstract class is a class that cannot be instantiated;
//It's like incomplete blueprint.
//Used to define a base class that other classes can extend;
//Contains abstract methods (without implementation)
//Abstract classes are useful when many classes share the same structure but have different behaviors.
// But Mixin is a way to reuse code in multiple classes without inheritance.
//It’s like giving a class extra abilities, like saying "now you can also swim!"
//You can’t create an object from a mixin.
//You define it using the mixin keyword and add it to a class with the with keyword.
//A class is like a blueprint or template for creating things (called objects).
//Use class for encapsulation, modularity and reusability.
// In Dart we use class keyword.

//No. 2
/* 
int factorialIterative(int n) {
  /// NOTE: would be better to check negativity of numbers
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}

void main() {
  int number = 2;
  print("Factorial of $number is: ${factorialIterative(number)}");
}
*/

//No. 3
/* 
class Book {
  String? title;
  String? author;

  Book() {
    print("This is a default constructor");
  }

/// Your version
  Book.untitled(
    String title,
    String author, [
    String titl = "Title",
    String autho = "Author",
  ]) {
    this.title = title;
    this.author = author;
  }

  // NOTE:  Correct version
  // Book.untitled([String title="Title", String author = "Author"]){
  //   this.title = title;
  //   this.author = author;
  // }
}

void main() {
  Book book = Book.untitled("Harry Potter", "Joahn");
  print("Title: ${book.title}");
  print("Author: ${book.author}");
}

*/


//No. 4
/*
/// NOTE: couldn't run your code properly;
abstract class InterfaceVehicle {
  
  void start();

 
// NOTE: there is no weight parameter of this class, 
// then why do you as for a parameter in this constructor?
  InterfaceVehicle({required this.weight});
}

abstract class Bike extends InterfaceVehicle {
  Bike({required super.weight});

  @override
  void start() {
    print('Bike is rolling into deep');
  }
}

class Car implements InterfaceVehicle {
  @override
  final int weight;

  Car({required this.weight});

  @override
  void start() {
    print('Car is rolling into deep');
  }
}

void main() {
  
  Car car = Car(weight: 1500);
  car.start(); 

  // NOTE: ConcreteBike is not defined at all!
 ConcreteBike bike = ConcreteBike(weight: 10);
   bike.start(); 
}
*/