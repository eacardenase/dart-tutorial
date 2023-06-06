import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  // variables

  // type inference
  var someValue1 = 10;
  final someValue2 = 10; // final variables can only be set one
  const someValue3 = 10; // value will be known at compile time and won't change

  runApp(
    const MaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      ),
    ),
  );
}
