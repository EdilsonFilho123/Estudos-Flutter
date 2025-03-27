import 'package:desafio/views/home_page.dart';
import 'package:desafio/views/publication_page.dart';
import 'package:flutter/material.dart';

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
      home: HomePage(),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        WidgetBuilder builder;

        switch (settings.name) {
          case '/':
            builder = (context) => HomePage();
            break;
          case '/publication':
            builder = (context) => PublicationPage();
            break;
          default:
            throw Exception('Rota não encontrada: ${settings.name}');
        }

        return PageRouteBuilder(
          pageBuilder: (context, animation, secAnimation) => builder(context),
          transitionsBuilder: (context, animation, secAnimation, child) {
            final slideAnimation = Tween<Offset>(
              begin: Offset(-1.0, 0.0),
              end: Offset.zero,
            ).animate(animation);
            return SlideTransition(position: slideAnimation, child: child);
          },
          transitionDuration: Duration(milliseconds: 300),
        );
      },
    );
  }
}
