import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_projeto_geral/pages/cidades_json/models/cidade.dart';

class CidadesJsonPage extends StatefulWidget {
  const CidadesJsonPage({super.key});
  static final title = 'Cidades JSON';
  static final route = '/cidades_json';

  @override
  State<CidadesJsonPage> createState() => _CidadesJsonPageState();
}

class _CidadesJsonPageState extends State<CidadesJsonPage> {
  var cidades = <Cidade>[];

  @override
  void initState() {
    super.initState();

    rootBundle.loadString('assets/cidades.json').then((String conteudo) {
      setState(() {
        cidades =
            jsonDecode(
              conteudo,
            ).map<Cidade>((el) => Cidade.fromMap(el)).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(CidadesJsonPage.title)),
      body: ListView.builder(
        itemCount: cidades.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(cidades[i].cidade),
            subtitle: Text(cidades[i].toString()),
          );
        },
      ),
    );
  }
}
