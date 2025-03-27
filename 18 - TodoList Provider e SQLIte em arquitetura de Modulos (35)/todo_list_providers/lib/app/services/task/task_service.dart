import 'package:todo_list_providers/app/models/task_model.dart';

abstract class TaskService {
  Future<void> save(DateTime date, String description);
  Future<List<TaskModel>> getToday();
  Future<List<TaskModel>> getTomorrow();
  Future<List<TaskModel>> getWeek();
  Future<int> update(TaskModel task);
  Future<int> remove(TaskModel task);
  Future<int> removeAll();
}
