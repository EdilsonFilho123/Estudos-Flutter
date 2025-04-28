import 'package:cuidapet/app/modules/auth/modules/login/login_module.dart';
import 'package:cuidapet/app/modules/auth/auth_home_page.dart';
import 'package:cuidapet/app/modules/auth/modules/register/register_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  List<Module> get imports => const [];

  @override
  void binds(Injector i) {}
  @override
  void exportedBinds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => AuthHomePage(authStore: Modular.get()));
    r.module('/login', module: LoginModule());
    r.module('/register', module: RegisterModule());
  }
}