//Task1

// The map method in Dart is a powerful tool for converting a Dart List to a Dart Map. 
// This method applies a supplied function to each element in the list and creates a new iterable with 
// the transformed elements. The transformed elements can then be converted to a map using the Map.

//The `where` method in Dart is a powerful tool for filtering elements in collections like lists. 
//It takes a predicate function as an argument and returns a new iterable containing only the elements 
//that satisfy the condition.

/// NOTE: Explanation does not fully cover the question. Examples for use cases should be provided.

//Task2 

// int? a;
// int b=5;
// main(){

//   int sum(int a, int b) {
//     return a+b;
//   }
  
//   print(sum(a ?? 0 , 5));
 
// }


//Task3 

import 'dart:math';

String calcBMI(double height, double weight) {
  if (height <= 0 || weight <= 0) {
    return "Invalid input: Height and weight must be positive values.";
  }

  double bmi = weight / (pow(height, 2));

  if (bmi < 18) {
    return "Underweight";
  } else if (bmi < 25) {
    return "Normal";
  } else if (bmi < 30) {
    return "Overweight";
  } else {
    return "Obese";
  }
}

// void main() {

//   double height = 1.75; // cm
//   double weight = 70; // kg

//   String bmiCategory = calcBMI(height, weight);
//   print("BMI Category: $bmiCategory");

//   height = 1.60;
//   weight = 45;
//   bmiCategory = calcBMI(height, weight);
//   print("BMI Category: $bmiCategory");

//   height = 1.80;
//   weight = 95;
//   bmiCategory = calcBMI(height, weight);
//   print("BMI Category: $bmiCategory");

//   height = 0;
//   weight = 70;
//   bmiCategory = calcBMI(height, weight);
//   print("BMI Category: $bmiCategory");
// }



//Task4
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo() {
    print('Name: $name, Age: $age');
  }


  String toString() {
    return 'Person{name: $name, age: $age}';
  }
}

class Employee extends Person {
  String employeeId;
  String department;

  Employee(String name, int age, this.employeeId, this.department)
      : super(name, age);


  void dispInfo() {
    super.displayInfo();
    print('Employee ID: $employeeId, Department: $department');
  }

  void work() {
    print('$name is working in $department.');
  }


  String toString() {
    return 'Employee{employeeId: $employeeId, department: $department, ${super.toString()}';
  }
}

class Manager extends Employee {
  List<Employee> subordinates;

  Manager(String name, int age, String employeeId, String department,
      this.subordinates)
      : super(name, age, employeeId, department);

  void manage() {
    print('$name is managing the $department department.');
  }

  void addSubordinate(Employee employee) {
    subordinates.add(employee);
  }

  void displaySubordinates() {
    if (subordinates.isEmpty) {
      print('$name has no subordinates.');
    } else {
      print('$name\'s subordinates:');
      for (var employee in subordinates) {
        print('- ${employee.name}');
      }
    }
  }

  void dispInfo() {
    super.dispInfo();
    displaySubordinates();
  }

  String toString() {
    return 'Manager{subordinates: $subordinates, ${super.toString()}';
  }
}

void main() {
  var person = Person('Alice', 30);
  person.displayInfo();
  print(person);

  var employee = Employee('Bob', 25, 'E123', 'Engineering');
  employee.dispInfo();
  employee.work();
  print(employee);

  var manager = Manager('Charlie', 40, 'M456', 'Sales', []);
  manager.addSubordinate(employee);
  manager.displayInfo();
  manager.manage();
  print(manager);
}
