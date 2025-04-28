import 'package:cuidapet/app/modules/auth/modules/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  List<Module> get imports => const [];

  @override
  void binds(Injector i) {}
  @override
  void exportedBinds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => LoginPage());
  }
}