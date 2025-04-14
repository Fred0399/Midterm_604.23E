mixin CanFly {
  bool canFly(double cargoWeight, double totalWeight) {
    return cargoWeight < 50 && totalWeight < 900;
  }
}

class Rocket with CanFly {
  final double cargoWeight;
  final double totalWeight;

  Rocket({required this.cargoWeight, required this.totalWeight});

  void launch() {
    if (canFly(cargoWeight, totalWeight)) {
      print('rocket can fly');
    } else {
      print('error:wight is not correct!!');
    }
  }
}

void main() {
  Rocket rocket1 = Rocket(cargoWeight: 40, totalWeight: 850);
  rocket1.launch(); 
  Rocket rocket2 = Rocket(cargoWeight: 55, totalWeight: 880);
  rocket2.launch(); 
  Rocket rocket3 = Rocket(cargoWeight: 30, totalWeight: 600);
  rocket3.launch();
}