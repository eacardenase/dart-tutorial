import 'package:flutter/material.dart';

import 'package:dart_tutorial/screens/hello_world.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HelloWorld(),
    ),
  );
}
