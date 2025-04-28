import 'package:mobx/mobx.dart';
import 'package:mobx_imc/models/full_name.dart';

class ContadorController {
  final _counter = Observable<int>(0);
  final _fullName = Observable<FullName>(
    FullName(first: 'first', last: 'last'),
  );

  late Action increment;
  late Computed _saudacao;

  ContadorController() {
    increment = Action(_increment);
    _saudacao = Computed(
      () => 'Olá ${_fullName.value.first} (${_counter.value})'
    );
  }

  int get counter => _counter.value;
  FullName get fullName => _fullName.value;
  String get saudacao => _saudacao.value;

  void _increment() {
    _counter.value++;

    // Não funciona
    _fullName.value.first = 'xpto';

    // Funciona
    _fullName.value = FullName(first: 'Tester', last: 'XPTO');

    // Ideal
    _fullName.value = _fullName.value.copyWith(first: 'Tester', last: 'XPTO');
  }
}