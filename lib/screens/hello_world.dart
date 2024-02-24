import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    // var myName = 'Edwin';
    late final String myName;

    myName = 'Edwin';

    print('Hola, mi nombre es $myName.');
    print('Hola, mi nombre es ${myName.toUpperCase()}.');
    print('Hola, mi nombre es ${myName.toLowerCase()}.');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      backgroundColor: Colors.cyan,
    );
  }
}
