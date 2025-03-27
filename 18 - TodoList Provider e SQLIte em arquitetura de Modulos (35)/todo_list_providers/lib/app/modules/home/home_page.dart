import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_providers/app/core/notifier/default_change_notifier.dart';
import 'package:todo_list_providers/app/core/notifier/default_listener_notifier.dart';
import 'package:todo_list_providers/app/core/ui/theme_extensions.dart';
import 'package:todo_list_providers/app/core/ui/todo_list_icons.dart';
import 'package:todo_list_providers/app/models/task_filter_enum.dart';
import 'package:todo_list_providers/app/modules/home/home_controller.dart';
import 'package:todo_list_providers/app/modules/home/widgets/home_drawer.dart';
import 'package:todo_list_providers/app/modules/home/widgets/home_filters.dart';
import 'package:todo_list_providers/app/modules/home/widgets/home_header.dart';
import 'package:todo_list_providers/app/modules/home/widgets/home_tasks.dart';
import 'package:todo_list_providers/app/modules/home/widgets/home_week_filter.dart';
import 'package:todo_list_providers/app/modules/tasks/tasks_module.dart';

class HomePage extends StatefulWidget {
  final HomeController _controller;

  const HomePage({super.key, required HomeController controller})
    : _controller = controller;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    final listen = DefaultListenerNotifier(changeNotifier: widget._controller);
    listen
        .listener(context: context)
        .addCallbacksByState(
          DefaultChangeNotifierState.sucess,
          (_) => listen.dispose(),
        );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget._controller.refreshTotalTasksFilter();
      widget._controller.selectedFilterEnum = TaskFilterEnum.today;
    });
  }

  void _goToCreateTask(BuildContext context) async {
    await Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 400),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          animation = CurvedAnimation(
            parent: animation,
            curve: Curves.easeInQuad,
          );
          return ScaleTransition(
            scale: animation,
            alignment: Alignment.bottomRight,
            child: child,
          );
        },
        pageBuilder: ((context, animation, secondaryAnimation) {
          return TasksModule().getPage('/task/create', context);
        }),
      ),
    );

    widget._controller.refreshPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: context.primaryColor),
        backgroundColor: Color(0xFFFAFBFE),

        elevation: 0,
        actions: [
          PopupMenuButton(
            icon: Icon(TodoListIcons.filter),
            onSelected: (_) => widget._controller.toogleIsOnlyFinishedTasks(),
            itemBuilder: (_) {
              return [
                PopupMenuItem<bool>(
                  value: true,
                  child: Text(
                    'Mostrar ${(widget._controller.isOnlyFinishedTasks ? 'todas as tarefas' : 'tarefas concluidas')}',
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _goToCreateTask(context),
        backgroundColor: context.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Icon(Icons.add, color: Colors.white),
      ),
      backgroundColor: Color(0xFFFAFBFE),
      drawer: HomeDrawer(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
                minWidth: constraints.maxWidth,
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomeHeader(),
                      HomeFilters(),
                      HomeWeekFilter(),
                      HomeTasks(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
