import 'package:flutter/material.dart';

class Functions extends StatelessWidget {
  const Functions({super.key});

  @override
  Widget build(BuildContext context) {
    String greetEveryone() => 'Hello everyone!';
    int addTwoNumbers(int a, int b) => a + b;
    int addTwoNumbersWithOptionalValue(int a, [int b = 20]) {
      return a + b;
    }

    print(greetEveryone());
    print('Suma 1: ${addTwoNumbers(10, 20)}');
    print('Suma 2: ${addTwoNumbersWithOptionalValue(10)}');

    return const Text('Functions and Parameters');
  }
}
