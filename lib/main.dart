import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  print('Hello World');

  runApp(
    const MaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      ),
    ),
  );
}
