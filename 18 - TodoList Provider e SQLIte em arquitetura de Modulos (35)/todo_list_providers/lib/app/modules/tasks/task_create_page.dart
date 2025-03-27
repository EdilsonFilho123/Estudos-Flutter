import 'package:flutter/material.dart';
import 'package:todo_list_providers/app/core/navigator/todo_list_navigator.dart';
import 'package:todo_list_providers/app/core/notifier/default_change_notifier.dart';
import 'package:todo_list_providers/app/core/notifier/default_listener_notifier.dart';
import 'package:todo_list_providers/app/core/ui/theme_extensions.dart';
import 'package:todo_list_providers/app/core/widgets/todo_list_field.dart';

import 'package:todo_list_providers/app/modules/tasks/task_create_controller.dart';
import 'package:todo_list_providers/app/modules/tasks/widgets/calendar_button.dart';
import 'package:validatorless/validatorless.dart';

class TaskCreatePage extends StatefulWidget {
  final TaskCreateController _controller;

  TaskCreatePage({super.key, required TaskCreateController controller})
    : _controller = controller;

  @override
  State<TaskCreatePage> createState() => _TaskCreatePageState();
}

class _TaskCreatePageState extends State<TaskCreatePage> {
  final _taskEC = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    final listener = DefaultListenerNotifier(
      changeNotifier: widget._controller,
    );
    listener.listener(context: context).addCallbacksByState(
      DefaultChangeNotifierState.sucess,
      (_) {
        listener.dispose();
        TodoListNavigator.to.pop();
      },
    );
  }

  @override
  void dispose() {
    _taskEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () => TodoListNavigator.to.pop(),
            icon: Icon(Icons.close, color: Colors.black),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (_formKey.currentState?.validate() ?? false) {
            widget._controller.save(_taskEC.text);
          }
        },
        label: Text(
          'Salvar Task',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: context.primaryColor,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Criar Task',
                  textAlign: TextAlign.center,
                  style: context.titleStyle.copyWith(fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              TodoListField.field(
                label: '',
                controller: _taskEC,
                validator: Validatorless.required('Descrição é obrigatória'),
              ),
              SizedBox(height: 20),
              CalendarButton(),
            ],
          ),
        ),
      ),
    );
  }
}
