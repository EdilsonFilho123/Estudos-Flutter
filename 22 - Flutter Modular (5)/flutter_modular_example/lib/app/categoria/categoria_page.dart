import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_controller.dart';
// import 'package:flutter_modular/flutter_modular.dart';

class CategoriaPage extends StatefulWidget {
  final String? categoria;

  const CategoriaPage({super.key, this.categoria})
  // : categoria = Modular.args.data;
  ;
  @override
  State<CategoriaPage> createState() => _CategoriaPageState();
}

class _CategoriaPageState extends State<CategoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categoria')),
      body: Center(
        child: Column(
          children: [
            Text(widget.categoria ?? 'Categoria não informada'),
            ElevatedButton(
              onPressed: () {
                final controller = Modular.get<CategoriaController>();
                print('----------> Classe CategoriaController CHAMADA (hashCode: ${controller.hashCode})');
              },
              child: Text('Get Controller'),
            ),
          ],
        ),
      ),
    );
  }
}
