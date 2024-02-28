import 'package:flutter/material.dart';

Future<String> getHttp(String url) async {
  // async keyword added for type safety
  await Future.delayed(const Duration(seconds: 1));

  // throw 'Error salvaje aparece';
  throw Exception('Peticion Fallida');
  // return 'Respuesta exitosa de la peticion http';
}

class ExceptionHandling extends StatelessWidget {
  const ExceptionHandling({super.key});

  void execute() async {
    print('Inicio del programa');

    try {
      final response = await getHttp('http://test.com');

      print(response);
    } on Exception catch (error) {
      print(error);
      print('Tenemos una Excepcion');
    } catch (error) {
      print('Tenemos un error salvaje');
    } finally {
      print('Fin del try/catch');
    }

    print('Fin del programa');
  }

  @override
  Widget build(BuildContext context) {
    execute();

    return const Text('Exception Handling');
  }
}
