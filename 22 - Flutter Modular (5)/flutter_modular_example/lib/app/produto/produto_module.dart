import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/preco/preco_module.dart';
import 'package:flutter_modular_example/app/produto/produto_page.dart';

class ProdutoModule extends Module {
  @override
  List<Module> get imports => [
    PrecoModule()
  ];

  @override
  void binds(Injector i) {}

  @override
  void exportedBinds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child('/:nome', child: (_) => ProdutoPage(produto: r.args.params['nome'])); // parametros path "obrigatório" (apesar de funcionar se não passar o parametro no caso do parametro ser no final e não no meio do path)
    r.child('/:nome/xyz', child: (_) => ProdutoPage(produto: r.args.params['nome'])); // parametros path totalmente obrigatório
    r.child('/', child: (_) => ProdutoPage(produto: r.args.queryParams['nome'])); // parametros query
  }
}