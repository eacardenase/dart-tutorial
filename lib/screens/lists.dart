import 'package:flutter/material.dart';

class Lists extends StatelessWidget {
  const Lists({super.key});

  @override
  Widget build(BuildContext context) {
    final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

    print('List original: $numbers');
    print('Length: ${numbers.length}');
    print('Index 0: ${numbers[0]}');
    print('First value: ${numbers.first}');
    print('Last value: ${numbers.last}');

    final reversedNumbers = numbers.reversed;
    print('Iterable: $reversedNumbers');
    print('List: ${reversedNumbers.toList()}');
    print('Set: ${reversedNumbers.toSet()}');

    final numbersGreaterThanFive = numbers.where((number) => number > 5);
    print('>5 Iterable: $numbersGreaterThanFive');
    print('>5 Set: ${numbersGreaterThanFive.toSet()}');

    return const Text(
      'Lists, Iterables and Sets',
    );
  }
}
