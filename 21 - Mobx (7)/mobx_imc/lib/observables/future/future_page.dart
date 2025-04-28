import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_imc/observables/future/future_controller.dart';

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  // Future<String> buscarNome() async {
  //   await Future.delayed(Duration(seconds: 2));
  //   return 'Tester';
  // }
  final controller = FutureController();

  @override
  void initState() {
    super.initState();
    controller.buscarNome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Future')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.buscarNome(),
        child: Icon(Icons.sync),
      ),
      body: Observer(
        builder: (_) {
          return FutureBuilder(
            future: controller.nomeFuturo,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return SizedBox.shrink();
                case ConnectionState.waiting:
                case ConnectionState.active:
                  return Center(child: CircularProgressIndicator());
                case ConnectionState.done:
                  return Center(
                    child: Text(snapshot.data ?? 'Nome não encontrado...'),
                  );
              }
            },
          );
        },
      ),
    );
  }
}
