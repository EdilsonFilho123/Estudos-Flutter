import 'package:flutter/material.dart';
// import 'package:flutter_fundamentos/home_page_stateless.dart';

// StatefulWidget são para elementos que podem ser alterados e atualizados na tela
// Exige duas classes, uma StatefulWidget e outro State, sendo a ultima onde aplicamos a lógica
// para gerar alterar, devemos chamar o metodo setState()
class HomePageStateful extends StatefulWidget {
  HomePageStateful({super.key}) {
    print('Contructor HomePageStateful');
  }

  @override
  State<HomePageStateful> createState() {
    print('createState');
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePageStateful> {
  String texto = 'Texto startado no StatefulWidget';

  _HomePageState() {
    print('Contructor _HomePageState');
  }

  @override
  void initState() {
    print('Start initState');
    super.initState();
    texto = 'Texto alterado no initState';

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      print('addPostFrameCallback');
      // Navigator.of(
      //   context,
      // ).push(MaterialPageRoute(builder: (context) => HomePageStateless()));
    });
    print('Finish initState');
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(texto),
            TextButton(
              onPressed: () {
                setState(() {
                  print('setState');
                  // Navigator.of(
                  //   context,
                  // ).push(MaterialPageRoute(builder: (context) => HomePageStateless()));
                });
              },
              child: Text('Alterar Texto'),
            ),
          ],
        ),
      ),
    );
  }
}
