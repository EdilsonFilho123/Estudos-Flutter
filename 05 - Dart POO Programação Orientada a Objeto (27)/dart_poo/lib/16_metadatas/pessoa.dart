import 'dart:io';

import 'package:dart_poo/16_metadatas/fazer.dart';

@Fazer(quem: 'Kleber Thompson', oque: 'Tentando ler classe')
// @Deprecated("Ja ta veio ja, nem usa direito")
@gzip
// @override

class Pessoa {
  @Fazer(quem: 'Kleber Thompson V2', oque: 'Tentando ler atributo')
  @Deprecated('hj em dia se usa mais o Nome Social')
  String? nome;
  

  @Fazer(quem: 'Kleber Thompson V3', oque: 'Tentando ler metodo')
  @override
  void teste() {
    print(nome ?? 'nome vazio');
  }
}
