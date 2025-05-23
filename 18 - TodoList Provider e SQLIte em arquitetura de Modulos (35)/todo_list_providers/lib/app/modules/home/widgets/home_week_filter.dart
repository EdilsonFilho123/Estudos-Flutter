import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_providers/app/core/ui/theme_extensions.dart';
import 'package:todo_list_providers/app/models/task_filter_enum.dart';
import 'package:todo_list_providers/app/modules/home/home_controller.dart';

class HomeWeekFilter extends StatelessWidget {
  const HomeWeekFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<HomeController>();
    final startDay = controller.initialDateOfWeek;

    return Visibility(
      visible: context.select<HomeController, bool>(
        (controller) => controller.selectedFilterEnum == TaskFilterEnum.week,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text('DIAS DA SEMANA', style: context.titleStyle),
          SizedBox(height: 10),
          SizedBox(
            height: 95,
            child: DatePicker(
              startDay,
              locale: 'pt_BR',
              initialSelectedDate: startDay.add(
                Duration(days: controller.selectedDayOfWeek - 1),
              ),
              selectionColor: context.primaryColor,
              selectedTextColor: Colors.white,
              daysCount: 7,
              monthTextStyle: TextStyle(fontSize: 8),
              dayTextStyle: TextStyle(fontSize: 13),
              dateTextStyle: TextStyle(fontSize: 13),
              onDateChange:
                  (date) => controller.selectedDayOfWeek = date.weekday,
            ),
          ),
        ],
      ),
    );
  }
}
