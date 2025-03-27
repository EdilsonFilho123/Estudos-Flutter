import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projeto_geral/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:flutter_projeto_geral/pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'package:flutter_projeto_geral/pages/cidades_json/cidades_json_page.dart';
import 'package:flutter_projeto_geral/pages/circular_avatar/circular_avatar_page.dart';
import 'package:flutter_projeto_geral/pages/colors/colors_page.dart';
import 'package:flutter_projeto_geral/pages/container/container_page.dart';
import 'package:flutter_projeto_geral/pages/dialogs/dialogs_page.dart';
import 'package:flutter_projeto_geral/pages/forms/forms_page.dart';
import 'package:flutter_projeto_geral/pages/home/home_page.dart';
import 'package:flutter_projeto_geral/pages/layout_builder/layout_builder_page.dart';
import 'package:flutter_projeto_geral/pages/material_banner/material_banner_page.dart';
import 'package:flutter_projeto_geral/pages/media_query/media_query_page.dart';
import 'package:flutter_projeto_geral/pages/rows_columns/rows_columns_page.dart';
import 'package:flutter_projeto_geral/pages/scrolls/listview_page.dart';
import 'package:flutter_projeto_geral/pages/scrolls/singlechildscrollview_page.dart';
import 'package:flutter_projeto_geral/pages/snackbar/snackbar_page.dart';
import 'package:flutter_projeto_geral/pages/stack/stack_page.dart';
import 'package:flutter_projeto_geral/pages/stack/stack_page2.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false, //!kReleaseMode,
      builder: (_) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project General',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // primaryColor: Colors.deepPurple,
        // colorSchemeSeed: Colors.deepPurple,
        primarySwatch: Colors.deepOrange,
        appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple),
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        '/': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
        '/rows_columns': (_) => RowsColumnsPage(),
        '/media_query': (_) => MediaQueryPage(),
        '/layout_builder': (_) => LayoutBuilderPage(),
        BotoesRotacaoTextoPage.route: (_) => BotoesRotacaoTextoPage(),
        SinglechildscrollviewPage.route: (_) => SinglechildscrollviewPage(),
        ListviewPage.route: (_) => ListviewPage(),
        DialogsPage.route: (_) => DialogsPage(),
        SnackbarPage.route: (_) => SnackbarPage(),
        FormsPage.route: (_) => FormsPage(),
        CidadesJsonPage.route: (_) => CidadesJsonPage(),
        StackPage.route: (_) => StackPage(),
        StackPage2.route: (_) => StackPage2(),
        BottomNavigatorBarPage.route: (_) => BottomNavigatorBarPage(),
        CircularAvatarPage.route: (_) => CircularAvatarPage(),
        ColorsPage.route: (_) => ColorsPage(),
        MaterialBannerPage.route: (_) => MaterialBannerPage(),
      },
    );
  }
}
