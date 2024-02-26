import 'package:flutter/material.dart';

// import 'package:dart_tutorial/screens/hello_world.dart';
// import 'package:dart_tutorial/screens/data_types.dart';
import 'package:dart_tutorial/screens/maps.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Center(
          child: Maps(),
        ),
      ),
    ),
  );
}
