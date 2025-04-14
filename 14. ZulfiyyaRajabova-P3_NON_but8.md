// Question 1
In Dart, both and are used to reduce a list to a single value, but they have a key difference in their behavior, especially when handling edge cases like an empty list..reduce().fold()
1. reduce()
- İts purpose is combines all the elements of a list into a single value. reduce() doesn't have initial value. İt does not take an initial value. It starts with the first element and then applies the operation to the rest.If the list is empty, it throws an error because there's no initial value to start with.
  FOR EXAMPLE
  var numbers = [1, 2, 3, 4];
  var sum = numbers.reduce((a, b) => a + b);
  Result:  //1 + 2 + 3 + 4 = 10
2. fold()
- Its purpose is similar to .reduce(), but it allows you to provide an initial value to start the combination.  fold() has initial value.  We can specify an initial value that will be used in the first iteration.  If the list is empty, it will return the initial value.
FOR EXAMPLE
var numbers = [1, 2, 3, 4];
var sum = numbers.fold(0, (a, b) => a + b);
Result :  // 0 + 1 + 2 + 3 + 4 = 10



//Question 2
void main() {
  num cube(num n) => n * n * n;
  print(cube(11)); 
  print(cube(17)); 
} 



//Question 3
void main(){
  List <int> numbers = [6,7,2,13,16];
  int sum = numbers.fold(10, (previous, current) => previous + current);
  print('Sum= $sum'); 
}



//Question 4
mixin CanFly {
  void fly() {
    print('The bird is flying.');
  }
}
class Bird with CanFly {
  void chirp() {
    print('Chirp! Chirp!');
  }
}
void main() {
  var bird = Bird();
  bird.fly();  
  bird.chirp(); 
}
