import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegation/page2.dart';

// A navegação funciona na estrutura de pilha FILO, onde ele vai empilhando as pages
// Para add uma page (push), se a classe ou seu nome atribuido a ela
//
// Existe 5 formas de naveção entre paginas, e são elas
// - push (ou pushNamed) - add uma page na pilha de navigação
// - pushAndRemoveUntil (ou pushNamedAndRemoveUntil) - remove pages via fnc (ou ModalRoute) e add uma nova page
// - pushReplacement (ou pushReplacementNamed) - substitui a page atual por uma nova page
// - popUntil - Remove pages via fnc (ou ModalRoute)
// - pop - Remove a page atual

class HomePageNavigation extends StatelessWidget {
  const HomePageNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page Navigation', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)), backgroundColor: Colors.deepPurple),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: 'page2'),
                  builder: (context) => Page2()
                )
              );
            }, child: Text('Page2 via PAGE')),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: 'page2'),
                  builder: (context) => Page2()
                )
              );
            }, child: Text('Page2 via NAMED'))
          ],
        ),
      ),
    );
  }
}