// Problem 13

// Ex 1:
// map()

// In general, a map is an object that associates keys and values. Both keys and values can be any type of object. Each key occurs only once, but you can use the same value multiple times. Dart support for maps is provided by map literals and the Map type.

// The where() method is conventionally named “filter()” in other languages out there, such as Java and Javascript. It accepts a collection of items and a condition, filters the collection based on the condition and returns a new collection of filtered items.
/// /// NOTE: Original answer confuses Map data structure with map() method. Should explain:
/// map() - transforms elements (e.g., numbers.map((n) => n * 2))
/// where() - filters elements (e.g., numbers.where((n) => n % 2 == 0))
 
// Ex 2:

// void main(){
//   int? value1 = 5;
//   int? value2 = null;
//   int? value3 = 10;
  
//   int sum = (value1 ?? 0) + (value2 ?? 0) + (value3 ?? 0) ;
//   print('Sum: $sum');
// }

// Ex 3 :
/// NOTE: Would be better to check if weight & height is 0 or not.
String bmi_calc (double weight,double height){
  
  double bmi_calc = weight / (height * height);
  
  if (bmi_calc < 18.5){
    return 'Underweight';
  }
  else if (bmi_calc >= 18.5 && bmi_calc <= 25 ) {
    return 'Normal';
  }
  
  else if (bmi_calc >= 25 && bmi_calc <= 30) {
    return 'Overweight';
  }
 
  else {
    return 'Obese';
  }
}

// void main(){
//   print(bmi_calc(57, 1.70));  
//   print(bmi_calc(60, 1.75));  
//   print(bmi_calc(66, 1.90));  
//   print(bmi_calc(100, 2.10)); 

// }

// Ex 4:

/// NOTE: Should have print statements to see the output.
class Person {
  String name;
  int age;
  
  // Person(his.name, his.age); Your code for constructor is wrong.
  Person(this.name, this.age); // NOTE: Correct code.
  

  void displayInfo() {
    print('Person: $name, $age years old');
  }
  

  String toString() => 'Person(name: $name, age: $age)';
}

class Employee extends Person {
  String employeeId;
  double salary;
  

  Employee(String name, int age, this.employeeId, this.salary) 
      : super(name, age);
  
  @override
  void displayInfo() {
    super.displayInfo(); // Call parent's method
    print('Employee ID: $employeeId, Salary: \$${salary.toStringAsFixed(2)}');
  }
  
  void work() {
    print('$name is working');
  }
  
  @override
  String toString() => 'Employee(name: $name, age: $age, id: $employeeId, salary: $salary)';
}

class Manager extends Employee {
  String department;
  List<String> teamMembers;
  
  Manager(String name, int age, String employeeId, double salary, 
         this.department, this.teamMembers)
      : super(name, age, employeeId, salary);
  

  void displayInfo() {
    super.displayInfo(); 
    print('Manager of $department department with ${teamMembers.length} team members');
  }
  
  void conductMeeting() {
    print('$name is conducting a meeting with the $department team');
  }
  

  String toString() => 'Manager(name: $name, age: $age, id: $employeeId, '
      'salary: $salary, department: $department, team: $teamMembers)';
}

/// NOTE: Should have print statements to see the output.
void main() {
  var person = Person('John Doe', 30);
  var employee = Employee('Alice Smith', 28, 'EMP123', 50000);
  var manager = Manager('Bob Johnson', 45, 'MGR456', 90000, 
                       'Engineering', ['Ferid', 'Vusal', 'Sabuhi']);
  
}