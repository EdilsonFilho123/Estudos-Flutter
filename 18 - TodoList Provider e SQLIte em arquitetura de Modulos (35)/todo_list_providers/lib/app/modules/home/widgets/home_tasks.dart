import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_providers/app/core/ui/theme_extensions.dart';
import 'package:todo_list_providers/app/models/task_filter_enum.dart';
import 'package:todo_list_providers/app/models/task_model.dart';
import 'package:todo_list_providers/app/modules/home/home_controller.dart';
import 'package:todo_list_providers/app/modules/home/widgets/home_task.dart';

class HomeTasks extends StatelessWidget {
  const HomeTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Selector<HomeController, String>(
            selector:
                (_, controller) =>
                    controller.selectedFilterEnum?.description ?? '',
            builder: (_, name, __) {
              return Text('TASK\'S $name', style: context.titleStyle);
            },
          ),
          Column(
            spacing: 5,
            children:
                context
                    .select<HomeController, List<TaskModel>>(
                      (controller) => controller.tasks,
                    )
                    .map((task) => HomeTask(task: task))
                    .toList(),
          ),
        ],
      ),
    );
  }
}
