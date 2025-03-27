import 'package:flutter/material.dart';
import 'package:todo_list_providers/app/core/ui/theme_extensions.dart';
import 'package:todo_list_providers/app/models/task_filter_enum.dart';
import 'package:todo_list_providers/app/models/total_tasks_model.dart';
import 'package:todo_list_providers/app/modules/home/widgets/todo_card_filter.dart';

class HomeFilters extends StatelessWidget {
  const HomeFilters({super.key});

  @override
  Widget build(BuildContext context) {
    // var data = DateTime.now();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('FILTROS', style: context.titleStyle),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 5,
            children: [
              TodoCardFilter(
                taskFilterEnum: TaskFilterEnum.today
              ),
              TodoCardFilter(
                taskFilterEnum: TaskFilterEnum.tomorrow
              ),
              TodoCardFilter(
                taskFilterEnum: TaskFilterEnum.week
              ),
            ],
          ),
        ),
      ],
    );
  }
}
