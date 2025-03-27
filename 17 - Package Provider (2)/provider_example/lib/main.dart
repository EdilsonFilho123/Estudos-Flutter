import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/change_notifier/change_notifier_page.dart';
import 'package:provider_example/change_notifier/provider_controller.dart';
import 'package:provider_example/provider/provider_page.dart';
import 'package:provider_example/provider/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create:
              (_) => UserModel(
                name: 'Edilson Filho',
                imgAvatar:
                    'https://avatars.githubusercontent.com/u/50504618?v=4',
                birthDate: '11/12/2003',
              ),
        ),
        ChangeNotifierProvider(create: (_) => ProviderController()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: Builder(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed:
                          () => Navigator.of(context).pushNamed('/provider'),
                      child: Text('Provider'),
                    ),
                    ElevatedButton(
                      onPressed:
                          () => Navigator.of(context).pushNamed('/change'),
                      child: Text('Change Notifier'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),

        routes: {
          '/provider': (_) => ProviderPage(),
          '/change': (_) => ChangeNotifierPage(),
        },
      ),
    );
  }
}
