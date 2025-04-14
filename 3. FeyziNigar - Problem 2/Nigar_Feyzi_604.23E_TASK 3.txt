void displayStudentProfile({
  String name = 'Unknown',
  int age = 0,
  String grade = 'Not Assigned',
  String major = 'Undeclared',
}) {
  print('- Student Profile -');
  print('Name: $name');
  print('Age: $age');
  print('Grade: $grade');
  print('Major: $major');
  print('\n');
}

void main() {

  // f.ex here we declared all values
  displayStudentProfile(
    name: 'Nigar',
    age: 18,
    grade: 'A+',
    major: 'Computer Science',
  );

  // f.ex here we used default values
  displayStudentProfile();

  // f.ex here we declared some values, while others are unknown
  displayStudentProfile(name: 'Ulviyya', age: 20);


}
