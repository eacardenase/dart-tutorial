import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  // data types

  final pokemon = <String, dynamic>{
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': <int, String>{
      1: 'ditto/front.png',
      2: 'ditto/back.png',
    }
  };

  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Front sprite: ${pokemon['sprites'][1]}');
  print('Back sprite: ${pokemon['sprites'][2]}');

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      ),
    ),
  );
}
