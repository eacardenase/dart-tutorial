import 'package:flutter/material.dart';

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({
    required double initialEnergy,
  }) : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class AbstractClasses extends StatelessWidget {
  const AbstractClasses({super.key});

  double chargePhone(EnergyPlant plant) {
    if (plant.energyLeft < 10) {
      throw Exception('Not enough energy');
    }

    plant.consumeEnergy(10);

    return plant.energyLeft;
  }

  @override
  Widget build(BuildContext context) {
    final windPlant = WindPlant(initialEnergy: 100);

    chargePhone(windPlant);

    print(windPlant);
    print(windPlant.energyLeft);
    print(windPlant.type);
    return const Text('Abstract Classes');
  }
}
