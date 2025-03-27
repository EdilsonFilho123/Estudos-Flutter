import 'package:flutter/material.dart';

class DetalhesPage extends StatelessWidget {
  final String? param;
  const DetalhesPage({super.key, required this.param});

  @override
  Widget build(BuildContext context) {
    // final param = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      appBar: AppBar(title: Text('Detalhes')),
      body: Center(
        child: Column(children: [Text('Parametro resgatado: $param')]),
      ),
    );
  }
}
