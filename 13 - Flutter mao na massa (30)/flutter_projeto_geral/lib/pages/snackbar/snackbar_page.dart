import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});
  static final title = 'Snackbar';
  static final route = '/snackbar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(content: Text('teste Simple Text'));
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text('Simple Text'),
            ),
            ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  content: Text('teste Action Text'),
                  action: SnackBarAction(label: 'Desfazer', onPressed: () {}),
                );
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text('Action Text'),
            ),
          ],
        ),
      ),
    );
  }
}
