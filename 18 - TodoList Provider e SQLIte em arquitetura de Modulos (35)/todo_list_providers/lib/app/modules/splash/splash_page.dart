import 'package:flutter/material.dart';
import 'package:todo_list_providers/app/core/widgets/todo_list_logo.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: TodoListLogo()));
  }
}
