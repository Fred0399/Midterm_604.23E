void doubles() {
  // Note: problem statement says average list of doubles. 
  // Not integers;
  List<int> list = [2,6,3,17];
  var doubledList = list.map((n)=> n * 2).toList();
  var sumOfNum = doubledList.reduce((a,b) => a + b);
  int k = 4;
  double avg = sumOfNum / k ;
  print(list);
  print('$doubledList ,Doubled list');
  print('$sumOfNum ,Sum of numbers');
  print('$avg ,Average' );
}


void main(){
  doubles();
}