// Solution 6.1:
// what is the purpose of the "this" keyword in Dart Classes? provide an example of resolving name conflicts using "this".
// The "this" keyword refers to the current instance of the class.
// it's used when there's a name conflict between class properties and other constructors within the same class (this(...)).Syntax.
// example: Class Students{
//          String name;
//          int age;

//          Students(String name. int age){
//            this.name = name;
//            this.age = age;
//           }
//         } 



// Solution 6.2:
// Use a "while" loop to sum numbers from 1 to 10; 
// void main() {
//   int sum = 0;
//   int i = 1;

//   while (i <= 10) {
//     sum += i;
//     i++;
//   }

//   print('Sum is $sum');
// }





// Solution 6.3:
// Create a function that filters out numbers less than 50 from a list and returns the result.

List<int> filterLessThan50(List<int> numbers) {
  return numbers.where((n) => n >= 50).toList(); 
}

// void main() {
//   // NOTE: Problem statement says LESS than 50,
//   // Which clearly means that below problem's solution should be 23, 10, 48
//   List<int> nums = [23, 55, 10, 60, 48, 90];
//   print(filterLessThan50(nums));
// }
// and the result will be (55, 60, 90).






// Solution 6.4:
// Define a class "Person" with mixin "AgeCalculator" that computes age from birth year.

mixin AgeCalculator {
  int calculateAge(int birthYear) {
    int currentYear = DateTime.now().year;
    return currentYear - birthYear;
  }
}

class Person with AgeCalculator {
  String name;
  int birthYear;

  Person(this.name, this.birthYear);

  void showAge() {
    int age = calculateAge(birthYear);
    print('$name is $age years old.');
  }
}

void main() {
  Person p = Person('Mahdi', 2003);
  p.showAge();
}


