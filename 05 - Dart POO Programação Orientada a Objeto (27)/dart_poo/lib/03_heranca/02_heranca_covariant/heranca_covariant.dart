import 'package:dart_poo/03_heranca/02_heranca_covariant/banana.dart';
import 'package:dart_poo/03_heranca/02_heranca_covariant/fruta.dart';
import 'package:dart_poo/03_heranca/02_heranca_covariant/humano.dart';
import 'package:dart_poo/03_heranca/02_heranca_covariant/macaco.dart';

void main(List<String> args) {

  var h1 = Humano();
  h1.comer(Fruta());
  // print(Fruta().tipo);

  // se passar o covariant antes da declaração de um atributo ou parametro, dizemos que seu tipo é da classe declara e das classes filhas dela

  var m1 = Macaco();
  m1.comer(Banana());
  print(Banana().tipo);

}
