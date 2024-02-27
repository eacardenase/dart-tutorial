import 'package:flutter/material.dart';

class Square {
  double _side;

  Square({
    required double side,
  }) : _side = side;

  set side(double value) {
    print('Setting new value $value');

    if (value < 0) throw 'Value must be >= 0';

    _side = value;
  }

  double get area {
    return _side * _side;
  }
}

class Getters extends StatelessWidget {
  const Getters({super.key});

  @override
  Widget build(BuildContext context) {
    final square = Square(side: 10);

    square.side = -2;

    print('Area: ${square.area}');

    return const Text('Getters and Setters');
  }
}
