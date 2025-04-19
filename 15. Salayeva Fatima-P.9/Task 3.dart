int numbers(){
  List<int> list = [70,68,32,67,10,20,15,87];
  var filtered = list.where((n)=> n>50);
  var sum = filtered.reduce((a,b)=> a+b);
  return sum;
}

void main(){
  print(numbers());
}