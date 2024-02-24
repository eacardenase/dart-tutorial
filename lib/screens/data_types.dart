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

    // dynamic is null by default, so therefore is an optional value
    dynamic errorMessage = 'Hola';
    errorMessage = true;
    errorMessage = [1, 2, 3];
    errorMessage = {1, 2, 3};
    errorMessage = () => true; // closure
    errorMessage = null;

    // errorMessage += 1; // throws error without the compiler noticing it

    print("""
$pokemon
$hp
$isAlive
$abilities
$sprites
$errorMessage
""");

    return const Text('Data Types');
  }
}
