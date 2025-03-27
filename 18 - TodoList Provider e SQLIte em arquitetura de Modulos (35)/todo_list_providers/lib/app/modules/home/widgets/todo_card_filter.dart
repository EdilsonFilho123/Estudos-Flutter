import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo_list_providers/app/core/ui/theme_extensions.dart';
import 'package:todo_list_providers/app/models/task_filter_enum.dart';
import 'package:todo_list_providers/app/models/total_tasks_model.dart';
import 'package:todo_list_providers/app/modules/home/home_controller.dart';

class TodoCardFilter extends StatelessWidget {
  final TaskFilterEnum taskFilterEnum;
  var label = '';

  TodoCardFilter({super.key, required this.taskFilterEnum}) {
    switch (taskFilterEnum) {
      case TaskFilterEnum.today:
        label = 'Hoje';
        break;
      case TaskFilterEnum.tomorrow:
        label = 'Amanhã';
        break;
      case TaskFilterEnum.week:
        label = 'Semana';
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    var themas = <String, Color Function(bool)>{
      'card': (bool select) => (select ? context.primaryColor : Colors.white),
      'subTitle': (bool select) => (select ? Colors.white : Colors.grey),
      'title': (bool select) => (select ? Colors.white : Colors.black),
      'progress':
          (bool select) => (select ? Colors.white : context.primaryColor),
      'progress_background':
          (bool select) => (select ? context.primaryColorLight : Colors.grey),
    };

    var controller = context.read<HomeController>();

    return InkWell(
      onTap: () => controller.selectedFilterEnum = taskFilterEnum,
      borderRadius: BorderRadius.circular(30),
      child: Selector<HomeController, bool>(
        selector: (_, HomeController homeController) {
          return (homeController.selectedFilterEnum != null &&
              homeController.selectedFilterEnum == taskFilterEnum);
        },
        builder: (_, isSelected, __) {
          return Container(
            constraints: BoxConstraints(minHeight: 120, maxWidth: 150),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: themas['card']!(isSelected),
              border: Border.all(width: 1, color: Colors.grey.withOpacity(.8)),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Selector<HomeController, TotalTasksModel?>(
                  selector:
                      (_, controller) =>
                          controller.totalTasksFilter[taskFilterEnum],
                  builder:
                      (_, totalTasksModel, __) => Text(
                        ((totalTasksModel == null)
                            ? ''
                            : '${totalTasksModel.totalTasksFinish} de ${totalTasksModel.totalTasks} Task(s) Concluida(s)'),
                        style: context.titleStyle.copyWith(
                          fontSize: 8,
                          color: themas['subTitle']!(isSelected),
                        ),
                      ),
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: themas['title']!(isSelected),
                  ),
                ),
                Selector<HomeController, TotalTasksModel?>(
                  selector:
                      (_, controller) =>
                          controller.totalTasksFilter[taskFilterEnum],
                  builder:
                      (_, totalTasksModel, __) => Visibility(
                        visible:
                            (controller.totalTasksFilter[taskFilterEnum] !=
                                    null &&
                                controller
                                        .totalTasksFilter[taskFilterEnum]!
                                        .totalTasks !=
                                    0),
                        child: TweenAnimationBuilder<double>(
                          tween: Tween(
                            begin: 0,
                            end:
                                controller.totalTasksFilter[taskFilterEnum]
                                    ?.percentage() ??
                                0,
                          ),
                          duration: Duration(seconds: 1),
                          builder:
                              (_, perc, ___) => LinearProgressIndicator(
                                backgroundColor: themas['progress_background']!(
                                  isSelected,
                                ),
                                valueColor: AlwaysStoppedAnimation(
                                  themas['progress']!(isSelected),
                                ),
                                value: perc,
                              ),
                        ),
                      ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
