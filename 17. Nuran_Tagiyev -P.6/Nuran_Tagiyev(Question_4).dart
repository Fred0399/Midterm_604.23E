// Our Mixin
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
 
 void displayInfo() {
    print("Name: $name");
    print("Age: ${calculateAge(birthYear)} years old");
  }
}

void main() {
  Person person = Person('Nuran', 2006);
  person.displayInfo();
}
