import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_imc/contador_codegen/contador_codegen_controller.dart';

class ContadorCodeGenPage extends StatefulWidget {
  const ContadorCodeGenPage({super.key});

  @override
  State<ContadorCodeGenPage> createState() => _ContadorCodeGenPageState();
}

class _ContadorCodeGenPageState extends State<ContadorCodeGenPage> {
  final _controller = ContadorCodegenController();
  final reactionDisposer = <ReactionDisposer>[];

  @override
  void initState() {
    super.initState();

    // executa quando criado e escuta as variaveis usadas dentro dela
    final autorunDisposer = autorun((_) {
      print('--------------- autorun ---------------');
      print(_controller.fullName);
    });

    // executa apenas quando a variavel retornada na primeira função é alterada
    final reacterDisposer = reaction((_) => _controller.counter, (counter) {
      print('--------------- reaction ($counter) ---------------');
    });

    final whenDisposer = when((_) => _controller.fullName.last == 'XPTO', () {
      print('--------------- when ---------------');
    });

    reactionDisposer.add(autorunDisposer);
    reactionDisposer.add(reacterDisposer);
    reactionDisposer.add(whenDisposer);
  }

  @override
  void dispose() {
    reactionDisposer.forEach((el) => el());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Contator MobX CodeGen'),
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
            Observer(builder: (_) => Text(_controller.fullName.first)),
            Observer(builder: (_) => Text(_controller.fullName.last)),
            Observer(builder: (_) => Text(_controller.saudacao)),
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
