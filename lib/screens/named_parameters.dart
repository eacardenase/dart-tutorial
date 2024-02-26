import 'package:flutter/material.dart';

class NamedParameters extends StatelessWidget {
  const NamedParameters({super.key});

  @override
  Widget build(BuildContext context) {
    String greetEveryone() => 'Hello everyone!';
    int addTwoNumbers(int a, int b) => a + b;
    int addTwoNumbersWithOptionalValue(int a, [int b = 20, int c = 30]) =>
        a + b + c;

    print(greetEveryone());
    print('Suma 1: ${addTwoNumbers(10, 20)}');
    print('Suma 2: ${addTwoNumbersWithOptionalValue(10)}');
    print('Suma 3: ${addTwoNumbersWithOptionalValue(10, 60)}');

    String greetPerson({
      required String name,
      String message = 'Hi,',
    }) {
      return '$message $name.';
    }

    print(greetPerson(message: 'Hola,', name: 'Edwin'));

    return const Text('Named Parameters');
  }
}
