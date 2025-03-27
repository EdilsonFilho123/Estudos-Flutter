import 'dart:convert';

import 'package:dart_consumo_api/controllers/alunos_controller.dart';
import 'package:dart_consumo_api/dart_consumo_api.dart';
import 'package:dart_consumo_api/models/telefone.dart';

void main(List<String> args) {
  AlunosController().update();
}

void main2(List<String> args) {
  final String cidadeJson = '''
    {
      "id": 2,
      "nome": "Campinas"
    }
  ''';

  // [] -> List
  // {} -> Map<String, dynamic>

  final cidadeMap = json.decode(cidadeJson);

  print('$cidadeMap - ${cidadeMap.runtimeType}');
  print('${cidadeMap['nome']} - ${cidadeMap['nome'].runtimeType}');

  final cidadeMapJson = <String, dynamic>{"id": 2, "nome": "Campinas"};

  print(json.encode(cidadeMapJson));

  final String telefoneJson = '''
    {
      "ddd": 19,
      "telefone": "999999999"
    }
  ''';
  final telefone = Telefone.fromJson(telefoneJson);

  print(telefone.ddd);
  print(telefone.telefone);
  print(telefone.toJson());
  print(telefone.toMap());
}

