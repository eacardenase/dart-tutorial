import 'package:flutter/material.dart';

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(milliseconds: 500), (value) {
    // print('Desde periodic: $value');

    return value;
  }).take(10);
}

class Streams extends StatelessWidget {
  const Streams({super.key});

  @override
  Widget build(BuildContext context) {
    emitNumbers().listen((event) {
      print('Stream value: $event');
    });

    return const Text('Streams');
  }
}
