// Problem statement  clearly says numbers less than 50, so case should be ( number < 50 ), 
// Should be printed out.
// But in your problem numbers printed out are higher or equal than 50;

List<int> filterNumbers(List<int> numbers) {
  return numbers.where((number) => number >= 50).toList();   // ---- toList : Collects all elements of this stream in a List.
}

void main() {
  var numbers = [10, 25, 50, 75, 100, 40, 60];  // --- This is our List
  var filteredNumbers = filterNumbers(numbers);   // --- Elects our numbers
  
  print(filteredNumbers); 
}
