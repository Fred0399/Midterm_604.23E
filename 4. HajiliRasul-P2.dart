/* FIRST TASK:
We use the abstract modifier is used to define a class that doesn't require a full, concrete implementation of its entire interface,.
The difference between concrete(mixin) class and abstract class is that abstract classes cannot be constructed from any library, whether its own or an outside library and it allows for polymorphism. 
*/

import "dart:math";

//SECOND TASK:
void secondTask() {
  for (int i = 1; i < 50; i++) {
    if (i % 3 == 0) {
      print("$i");
    }
  }
}


/// Note: In problem description, it is said that to use Named parameters. But in the example, it is used as positional parameters and none of the the parameters are named. Besides, you forgot to add default values to the parameters, correctly.
//THIRD TASK:
void thirdTask(String? Surname, [String? studentName]) {
  print('Student full name:$studentName $Surname');
  int age = 19;
  print('Age:$age');
  String subject = 'Programming Technologies';
  print('Subject:$subject');
  int grade = 91;
  switch (grade) {
    case (>= 91):
      print('Grade:A');
      break;
    case (>= 81 && < 91):
      print('Grade:B');
      break;
    case (>= 71 && < 81):
      print('Grade:C');
      break;
    case (>= 61 && < 71):
      print('Grade:D');
      break;
    case (>= 51 && < 61):
      print('Grade:E');
      break;
    case (< 51):
      print('Grade:F');
      break;
  }
}

//FOURTH TASK:
class Circle {
  const Circle(int r);
  double Area(int r) {
    return pi * r * r;
  }
}

void main() {
  String? studentName;
  print('Second Task:\n');
  secondTask();

  print('\n');
  print('Third Task:\n');
  thirdTask('Hajili', studentName = 'Rasul');

  print('\n');
  var fourthTask = Circle(5);
  print('Fourth Task:\n');
  print('Circle area:');
  print(fourthTask.Area(5));
}
