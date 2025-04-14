//1

// Positional parameters are by default necessary and can't be omitted,however named arguments are optional and can be omitted. For specifying named parameters we use {} braces,for positional parameters we use [] brackets.Named parameters are generally preferred for functions with many optional parameters, as they improve readability and reduce ambiguity. Positional parameters can be suitable for functions with fewer parameters or when a more concise syntax is accepted. //

// 2. 

void weekdayPrint() {
  var weekday = 3;
  switch (weekday) {
    case 1:
        print("Day is Monday");
        break;
    case 2:
        print("Day is Tuesday");
      break;
    case 3:
      print("Day is Wednesday");
      break;
    case 4:
        print("Day is Thursday");
      break;
    case 5:
        print("Day is Friday");
      break;
    case 6:
        print("Day is Saturday");
      break;
    case 7:
        print("Day is Sunday");
      break;
    default:
        print("No weekday like this");
      break;
  }
}
//3.

String personalizedGreeting(String name, int age, {String? city}) {
   String greeting = 'Hello,my name is $name and I am $age years old.';

  if (city != null)
  {
    greeting += 'I was born in $city';
  }

  return greeting;
}

//4.

class Point {
  final double a;
  final double b;

  //constant constructor
  const Point(this.a, this.b);

  //named constructor
  const Point.origin() : a = 0, b = 0;
  @override
  String toString() => 'Point($a, $b)';
}

void main(){
  
  //weekdayPrint();
  
   /* const point1 = Point(20, 20);
  const point2 = Point.origin();
  print(point1); 
  print(point2); */
  
  //print(personalizedGreeting('Shahnigar',18, city:'Baku'));

}




