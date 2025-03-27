import 'package:dart_poo/05_polimorfismo/medico.dart';

class Anestesista extends Medico{
  @override // polimorfismo
  void operar() {
    print('Preparar e esterelizar os equipamentos');
    print('Anestesiar o paciente');
  }
}