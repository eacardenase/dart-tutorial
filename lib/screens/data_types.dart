import 'package:flutter/material.dart';

class DataTypes extends StatelessWidget {
  const DataTypes({super.key});

  @override
  Widget build(BuildContext context) {
    const String pokemon = 'Ditto';
    const int hp = 100;
    const isAlive = true;
    // final List<String> abilities = <String>['impostor'];
    final List<String> abilities = ['impostor'];
    final sprites = <String>['ditto/front.png', 'ditto/back.png'];

    print("""
$pokemon
$hp
$isAlive
$abilities
$sprites
""");

    return const Text('Data Types');
  }
}
