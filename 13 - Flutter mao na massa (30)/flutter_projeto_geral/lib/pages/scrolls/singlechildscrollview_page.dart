import 'package:flutter/material.dart';

class SinglechildscrollviewPage extends StatelessWidget {
  const SinglechildscrollviewPage({super.key});
  static final title = 'SingleChildScrollView';
  static final route = '/scroll/singlechildscrollview';

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final colors = <Color>[
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.amber,
      Colors.black,
    ];
    var conteudo = <Widget>[];

    for (var color in colors)
      conteudo.add(Container(width: mq.size.width, height: 200, color: color));

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(child: Column(children: conteudo)),
    );
  }
}
