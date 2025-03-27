import 'package:todo_list_providers/app/models/task_model.dart';

abstract class TaskRepository {
  Future<void> save(DateTime date, String description);
  Future<List<TaskModel>> findByPeriod(DateTime start, DateTime end);
  Future<int> update(TaskModel task);
  Future<int> remove(TaskModel task);
  Future<int> removeAll();
}
