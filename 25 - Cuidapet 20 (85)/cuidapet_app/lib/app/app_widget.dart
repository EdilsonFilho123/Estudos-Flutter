import 'package:cuidapet/app/shared/ui/ui_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/auth/');
    Modular.setObservers([Asuka.asukaHeroController]);

    return ScreenUtilInit(
      designSize: Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:
          (_, __) => MaterialApp.router(
            title: 'Cuidapet',
            debugShowCheckedModeBanner: false,
            theme: UiConfig.theme,
            builder: Asuka.builder,
            routerConfig: Modular.routerConfig,
          ),
    );
  }
}
