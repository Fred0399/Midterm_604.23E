// Task2
List<int> num(int a, int b){
  List<int> primeNum =[];
  for (int i = a; i <= b; i++) {
    bool isPrime = true;
    for (int x = 2; x <= i / 2; x++) {
      if (i % x == 0){
        isPrime = false;
        break;
      }
    }
    if (isPrime){
      primeNum.add(i);
    }
  }
  if (primeNum.isNotEmpty){
    return primeNum;
  } else {
    return [0];
  }
}
void main(){
  // 1 is not a prime number but printed when given;
  // Problem solution says numbers between 1 and 50;
  print(num(1, 50));
  
}