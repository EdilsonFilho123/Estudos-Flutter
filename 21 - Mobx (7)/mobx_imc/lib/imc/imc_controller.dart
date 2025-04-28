import 'dart:math';

import 'package:mobx/mobx.dart';
part 'imc_controller.g.dart';

class ImcController = ImcControllerBase with _$ImcController;

abstract class ImcControllerBase with Store {
  @observable
  double imc = 0;

  @observable
  String? error;

  @computed
  bool get hasError => (error?.isNotEmpty ?? false);

  @action
  Future<void> calcularIMC({
    required double peso,
    required double altura,
  }) async {
    error = null;
    try {
      imc = 0;
      await Future.delayed(Duration(seconds: 1));
      imc = (peso / pow(altura, 2));

      if (imc > 30) throw Exception('Erro desconhecido');
    } on Exception catch (_) {
      error = 'Erro ao calcular IMC';
    }
  }
}
