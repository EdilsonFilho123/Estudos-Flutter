import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegation/page1.dart';

class Page4 extends StatelessWidget {

  static final String routeName = 'page4';
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page4', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)), backgroundColor: Colors.deepPurple),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: 'page1'),
                  builder: (context) => Page1()
                )
              );
            }, child: Text('Page1 via push')),

            ElevatedButton(onPressed: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  settings: RouteSettings(name: 'page1'),
                  builder: (context) => Page1()
                )
              );
            }, child: Text('Page1 via pushReplacement')),

            ElevatedButton(onPressed: (){
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  settings: RouteSettings(name: 'page1'),
                  builder: (context) => Page1()
                ),
                (_) => false
              );
            }, child: Text('Page1 via pushAndRemoveUntil removendo tudo')),

            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Text('Remove via pop')),

            ElevatedButton(onPressed: (){
              Navigator.of(context).popUntil(
                ModalRoute.withName('page2') // aqui não precisa estar definido em routes na main se vc setou em settings: RouteSettings(name: 'page2'),
              );
            }, child: Text('Remove via pushAndRemoveUntil até ModalRoute.withName("page2")')),
          ],
        ),
      ),
    );
  }
}