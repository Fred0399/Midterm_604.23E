void main() {
 
  List<String> names = ["Hasan", "Sabuhi", "Farid", "Samira"];
  print(namesStartWithS(names));
  
}
                            
List<String> namesStartWithS(List<String> names) {
  return names.where((name) => name.startsWith('S')).toList();
}
