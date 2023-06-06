import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  /*
  This is 
  a multiline
  comments
  */

  /// Documentation comment

  print('Hello World');

  runApp(
    const MaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      ),
    ),
  );
}
