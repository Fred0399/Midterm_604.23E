# nazrin604.23e
//task10.1
Named optional parameter is a parameter which wrapped by { }. 
Parameter names when calling the function. Here is an example:
getHttpUrl(String server, String path, {int port = 80}){
// .......
} 
there is another example:
void greet({required String name, required int age}) {
  print('Hello, $name! You are $age years old.');
}
void main() {
  greet(name: 'Alice', age: 25); }



Positional optional parameters is a parameter which wrapped by [ ].
Here is an example:
getHttpUrl(String server, String path, [int port=80]) {
  // ...........
}
There is another example, too.
void greet(String name, int age) {
  print('Hello, $name! You are $age years old.');
}
void main() {
  greet('Alice', 25); }

I think, I would use named optional parameters.
Because, they are more readable against positional optional parameters. 



  
//task10.2
void dayType(String day) {
  switch (day.toLowerCase()) {
    case 'monday':
    case 'tuesday':
    case 'wednesday':
    case 'thursday':
    case 'friday':
      print('$day is a Weekday.');
      break;
    case 'saturday':
    case 'sunday':
      print('$day is a Weekend.');
      break;
    default:
      print('No exists.');
  }
}

void main() {
  dayType('Tuesday');
  dayType('Sunday');
}



//task10.3
void user(String name, {String say = 'Where were you'}) {
  print('$say, $name?');
}

void main() {
  user('Naza'); 
  user('Mehreli', say: 'Were you with'); 
}



//task10.4
class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  const Point.origin() : x = 0, y = 0;

  void list() {
    print('Point(x: $x, y: $y)');
  }
}

void main() {
  const a = Point(8, 10);
  const b = Point.origin();

  a.list();
  b.list();
}
