import 'package:flutter/material.dart';

Future<String> getHttp(String url) {
  return Future.delayed(
    const Duration(
      seconds: 1,
    ),
    () {
      // return 'Respuesta de la peticion http';
      throw Exception('Peticion Fallida');
    },
  );
}

class Futures extends StatelessWidget {
  const Futures({super.key});

  void execute() {
    print('Inicio del programa');

    getHttp('http://test.com')
        .then((value) => print(value))
        .catchError((error) => print(error));

    print('Fin del programa');
  }

  @override
  Widget build(BuildContext context) {
    execute();

    return const Text('Futures');
  }
}
