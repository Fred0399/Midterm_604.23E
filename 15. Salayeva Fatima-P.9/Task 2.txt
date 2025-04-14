int function(){
  List<int> n = [1, 2, 3, 4, 5];
  n.sort();
  int middle = n[(n.length / 2).floor()];
  return middle;
}

void main(){
  print(function());
}