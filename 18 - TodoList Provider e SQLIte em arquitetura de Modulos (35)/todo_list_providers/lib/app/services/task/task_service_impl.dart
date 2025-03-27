import 'package:todo_list_providers/app/models/task_model.dart';
import 'package:todo_list_providers/app/repositories/task/task_repository.dart';
import 'package:todo_list_providers/app/services/task/task_service.dart';

class TaskServiceImpl implements TaskService {
  final TaskRepository _taskRepository;

  TaskServiceImpl({required TaskRepository taskRepository})
    : _taskRepository = taskRepository;

  @override
  Future<void> save(DateTime date, String description) =>
      _taskRepository.save(date, description);

  @override
  Future<List<TaskModel>> getToday() {
    final dateBase = DateTime.now();
    return _taskRepository.findByPeriod(dateBase, dateBase);
  }

  @override
  Future<List<TaskModel>> getTomorrow() {
    final dateBase = DateTime.now().add(Duration(days: 1));
    return _taskRepository.findByPeriod(dateBase, dateBase);
  }

  @override
  Future<List<TaskModel>> getWeek() {
    var dateStart = DateTime.now();

    if (dateStart.weekday != DateTime.monday) {
      dateStart = dateStart.subtract(Duration(days: (dateStart.weekday - 1)));
    }

    return _taskRepository.findByPeriod(
      dateStart,
      dateStart.add(Duration(days: 7)),
    );
  }

  @override
  Future<int> update(TaskModel task) => _taskRepository.update(task);

  @override
  Future<int> remove(TaskModel task) => _taskRepository.remove(task);

  @override
  Future<int> removeAll() => _taskRepository.removeAll();
}
