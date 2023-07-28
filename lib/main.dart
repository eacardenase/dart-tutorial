import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  // data types

  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  // dynamic == null by default
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5, 6];
  errorMessage = {1, 2, 3, 4, 5, 6};
  errorMessage = () => false;
  errorMessage = null;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
""");

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      ),
    ),
  );
}
