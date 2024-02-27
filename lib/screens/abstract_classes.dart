import 'package:flutter/material.dart';

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

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

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
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
    final nuclearPlant = NuclearPlant(energyLeft: 1000);

    chargePhone(windPlant);
    chargePhone(nuclearPlant);

    print(windPlant.energyLeft);
    print(nuclearPlant.energyLeft);

    return const Text('Abstract Classes');
  }
}
