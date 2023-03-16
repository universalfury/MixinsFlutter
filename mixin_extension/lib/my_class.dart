
class Vehicle {

  String objectType() {
    return 'is a vehicle';
  }
}

mixin wheels {
  String hasWheels() {
    return 'has wheels';
  }
}

mixin onRoad {
  String worksOnRoads() {
    return 'work on flat roads';
  }
}

mixin inAir {
  String worksInAir() {
    return 'in Air';
  }
}

class Car extends Vehicle with onRoad, wheels {
  String drive() {
    return 'Car ${objectType()} that has ${hasWheels()} and can ${worksOnRoads()}';
  }
}

class Airplane extends Vehicle with onRoad, inAir, wheels {
  String fly() {
    return 'Airplane ${objectType()} that had ${hasWheels()}, can ${worksOnRoads()} and can fly ${worksInAir()}';
  }
}

 main() {
  var benz = Car();
  benz.drive();

  var airbus = Airplane();
  airbus.fly();
}

extension TransportType on Vehicle {
  String isOfType() {
    if (this == Car) {
      return 'Car is a Land type Vehicle';
    } else {
      return 'Airplane is a Air type Vehicle';
    }
  }
}