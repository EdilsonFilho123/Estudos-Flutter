import 'package:dart_poo/06_interfaces/carro.dart';

class Uno implements Carro {
  @override
  String motor = '1.0';

  @override
  int portas = 2;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 160;
  }

  bool temEscadaEmCima() {
    return true;
  }
}
