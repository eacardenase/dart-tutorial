import 'package:flutter/material.dart';

class Hero {
  String name;
  String power;

  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;

  Hero({
    required this.name,
    this.power = 'Sin Poder',
  });

  @override
  String toString() {
    return '$name - $power';
  }
}

class ClassesOverride extends StatelessWidget {
  const ClassesOverride({super.key});

  @override
  Widget build(BuildContext context) {
    final wolverine = Hero(name: 'Logan', power: 'Regeneration');

    print(wolverine);
    print(wolverine.name);
    print(wolverine.power);

    return const Text('Classes Override');
  }
}
