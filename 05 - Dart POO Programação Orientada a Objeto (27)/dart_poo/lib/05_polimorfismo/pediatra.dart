import 'package:dart_poo/05_polimorfismo/medico.dart';

class Pediatra extends Medico {
  @override // polimorfismo
  void operar() {
    print('Examinar criança no pos-parto');
  }
}
