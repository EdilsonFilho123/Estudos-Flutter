import 'package:flutter/material.dart';
import 'package:flutter_projeto_geral/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});
  static final title = 'Dialogs';
  static final route = '/dialogs';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dialogs')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => DialogCustom(context),
                  barrierDismissible: false,
                );
              },
              child: Text('Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder:
                      (_) => SimpleDialog(
                        title: Text('Simple Dialog'),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('Titulo X'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text('Fechar Dialog'),
                          ),
                        ],
                      ),
                );
              },
              child: Text('Simple Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder:
                      (_) => AlertDialog(
                        title: Text('Simple Dialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Text('Deseja realmente salvar???'),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(onPressed: () {}, child: Text('Cancelar')),
                          TextButton(
                            onPressed: () {},
                            child: Text('Confirmar'),
                          ),
                        ],
                      ),
                );
              },
              child: Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                print(
                  await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  ),
                );
              },
              child: Text('Time Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                print(
                  await showDatePicker(
                    context: context,
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2030),
                  ),
                );
              },
              child: Text('Date Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: Icon(Icons.flutter_dash_outlined),
                );
              },
              child: Text('About Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
