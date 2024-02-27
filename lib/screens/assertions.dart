import 'package:flutter/material.dart';

class Square {
  double _side;

  Square({
    required double side,
  })  : assert(side >= 0, 'side must be >= 0'),
        _side = side;

  set side(double value) {
    print('Setting new value $value');

    if (value < 0) throw 'Value must be >= 0';

    _side = value;
  }

  double get area {
    return _side * _side;
  }
}

class Assertions extends StatelessWidget {
  const Assertions({super.key});

  @override
  Widget build(BuildContext context) {
    final square = Square(side: -10);

    // square.side = 12;

    print('Area: ${square.area}');

    return const Text('Assertions');
  }
}
