import 'package:flutter/material.dart';

import 'home_screen.dart';

final String? someValue = null; // dynamic type if no type is specified

void main() {
  // Optional Variables
  // String/int/bool and null

  int? optionalInt = 10;
  String? optionalString = null;
  String? anotherOptionalString; // null by default

  // print(optionalInt);
  // print(optionalString);
  // print(anotherOptionalString);

  print(someValue);
  print(someValue?.length);
  // print(someValue!.length); // force unwrap & runtime error
  // print(someValue.length); // compile error
  print(someValue?.length ?? 0); // null coalesing

  runApp(
    const MaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      ),
    ),
  );
}
