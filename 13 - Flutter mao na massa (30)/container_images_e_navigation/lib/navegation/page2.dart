import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegation/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page2', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)), backgroundColor: Colors.deepPurple),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: 'page3'),
                  builder: (context) => Page3()
                )
              );
            }, child: Text('Page3 via push')),
            
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('/page3');
            }, child: Text('Page3 via pushNamed')),

            ElevatedButton(onPressed: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  settings: RouteSettings(name: 'page3'),
                  builder: (context) => Page3()
                )
              );
            }, child: Text('Page3 via pushReplacement')),
            
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushReplacementNamed('/page3');
            }, child: Text('Page3 via pushReplacementNamed')),

            ElevatedButton(onPressed: (){
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  settings: RouteSettings(name: 'page3'),
                  builder: (context) => Page3()
                ),
                (route) => route.isFirst
              );
            }, child: Text('Page3 via pushAndRemoveUntil até home')),
            
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamedAndRemoveUntil('/page3', (route) => route.isFirst);
            }, child: Text('Page3 via pushNamedAndRemoveUntil até home')),

            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Text('Remove via pop')),

            ElevatedButton(onPressed: (){
              Navigator.of(context).popUntil(
                (route) => route.isFirst
              );
            }, child: Text('Remove via pushAndRemoveUntil até home')),
          ],
        ),
      ),
    );
  }
}