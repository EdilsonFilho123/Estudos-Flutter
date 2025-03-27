import 'package:flutter/material.dart';

class DetalhesPage2 extends StatelessWidget {
  const DetalhesPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes 2')),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop('Esta pagina foi fechada');
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
