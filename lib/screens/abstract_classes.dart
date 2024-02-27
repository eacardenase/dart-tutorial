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

class AbstractClasses extends StatelessWidget {
  const AbstractClasses({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Abstract Classes');
  }
}
