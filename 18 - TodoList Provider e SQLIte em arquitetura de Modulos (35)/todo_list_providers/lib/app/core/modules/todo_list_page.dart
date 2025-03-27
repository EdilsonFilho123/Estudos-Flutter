import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class TodoListPage extends StatelessWidget {
  final List<SingleChildWidget>? _bindings;
  final WidgetBuilder _page;

  const TodoListPage({
    super.key,
    List<SingleChildWidget>? bindings,
    required WidgetBuilder page,
  }) : _bindings = bindings,
       _page = page;

  @override
  Widget build(BuildContext context) {
    final builder = Builder(builder: (context) => _page(context));

    if (_bindings == null || _bindings.isEmpty) return builder;
    return MultiProvider(providers: _bindings, child: builder);
  }
}
