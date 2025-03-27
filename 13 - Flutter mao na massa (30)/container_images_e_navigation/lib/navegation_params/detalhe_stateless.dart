import 'package:flutter/material.dart';

class DetalheStateless extends StatelessWidget {
  const DetalheStateless({super.key});

  @override
  Widget build(BuildContext context) {
    final params = ModalRoute.of(context)?.settings.arguments as Map<String, Object?>;

    return Scaffold(
      appBar: AppBar(title: Text('Detalhes')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('O id do produto é ${params['id'] ?? 0}')
          ],
        ),
      ),
    );
  }
}
