import 'package:flutter/material.dart';

class Hero {
  String name;
  String power;

  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;

  Hero(this.name, this.power);
}

class Classes extends StatelessWidget {
  const Classes({super.key});

  @override
  Widget build(BuildContext context) {
    final wolverine = Hero('Logan', 'Regeneration');

    print(wolverine);
    print(wolverine.name);
    print(wolverine.power);

    return const Text('Classes');
  }
}
