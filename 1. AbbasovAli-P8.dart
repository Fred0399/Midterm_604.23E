// Problem 1

// One of the differences between fold() and reduce() is that fold() 
// can take an initial value, when reduce() can't.
// The other difference is that reduce() can only be used in non-empty 
// lists with functions that return the same type as one in the list, 
// but fold can be used in every case.

//Problem 2:
int cubeOfNumber(int n) => n * n * n;

// Problem 4:
mixin CanFly {
  void fly() {
    print("Someone is flying...");
  }
}

class Bird with CanFly {
  String name = '';

  Bird(this.name);

  /// NOTE: We usually do not override methods in mixins.
  @override
  fly() {
    print("${this.name} is flying!");
  }

  void chirp() {
    print("${this.name} is saying 'Chirp Chirp!'");
  }
}

void main() {
  // Problem 2
  print("Problem 2: ${3} => ${cubeOfNumber(3)}");
  print("\n");

  // Problem 3
  List<int> num = [1, 2, 3, 4, 5];
  print("Problem 3: ${10} + ${num} => ${num.fold<int>(10, (a, b) => a + b)}");
  print("\n");

  // Problem 4
  print("Problem 4: \n");
  var babyChicken = Bird("Chicki");

  babyChicken.fly(); // btw chickens can't fly)
  babyChicken.chirp();
}
