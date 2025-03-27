import 'package:flutter/material.dart';
import 'package:navegacao_customizada_e_observada/pages/detalhes_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String msgPageDetalhes_2 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed('/detalhes', arguments: 'Parametro Y'),
              child: Text('Ir pra Detalhes'),
            ),
            
            TextButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                settings: RouteSettings(
                  name: '/detalhe', 
                  // arguments: 'Parametro Via MaterialPageRoute'
                ),
                builder: (_) => DetalhesPage(param: 'Parametro Via MaterialPageRoute')
              )),
              child: Text('Ir pra Detalhes VIA MaterialPageRoute'),
            ),
            TextButton(
              onPressed: () async {
                print('Antes de navegar');
                final pageDetalhe_2 = await Navigator.of(context).pushNamed('/detalhes2', arguments: 'Parametro Z-TEC');
                print('Depois de navegar');
                setState(() {
                  msgPageDetalhes_2 = 'Mensagem vinda da pagina de detalhes 2: ${pageDetalhe_2 ?? ''}';
                });
              },
              child: Text('Ir pra Detalhes 2'),
            ),
            Text(msgPageDetalhes_2)
          ]
        ),
      ),
    );
  }
}
