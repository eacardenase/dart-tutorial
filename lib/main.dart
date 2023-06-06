import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  // variables

  // <datatype> <variableName> = value;
  int firstValue = 19;
  int secondValue = 5;
  String myString = 'My String';
  bool myBoolean = true;
  dynamic myDynamicVariable = false; // could be of any type
  String multilineString = '''
    
    My
    Multiline
    String
  ''';

  myString = 'My new String';

  print(multilineString);

  runApp(
    const MaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      ),
    ),
  );
}
