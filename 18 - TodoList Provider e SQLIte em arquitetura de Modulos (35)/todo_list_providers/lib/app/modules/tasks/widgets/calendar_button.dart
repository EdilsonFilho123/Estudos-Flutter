import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_providers/app/core/ui/theme_extensions.dart';
import 'package:todo_list_providers/app/modules/tasks/task_create_controller.dart';

class CalendarButton extends StatelessWidget {
  const CalendarButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd/MM/y');
    return InkWell(
      onTap: () async {
        final taskController = context.read<TaskCreateController>();

        var date = DateTime.now();
        final DateTime? selectedDate = await showDatePicker(
          context: context,
          initialDate: date,
          firstDate: DateTime(2000),
          lastDate: date.add(Duration(days: 10 * 365)),
        );

        taskController.selectedDate = selectedDate;
      },
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.calendar_month_outlined, color: Colors.grey),
            SizedBox(width: 10),
            Selector<TaskCreateController, DateTime?>(
              selector: (context, taskCreateController) {
                return taskCreateController.selectedDate;
              },
              builder: (_, DateTime? date, __) {
                return Text(
                  ((date == null)
                      ? 'SELECIONE UMA DATA'
                      : dateFormat.format(date)),
                  style: context.titleStyle,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
