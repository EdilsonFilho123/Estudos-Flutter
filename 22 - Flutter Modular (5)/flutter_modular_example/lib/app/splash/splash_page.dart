import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Splash')),
      body: Placeholder(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                // onPressed: () => Navigator.pushNamed(context, '/categoria/'),
                onPressed: () {
                  Modular.to.pushNamed('/categoria/', arguments: "Categ. XPTO");
                },
                child: Text('Ir pra categorias'),
              ),
              ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed('/produtos/Produto_XPTO');
                },
                child: Text('Ir pra produtos'),
              ),
              ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed(
                    '/produtos/?nome=Produto_XPTO_via_query',
                  );
                },
                child: Text('Ir pra produtos (via query)'),
              ),
              ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed('/categoria/produtos/');
                },
                child: Text('Ir pra categorias / produtos (Sem Parametro)'),
              ),
              ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed('/categoria/produtos/Produto_XPTO/xyz');
                },
                child: Text('Ir pra categorias / produtos (Com Parametro)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
