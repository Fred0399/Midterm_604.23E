//Problem 14 
//Task1

//A closure is a function object that has access to variables in its lexical scope, even when the function is used outside of its original scope.
// Functions can close over variables defined in surrounding scopes. In the following example, makeAdder() captures the variable addBy. Wherever the returned function goes, it remembers addBy.
// Dart is a lexically scoped language, which means that the scope of variables is determined statically, simply by the layout of the code. You can "follow the curly braces outwards" to see if a variable is in scope.

//Task2

String reverseString(String str) {
  String reversed = '';
  for (int i = str.length - 1; i >= 0; i--) {
    reversed += str[i];
  }
  return reversed;
}

// Example usage:
void mainTask2(){
  String inputString = "Hello, ToghrulAlekberli!";
  String reversedString = reverseString(inputString);
  print(reversedString); // "!ilrebkelAlurhgoT ,olleH"
}

// Task4

class Full{
  int a = 213;
  int b = 500;
  int c = 400;
}

class ProxyA{
  Full full;
  ProxyA(this.full);
  void say_a(){
    print(full.a);
  }
}

class ProxyB{
  Full full;
  ProxyB(this.full);

  void say_b(){
    print(full.b);
  }
}

class FullProxy extends ProxyA with ProxyBmixin{
  FullProxy(Full full): super(full){
     _proxyB = ProxyB(full);
  }

  @override
  void say_b() {
    _proxyB.say_b();
  }

  void say_c(){
    print(full.c);
  }

  late final ProxyB _proxyB;
}

mixin ProxyBmixin on ProxyA {
  ProxyB get _proxyB;

}

void main() {
  Full foo = Full();
  FullProxy fullProxy = FullProxy(foo);
  fullProxy.say_a();
  fullProxy.say_b();
  fullProxy.say_c();
}

//Task3

class Notification {
  String title;
  String message;
  
  Notification(this.title, this.message);
  
  String send() {
    return "[Stitle]: $message";
  }
}

void main() {
  Notification myNotification = Notification("Update","Cristiano Ronaldo is the best player in the world.");
  print(myNotification.send());
}
