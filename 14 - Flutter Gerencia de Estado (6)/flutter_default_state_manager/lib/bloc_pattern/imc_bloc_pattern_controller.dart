import 'dart:async';
import 'dart:math';

import 'package:flutter_default_state_manager/bloc_pattern/imc_state.dart';

class ImcBlocPatternController {
  final _imcStreamController =
      StreamController<ImcState>.broadcast()..add(ImcState(imc: 0));

  Stream<ImcState> get imcOut => _imcStreamController.stream;

  void calcularIMC({required double peso, required double altura}) async {
    _imcStreamController.add(ImcStateLoading());
    await Future.delayed(Duration(seconds: 1));
    _imcStreamController.add(ImcState(imc: (peso / pow(altura, 2))));
    // _imcStreamController.add(ImcStateError());
  }

  void dispose() => _imcStreamController.close();
}
