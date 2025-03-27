import 'package:flutter/material.dart';

// StatelessWidget são para elementos estáticos, que por mais que altere suas propriedades, não serão atualizadas na tela
// Por isso, seus atributos devem ser finais
class HomePageStateless extends StatelessWidget {
  String texto = 'Estou no StatelessWidget';

  HomePageStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Text(texto),
          TextButton(
            onPressed: () {
              texto = 'Novo texto aplicado';
            },
            child: Text('Alterar Texto'),
          ),
        ],
      ),
    );
  }
}
