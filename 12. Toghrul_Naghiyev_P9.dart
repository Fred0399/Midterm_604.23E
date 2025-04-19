// Problem 9

// 1. What is the role of an abstract class in Dart? How is it different from a concrete class or a mixin? [4 points]

// Answer :

// An abstract class in Dart. It helps developers create clases.
// You cannot create object from  abstract class directly instead, you use it to create other classes that will fill in the missing parts

//  Differences:

//  Instantiation
//   abstract class cannot be instantiated directly It is mean to be used as  base for other clases
//   concrete clas can be instantiated as it has all the methods and properties needed
//    mixin cannot be used to create an object by itself it is used to add features to other clases

//   WHAT TO DO
//   abstract classsets rules for other clases ensuring that certain methods are included in the subclasses
//    concrete class is a complete class that can perform specific tasks and you can create objects from it
//   mixin allows you to share code between different classes without needing a strict parent(child) relationship

//   Inheritance
//   abstract class  can inherit from other classes and can have its own constructor
//    concrete clas can also inherit from other classes and can be used to create objects
//     mixin  cannot inherit from other classes and is used to add features to other classes

//  abstract classes concrete classes, and mixins help organize and reuse code in Dar, each serving a different purpose

// 2. Write a function that returns the middle value of a sorted list of odd length. [3 points]

// ANSWER :

int middleValue(List<int> sortedList) {
  //  get the length of the list
  int length = sortedList.length;

  //   calculate  middle index

  int middleindex = (length / 2).toInt();

  // NOTE: couldn't run your program because of variable differences, you should at least run your code
  // int middlelement = sortedList[middleIndex]; // YOUR VERSION
  int middleElement = sortedList[middleindex]; // Fixed version

  return middleElement;
}

// void main() {
//   // example sorted list of odd length
//   List<int> sortedList = [1, 3, 5, 7, 9];

//   int middle = middleValue(sortedList);

//   print('The middle value is: $middle');
// }

// 3. Use where()' and '.reduce() to filter number above 50 and calculate their sum. [5 points]

// ANSWER :
// void main() {
//   // Example list of integers
//   List<int> numbers = [10, 55, 23, 78, 45, 90, 12, 67];

//   //  yse where() for filter
//   Iterable<int> filteredNumbers = numbers.where((int number) => number > 50);

//  // declare
//   int total= 0;

//   if (filteredNumbers.isNotEmpty) {
//     total = filteredNumbers.reduce((int value, int element) => value + element);
//   }

//   print('The sum of numbers above 50 are: $total');
// }

// 4. Design a class 'Task' with fields and a 'complete() method that updates task state and logs the change.

class Task {
  // Fields
  String title;
  String description;
  bool isCompleted;

  // conctructor
  Task(this.title, this.description) : isCompleted = false;

  //function
  void complete() {
    if (!isCompleted) {
      isCompleted = true;
      logChange();
    } else {
      print('Task "$title" is already completed.');
    }
  }

  void logChange() {
    print('Task "$title" has been marked as completed.');
  }

  //  to display task fields
  void display() {
    String status;
    if (isCompleted) {
      status = 'Completed';
    } else {
      status = 'Not Completed';
    }

    print('Task: $title\nDescription: $description\nStatus: $status');
  }
}

void main() {
  // Create task
  Task task1 = Task('Finish Homework', 'Complete the math homework by tomorrow.');
 
  task1.display();
 
  task1.complete();
 
  task1.display();
 
  task1.complete();
}
     