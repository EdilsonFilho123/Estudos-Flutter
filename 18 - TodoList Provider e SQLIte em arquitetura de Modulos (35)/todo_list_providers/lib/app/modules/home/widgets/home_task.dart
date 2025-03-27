import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_providers/app/models/task_model.dart';
import 'package:todo_list_providers/app/modules/home/home_controller.dart';

class HomeTask extends StatelessWidget {
  final TaskModel task;
  final DateFormat df = DateFormat('dd/MM/y');

  HomeTask({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(color: Colors.black, width: 1),
      ),
      child: Dismissible(
        key: ValueKey<int>(task.id),
        secondaryBackground: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.delete_outline,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
        background: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.delete_outline,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
        onDismissed: (_) => context.read<HomeController>().deleteTask(task),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(color: Colors.grey)],
            // border: Border.all(color: Colors.black, width: 1),
          ),
          child: IntrinsicHeight(
            child: ListTile(
              contentPadding: EdgeInsets.all(8),
              leading: Checkbox(
                value: task.finished,
                onChanged:
                    (_) => context.read<HomeController>().updateFinish(task),
              ),
              title: Text(
                task.description,
                style: TextStyle(
                  decoration:
                      (task.finished ? TextDecoration.lineThrough : null),
                ),
              ),
              subtitle: Text(
                df.format(task.dateTime),
                style: TextStyle(
                  decoration:
                      (task.finished ? TextDecoration.lineThrough : null),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(width: 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
