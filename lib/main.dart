import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  // runtime constant
  final DateTime someValue2 = DateTime.now();

  // compile time constant
  const DateTime someValue3 = DateTime
      .now(); // Error: Const variables must be initialized with a constant value.

  /*
  DateTime.now() value is known at runtime, but const is for variables
  which values are known at compile time.
  */

  runApp(
    const MaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      ),
    ),
  );
}
