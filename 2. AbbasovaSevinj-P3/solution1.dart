// Mixins are a way of defining code that can be reused in multiple class hierarchies. 
// They are intended to provide member implementations en masse.

// class Maestro extends Person with Musical, Aggressive, Demented {
//   Maestro(String maestroName) {
//     name = maestroName;
//     canConduct = true;
//   }
// }

// Mixins are a way to reuse code across multiple class
// hierarchies without direct inheritance;
// Unlike classes, mixins cannot be instantiated;
// Declared using the mixin keyword in Dart;
// Attached to class using with keyword;

// mixin Swimmer {
// void swim() {
// print("Swimming...");
// }
// }
// class Fish with Swimmer {}
// class OlympicSwimmer with Swimmer {}
