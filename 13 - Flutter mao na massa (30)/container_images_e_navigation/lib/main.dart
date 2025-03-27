import 'package:flutter/material.dart';
// import 'package:flutter_mao_na_massa/home/container_widget.dart';
// import 'package:flutter_mao_na_massa/images/images_page.dart';
// import 'package:flutter_mao_na_massa/home/home_page.dart';
import 'package:flutter_mao_na_massa/navegation/home_page_navigation.dart';
import 'package:flutter_mao_na_massa/navegation/page3.dart';
import 'package:flutter_mao_na_massa/navegation/page4.dart';
import 'package:flutter_mao_na_massa/navegation_params/detalhe_stateful.dart';
import 'package:flutter_mao_na_massa/navegation_params/lista.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: HomePageNavigation(),
      initialRoute: '/nav_param',
      routes: {
        '/': (_) => HomePageNavigation(),
        '/page3': (_) => Page3(),
        Page4.routeName: (_) => Page4(),
        '/nav_param': (_) => Lista(),
        '/detalhes': (_) => DetalheStateful()
      },
    );
  }
}