import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_imc/contador/contador_controller.dart';

class ContadorPage extends StatelessWidget {
  final _controller = ContadorController();

  ContadorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Contator MobX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times:'),
            Observer(
              builder:
                  (_) => Text(
                    '${_controller.counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
            ),
            Observer( builder: (_) => Text(_controller.fullName.first) ),
            Observer( builder: (_) => Text(_controller.fullName.last) ),
            Observer( builder: (_) => Text(_controller.saudacao) ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _controller.increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
