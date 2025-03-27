import 'package:dart_poo/05_polimorfismo/anestesista.dart';

class ResidenteAnestesista extends Anestesista {
  @override // reescrita
  void operar() {
    // super.operar();
    print('Auxiliar no preparo e na esterelização os equipamentos');
  }
}
