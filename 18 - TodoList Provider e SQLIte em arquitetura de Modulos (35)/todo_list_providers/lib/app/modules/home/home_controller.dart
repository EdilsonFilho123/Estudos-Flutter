import 'package:todo_list_providers/app/core/notifier/default_change_notifier.dart';
import 'package:todo_list_providers/app/models/task_filter_enum.dart';
import 'package:todo_list_providers/app/models/task_model.dart';
import 'package:todo_list_providers/app/models/total_tasks_model.dart';
import 'package:todo_list_providers/app/services/task/task_service.dart';

class HomeController extends DefaultChangeNotifier {
  final TaskService _taskService;

  HomeController({required TaskService taskService})
    : _taskService = taskService;

  TaskFilterEnum? _selectedFilterEnum;
  int _selectedDayOfWeek = 1;
  List<TaskModel> _tasks = [];
  Map<TaskFilterEnum, TotalTasksModel> totalTasksFilter = {};
  bool _isOnlyFinishedTasks = false;

  DateTime get initialDateOfWeek {
    var dateBase = DateTime.now();

    if (dateBase.weekday != 1) {
      dateBase = dateBase.subtract(Duration(days: (dateBase.weekday - 1)));
    }

    return dateBase;
  }

  TaskFilterEnum? get selectedFilterEnum => _selectedFilterEnum;
  set selectedFilterEnum(TaskFilterEnum? selectedFilterEnum) {
    _selectedFilterEnum = selectedFilterEnum;
    refreshTasks();
  }

  int get selectedDayOfWeek => _selectedDayOfWeek;
  set selectedDayOfWeek(int selectedDayOfWeek) {
    _selectedDayOfWeek = selectedDayOfWeek;
    notifyListeners();
  }

  bool get isOnlyFinishedTasks => _isOnlyFinishedTasks;
  set isOnlyFinishedTasks(bool isOnlyFinishedTasks) {
    _isOnlyFinishedTasks = isOnlyFinishedTasks;
    notifyListeners();
  }

  void toogleIsOnlyFinishedTasks() =>
      isOnlyFinishedTasks = !isOnlyFinishedTasks;

  List<TaskModel> get tasks {
    var localTasks = _tasks;

    if (selectedFilterEnum == TaskFilterEnum.week) {
      final dateBaseStr = initialDateOfWeek
          .add(Duration(days: (_selectedDayOfWeek - 1)))
          .toIso8601String()
          .substring(0, 10);

      localTasks =
          localTasks
              .where(
                (task) =>
                    task.dateTime.toIso8601String().substring(0, 10) ==
                    dateBaseStr,
              )
              .toList();
    }

    if (_isOnlyFinishedTasks) {
      localTasks = localTasks.where((task) => task.finished).toList();
    }

    return localTasks;
  }

  Future<void> refreshTotalTasksFilter() async {
    setStateAndNotify(DefaultChangeNotifierState.loading);

    final dateBase = DateTime.now();
    List<TaskModel> listTasksDay = [];
    List<TaskModel> listTasksTomorrow = [];
    List<TaskModel> listTasksWeek = [];

    if (dateBase.weekday == 7) {
      final listTasks = await Future.wait([
        _taskService.getWeek(),
        _taskService.getTomorrow(),
      ]);

      listTasksWeek = listTasks[0];
      listTasksTomorrow = listTasks[1];
    } else {
      final amanha = dateBase.add(Duration(days: 1));
      listTasksWeek = await _taskService.getWeek();
      listTasksTomorrow =
          listTasksWeek
              .where(
                (el) =>
                    el.dateTime.toIso8601String().substring(0, 10) ==
                    amanha.toIso8601String().substring(0, 10),
              )
              .toList();
    }

    listTasksDay =
        listTasksWeek
            .where(
              (el) =>
                  el.dateTime.toIso8601String().substring(0, 10) ==
                  dateBase.toIso8601String().substring(0, 10),
            )
            .toList();

    totalTasksFilter = {
      TaskFilterEnum.today: TotalTasksModel(
        totalTasks: listTasksDay.length,
        totalTasksFinish: listTasksDay.where((el) => el.finished).length,
      ),
      TaskFilterEnum.tomorrow: TotalTasksModel(
        totalTasks: listTasksTomorrow.length,
        totalTasksFinish: listTasksTomorrow.where((el) => el.finished).length,
      ),
      TaskFilterEnum.week: TotalTasksModel(
        totalTasks: listTasksWeek.length,
        totalTasksFinish: listTasksWeek.where((el) => el.finished).length,
      ),
    };

    setStateAndNotify(DefaultChangeNotifierState.ok);
  }

  Future<void> refreshTasks() async {
    setStateAndNotify(DefaultChangeNotifierState.loading);

    try {
      switch (_selectedFilterEnum!) {
        case TaskFilterEnum.today:
          _tasks = await _taskService.getToday();
          break;
        case TaskFilterEnum.tomorrow:
          _tasks = await _taskService.getTomorrow();
          break;
        case TaskFilterEnum.week:
          _tasks = await _taskService.getWeek();
          break;
      }
      setState(DefaultChangeNotifierState.ok);
    } catch (e) {
      _tasks = [];
      setState(DefaultChangeNotifierState.error, 'Erro ao encontrar tasks');
    } finally {
      notifyListeners();
    }
  }

  Future<void> refreshPage() async {
    await refreshTotalTasksFilter();
    await refreshTasks();
  }

  Future<void> updateFinish(TaskModel task) async {
    await _taskService.update(task.copyWith(finished: !task.finished));
    await refreshPage();
  }

  Future<void> deleteTask(TaskModel task) async {
    await _taskService.remove(task);
    await refreshPage();
  }
}
