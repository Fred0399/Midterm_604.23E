/// Note: only prime numbers should be printed;

void main() {
  int num = 1;

  bool isPrime(int number) {
    if (number <= 1) {
      return false;
    }

    for (int i = 2; i <= number / 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }

    return true;
  }

  for (var i = 0; i < 50; i++) {
    if (isPrime(num)) {
      print('$num is a prime number.');
    } else {
      print('$num is not a prime number.');
    }
    num++; 
  }
}