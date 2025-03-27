import 'package:flutter/material.dart';
import 'package:flutter_projeto_geral/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:flutter_projeto_geral/pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'package:flutter_projeto_geral/pages/cidades_json/cidades_json_page.dart';
import 'package:flutter_projeto_geral/pages/circular_avatar/circular_avatar_page.dart';
import 'package:flutter_projeto_geral/pages/colors/colors_page.dart';
import 'package:flutter_projeto_geral/pages/dialogs/dialogs_page.dart';
import 'package:flutter_projeto_geral/pages/forms/forms_page.dart';
import 'package:flutter_projeto_geral/pages/material_banner/material_banner_page.dart';
import 'package:flutter_projeto_geral/pages/scrolls/listview_page.dart';
import 'package:flutter_projeto_geral/pages/scrolls/singlechildscrollview_page.dart';
import 'package:flutter_projeto_geral/pages/snackbar/snackbar_page.dart';
import 'package:flutter_projeto_geral/pages/stack/stack_page.dart';
import 'package:flutter_projeto_geral/pages/stack/stack_page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.app_registration),
            tooltip: 'Selecione um item',
            onSelected: (value) {
              switch (value) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rowsColumns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                case PopupMenuPages.mediaQuery:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
                case PopupMenuPages.layoutBuilder:
                  Navigator.of(context).pushNamed('/layout_builder');
                  break;
                case PopupMenuPages.botoesRotacaoTexto:
                  Navigator.of(context).pushNamed(BotoesRotacaoTextoPage.route);
                  break;
                case PopupMenuPages.singlechildscroll:
                  Navigator.of(
                    context,
                  ).pushNamed(SinglechildscrollviewPage.route);
                  break;
                case PopupMenuPages.listview:
                  Navigator.of(context).pushNamed(ListviewPage.route);
                  break;
                case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed(DialogsPage.route);
                  break;
                case PopupMenuPages.snackbar:
                  Navigator.of(context).pushNamed(SnackbarPage.route);
                  break;
                case PopupMenuPages.forms:
                  Navigator.of(context).pushNamed(FormsPage.route);
                  break;
                case PopupMenuPages.cidadesJSON:
                  Navigator.of(context).pushNamed(CidadesJsonPage.route);
                  break;
                case PopupMenuPages.stack:
                  Navigator.of(context).pushNamed(StackPage.route);
                  break;
                case PopupMenuPages.stack2:
                  Navigator.of(context).pushNamed(StackPage2.route);
                  break;
                case PopupMenuPages.bottomNavigatorBar:
                  Navigator.of(context).pushNamed(BottomNavigatorBarPage.route);
                  break;
                case PopupMenuPages.circularAvatar:
                  Navigator.of(context).pushNamed(CircularAvatarPage.route);
                  break;
                case PopupMenuPages.colors:
                  Navigator.of(context).pushNamed(ColorsPage.route);
                  break;
                case PopupMenuPages.materialBanner:
                  Navigator.of(context).pushNamed(MaterialBannerPage.route);
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rowsColumns,
                  child: Text('Rows & Columns'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.mediaQuery,
                  child: Text('Media Query'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layoutBuilder,
                  child: Text('Layout Builder'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.botoesRotacaoTexto,
                  child: Text(BotoesRotacaoTextoPage.title),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.singlechildscroll,
                  child: Text(SinglechildscrollviewPage.title),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.listview,
                  child: Text(ListviewPage.title),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text(DialogsPage.title),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.snackbar,
                  child: Text(SnackbarPage.title),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.forms,
                  child: Text(FormsPage.title),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.cidadesJSON,
                  child: Text(CidadesJsonPage.title),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack,
                  child: Text(StackPage.title),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack2,
                  child: Text(StackPage2.title),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.bottomNavigatorBar,
                  child: Text(BottomNavigatorBarPage.title),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.circularAvatar,
                  child: Text(CircularAvatarPage.title),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.colors,
                  child: Text(ColorsPage.title),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.materialBanner,
                  child: Text(MaterialBannerPage.title),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}

enum PopupMenuPages {
  container,
  rowsColumns,
  mediaQuery,
  layoutBuilder,
  botoesRotacaoTexto,
  singlechildscroll,
  listview,
  dialogs,
  snackbar,
  forms,
  cidadesJSON,
  stack,
  stack2,
  bottomNavigatorBar,
  circularAvatar,
  colors,
  materialBanner,
}
