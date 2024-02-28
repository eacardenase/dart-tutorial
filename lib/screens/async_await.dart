import 'package:flutter/material.dart';

Future<String> getHttp(String url) async {
  // async keyword added for type safety
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('Peticion Fallida');
  // return 'Respuesta de la peticion http';
}

class AsyncAwait extends StatelessWidget {
  const AsyncAwait({super.key});

  void execute() async {
    print('Inicio del programa');

    try {
      final response = await getHttp('http://test.com');

      print(response);
    } catch (error) {
      print(error);
    }

    print('Fin del programa');
  }

  @override
  Widget build(BuildContext context) {
    execute();

    return const Text('AsyncAwait');
  }
}
