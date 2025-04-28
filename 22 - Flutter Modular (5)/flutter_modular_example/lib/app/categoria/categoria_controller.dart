import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/preco/preco_model.dart';

class CategoriaController implements Disposable {
  PrecoModel precoModel;

  CategoriaController({required this.precoModel}) {
    print('----------> Classe CategoriaController INICIADA');
  }
  
  @override
  void dispose() {
    // dispose
  }
}
