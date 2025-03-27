import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});
  static final title = 'ListView';
  static final route = '/scroll/listview';

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
      body: ListView.separated(
        itemCount: 1000,
        separatorBuilder: (context, index) {
          return Divider(color: Colors.black);
        },
        itemBuilder: (context, index) {
          print('Carregando ${index + 1}');
          return ListTile(
            title: Text('Item ${index + 1}'),
            subtitle: Text('Isso é um item...'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://m.media-amazon.com/images/S/pv-target-images/16627900db04b76fae3b64266ca161511422059cd24062fb5d900971003a0b70._SX1080_FMjpg_.jpg',
              ),
            ),
            // trailing: CircleAvatar(backgroundColor: colors[index]),
          );
        },
      ),
    );
  }
}
