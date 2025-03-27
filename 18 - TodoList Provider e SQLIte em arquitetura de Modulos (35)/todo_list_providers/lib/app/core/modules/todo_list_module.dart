import 'package:flutter/material.dart';
import 'package:provider/single_child_widget.dart';
import 'package:todo_list_providers/app/core/modules/todo_list_page.dart';

abstract class TodoListModule {
  final Map<String, WidgetBuilder> _routers;
  final List<SingleChildWidget>? _bindings;

  TodoListModule({
    List<SingleChildWidget>? bindings,
    required Map<String, WidgetBuilder> routers,
  }) : _routers = routers,
       _bindings = bindings;

  Map<String, WidgetBuilder> get routers => _routers.map(
    (route, page) =>
        MapEntry(route, (_) => TodoListPage(bindings: _bindings, page: page)),
  );

  Widget getPage(String path, BuildContext context) {
    final widgetBuilder = _routers[path];
    if (widgetBuilder != null) {
      return TodoListPage(page: widgetBuilder, bindings: _bindings);
    }
    
    throw Exception('Rota \'$path\' não reconhecida...');
  }
}
