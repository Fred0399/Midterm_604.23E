// TASK 3.
List<String> namesStartWithS(List<String> names) {
  return names.where((name) => name.startsWith('S')).toList();
}
void main() {
  List<String> names = ['Sevinc', 'Asiman', 'Sara', 'John', 'Starlink', 'Fatime'];

  /// NOTE: It does not find the names that start with 's' because the method is case-sensitive.
  ///  List<String> names = ['Sevinc', 'Asiman', 'sara', 'John', 'Starlink', 'Fatime'];

  List<String> filteredNames = namesStartWithS(names);

  print('Names start with S: $filteredNames');
}
