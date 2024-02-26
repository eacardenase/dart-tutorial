import 'package:flutter/material.dart';

class Maps extends StatelessWidget {
  const Maps({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> pokemon = {
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
    print('Back Sprite: ${pokemon['sprites'][2]}');
    print('Front Sprite: ${pokemon['sprites'][1]}');

    return const Text('Maps');
  }
}
