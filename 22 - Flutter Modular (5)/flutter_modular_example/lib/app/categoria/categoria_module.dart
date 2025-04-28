import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_controller.dart';
import 'package:flutter_modular_example/app/categoria/categoria_page.dart';
import 'package:flutter_modular_example/app/preco/preco_model.dart';
import 'package:flutter_modular_example/app/preco/preco_module.dart';
import 'package:flutter_modular_example/app/produto/produto_module.dart';

class CategoriaModule extends Module {
  @override
  List<Module> get imports => [
    PrecoModule()
  ];

  @override
  void binds(Injector i) {
    // i.add(PrecoModel.new); // Por padrão, cria uma nova instancia toda vez q é chamada
    // i.addSingleton(PrecoModel.new); // O Singleton faz com q uma nova instancia seja criada quando o modulo é carregado e ela seja usada para todas as chamadas, sem criar novas instancias
    // i.addLazySingleton(PrecoModel.new); // O Lazy faz com que um singleton seja iniciado quando for chamado pela primeira vez, e não no carregamento do modulo
    i.addLazySingleton(() => CategoriaController(precoModel: i<PrecoModel>()), );
  }

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (_) => CategoriaPage(categoria: r.args.data)
    );
    r.module('/produtos', module: ProdutoModule());
  }
}
