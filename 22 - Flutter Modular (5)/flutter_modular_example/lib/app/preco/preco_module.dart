import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/preco/preco_model.dart';

class PrecoModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addLazySingleton(PrecoModel.new);
  }
}
