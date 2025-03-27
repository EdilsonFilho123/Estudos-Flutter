import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegation/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)), backgroundColor: Colors.deepPurple),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: 'page4'),
                  builder: (context) => Page4()
                )
              );
            }, child: Text('Page4 via push')),
            
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed(Page4.routeName);
            }, child: Text('Page4 via pushNamed')),

            ElevatedButton(onPressed: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  settings: RouteSettings(name: 'page4'),
                  builder: (context) => Page4()
                )
              );
            }, child: Text('Page4 via pushReplacement')),
            
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushReplacementNamed(Page4.routeName);
            }, child: Text('Page4 via pushReplacementNamed')),

            ElevatedButton(onPressed: (){
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  settings: RouteSettings(name: 'page4'),
                  builder: (context) => Page4()
                ),
                (route) => route.isFirst
              );
            }, child: Text('Page4 via pushAndRemoveUntil até home')),
            
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamedAndRemoveUntil(Page4.routeName, (route) => route.isFirst);
            }, child: Text('Page4 via pushNamedAndRemoveUntil até home')),

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