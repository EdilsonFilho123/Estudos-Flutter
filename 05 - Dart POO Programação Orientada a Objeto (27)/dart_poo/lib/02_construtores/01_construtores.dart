import 'package:dart_poo/02_construtores/pessoa.dart';

void main(List<String> args) {
  var p1 = Pessoa('Kleber', 10, 'Masculino');

  print(p1.getNome()); // Kleber
  print(p1.getIdade()); // 10
  print(p1.getSexo()); // Masculino

  ///////////////////////////////////////////
  
  var p2 = Pessoa.parOpcional('Krotun', -73);

  print(p2.getNome()); // Krotun
  print(p2.getIdade()); // -73
  print(p2.getSexo()); // null

  ///////////////////////////////////////////
  
  var p3 = Pessoa.parNomeado(nome: 'Isabella', sexo: 'Feminino', idade: 23);

  print(p3.getNome()); // Isabella
  print(p3.getIdade()); // 23
  print(p3.getSexo()); // Feminino

  ///////////////////////////////////////////
  
  var p4 = Pessoa.fabrica('Glenda');

  print(p4.getNome()); // Glenda (Fabricado - factory@)
  print(p4.getIdade()); // null
  print(p4.getSexo()); // null
}
