int findMaximum(int a, int b) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
}
void main() {
  int num1 = 10;
  int num2 = 5;
  int maximum = findMaximum(num1, num2);
  print('The maximum of $num1 and $num2 is: $maximum');
}
