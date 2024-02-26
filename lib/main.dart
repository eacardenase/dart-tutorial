import 'package:flutter/material.dart';

// import 'package:dart_tutorial/screens/hello_world.dart';
// import 'package:dart_tutorial/screens/data_types.dart';
// import 'package:dart_tutorial/screens/maps.dart';
// import 'package:dart_tutorial/screens/lists.dart';
import 'package:dart_tutorial/screens/functions.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Center(
          child: Functions(),
        ),
      ),
    ),
  );
}
