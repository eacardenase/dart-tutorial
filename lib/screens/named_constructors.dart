import 'package:flutter/material.dart';

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES!' : 'Nope'} ';
  }
}

class NamedConstructors extends StatelessWidget {
  const NamedConstructors({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> rawJson = {
      'name': 'Peter Parker',
      'power': 'Intelligence',
      'isAlive': true,
    };

    final spiderman = Hero.fromJson(rawJson);

    print(spiderman);

    return const Text('Named Constructors');
  }
}
