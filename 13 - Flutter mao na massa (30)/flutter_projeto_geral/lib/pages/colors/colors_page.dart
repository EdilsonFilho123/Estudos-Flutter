import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  static final title = 'Colors';
  static final route = '/colors';

  @override
  Widget build(BuildContext context) {
    // final cor = Colors.red; // default sistema
    // final cor = Colors.red.withAlpha(255); // setando alpha num default
    // final cor = Color.fromRGBO(255, 0, 0, 1); // passando valores individuais
    final cor = Color(0xFFFF0000); // passando em Hex (com 0xFF antes)

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Container(width: 400, height: 400, color: cor)),
    );
  }
}
