import 'package:flutter/material.dart';

void main() {
  // var myName = 'Edwin';
  late final String myName;

  myName = 'Edwin';

  print('Hola, mi nombre es $myName.');
  print('Hola, mi nombre es ${myName.toUpperCase()}.');
  print('Hola, mi nombre es ${myName.toLowerCase()}.');

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
          child: Text(
            'Holi :3',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  );
}
