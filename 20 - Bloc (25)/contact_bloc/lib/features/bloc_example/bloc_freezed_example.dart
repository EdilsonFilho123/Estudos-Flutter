import 'package:contact_bloc/features/bloc_example/bloc_freezed/example_freezed_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

class BlocFreezedExample extends StatefulWidget {
  const BlocFreezedExample({super.key});

  @override
  State<BlocFreezedExample> createState() => _BlocFreezedExampleState();
}

class _BlocFreezedExampleState extends State<BlocFreezedExample> {
  final textKey = GlobalKey<FormFieldState>();

    @override
  Widget build(BuildContext context) {
    final exampleBloc = context.read<ExampleFreezedBloc>();
    
    return Scaffold(
      appBar: AppBar(title: Text('Bloc Freezed Example')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              spacing: 5,
              children: [
                Expanded(
                  child: TextFormField(
                    key: textKey,
                    decoration: InputDecoration(
                      labelText: 'Nome',
                      labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    validator:
                        (value) =>
                            ((value?.isEmpty ?? true)
                                ? 'O Campo deve ser preenchido...'
                                : null),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    final stateField = textKey.currentState;

                    if (stateField != null && stateField.validate()) {
                      exampleBloc.add(
                        ExampleFreezedEvent.addName(stateField.value as String),
                      );
                    }
                  },
                  child: Text('Adicionar Nome'),
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocConsumer<ExampleFreezedBloc, ExampleFreezedState>(
              listener: (_, state) {
                if (state is ExampleFreezedStateLoading) {
                  Loader.show(context);
                } else {
                  Loader.hide();
                  if (state is ExampleFreezedStateData) {
                    final messager = ScaffoldMessenger.of(context);

                    messager.clearSnackBars();
                    messager.showSnackBar(
                      SnackBar(
                        content: Text(
                          '${state.names.length} nome(s) foi(ram) carregado(s)',
                        ),
                      ),
                    );
                  }
                }
              },
              builder: (context, state) {
                if (state is ExampleFreezedStateData) {
                  return ListView.builder(
                    itemCount: state.names.length,
                    itemBuilder: (_, index) {
                      return ListTile(
                        dense: true,
                        title: Text(state.names[index]),
                        tileColor: Colors.red,
                        onTap:
                            () => exampleBloc.add(
                              ExampleFreezedEvent.removeName(
                                state.names[index],
                              ),
                            ),
                      );
                    },
                  );
                } else {
                  return Center(child: Text('Nenhum dado foi encontrado'));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
