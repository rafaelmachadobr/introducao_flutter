import 'package:flutter/material.dart';
import 'package:introducao_flutter/singleton_build_context.dart';

class HomePage extends StatelessWidget {
  String texto = "Texto inicial";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(texto),
            Text('${context.id}'),
            ElevatedButton(
                onPressed: () {
                  texto = "Texto alterado";
                },
                child: Text('Button')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/stateful');
                },
                child: Text('Ir para Stateful')),
          ],
        ),
      ),
    );
  }
}
