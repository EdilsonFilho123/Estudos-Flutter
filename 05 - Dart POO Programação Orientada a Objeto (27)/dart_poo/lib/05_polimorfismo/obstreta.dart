import 'package:dart_poo/05_polimorfismo/medico.dart';

class Obstetra extends Medico {
  @override // polimorfismo
  void operar() {
    print('Preparar o paciente');
    print('Nascimento do bebe');
  }
}
