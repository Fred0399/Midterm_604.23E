void main() {
  List<String> numbers = ['oneeeee', 'twoee', 'three'];
  numbers.sort((a, b) => a.length.compareTo(b.length));
  print(numbers);
}
