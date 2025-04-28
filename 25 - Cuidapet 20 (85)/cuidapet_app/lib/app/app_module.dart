import 'package:cuidapet/app/modules/auth/auth_module.dart';
import 'package:cuidapet/app/modules/core/core_module.dart';
import 'package:cuidapet/app/modules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
    CoreModule()
  ];

  @override
  void binds(Injector i) {}
  @override
  void exportedBinds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.module('/auth', module: AuthModule());
    r.module('/home', module: HomeModule());
  }
}
