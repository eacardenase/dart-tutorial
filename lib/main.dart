import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  // data types

  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original: $numbers');
  print('Length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Last: ${numbers.last}');

  final reversedNumbers = numbers.reversed;

  print('Iterable: $reversedNumbers'); // returns iterable
  print('To List: ${numbers.reversed.toList()}');
  print('To Set: ${numbers.reversed.toSet()}');

  final numbersGreaterThanFive =
      numbers.where((number) => number > 5); // returns iterable

  print('> 5: ${numbersGreaterThanFive.toSet()}');

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      ),
    ),
  );
}
