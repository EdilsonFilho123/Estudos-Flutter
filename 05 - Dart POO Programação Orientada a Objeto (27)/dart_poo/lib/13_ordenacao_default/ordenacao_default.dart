import 'package:dart_poo/13_ordenacao_default/cliente.dart';

void main(List<String> args) {
  var c1 = Cliente(nome: 'Kleber', email: 'kleber@gmail.com');
  var c2 = Cliente(nome: 'Luana', email: 'luana@gmail.com');
  var c3 = Cliente(nome: 'Guilherme', email: 'guilherme@gmail.com');
  var c4 = Cliente(nome: 'Arthuro', email: 'arthuro@gmail.com');

  var lista = [c1, c2, c3, c4];

  lista.sort();

  print(lista);
}
