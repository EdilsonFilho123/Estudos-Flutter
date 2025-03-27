import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegation_params/detalhe_stateful.dart';
// import 'package:flutter_mao_na_massa/navegation_params/detalhe_stateless.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: '/detalhe', arguments: { 
                      'id': 10
                    }),
                    builder: (context) => DetalheStateful()
                  )
                );
              },
              child: Text('detalhes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/detalhes', arguments: { 
                  'id': 10
                });
              },
              child: Text('detalhes VIA named'),
            ),
          ],
        ),
      ),
    );
  }
}
