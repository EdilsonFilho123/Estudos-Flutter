import 'package:flutter/material.dart';
import 'package:navegacao_customizada_e_observada/core/navigator_observer_custom.dart';
import 'package:navegacao_customizada_e_observada/pages/detalhes2_page.dart';
import 'package:navegacao_customizada_e_observada/pages/detalhes_page.dart';
import 'package:navegacao_customizada_e_observada/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        '/': (_) => HomePage(),
        // '/detalhes': (_) => DetalhesPage(),
        '/detalhes2': (_) => DetalhesPage2()
      },
      // o onGenerateRoute ele é aciondo quando se faz uma chamada por nome e esse nome não consta em routes
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/': return MaterialPageRoute(settings: settings, builder: (context) => HomePage());
          case '/detalhes': return MaterialPageRoute(settings: settings, builder: (context) => DetalhesPage(param: (settings.arguments as String?) ?? ''));

          default: return MaterialPageRoute(settings: settings, builder: (context) => HomePage());
        }
      },
      navigatorObservers: [ NavigatorObserverCustom() ],
    );
  }
}