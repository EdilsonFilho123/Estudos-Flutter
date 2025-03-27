import 'package:dart_poo/12_equals_hashcode_tostring/pessoa.dart';

void main(List<String> args) {
  var p1 = Pessoa(nome: 'Kleber', email: 'kleber@gmail.com');
  var p2 = Pessoa(nome: 'Kleber', email: 'kleber@gmail.com');

  print(p1 == p2 ? "igual" : "nd igual");
  print(p1);
}
