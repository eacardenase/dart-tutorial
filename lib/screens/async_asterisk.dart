import 'package:flutter/material.dart';

// async* is used in conjunction with Streams
Stream<int> emitNumbers() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];

  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));

    yield i;
  }
}

class AsyncAsterisk extends StatelessWidget {
  const AsyncAsterisk({super.key});

  @override
  Widget build(BuildContext context) {
    emitNumbers().listen((value) {
      print('Stream value: $value');
    });

    return const Text('async* and await');
  }
}
