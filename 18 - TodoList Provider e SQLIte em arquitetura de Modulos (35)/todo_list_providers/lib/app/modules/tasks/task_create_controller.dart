import 'package:todo_list_providers/app/core/notifier/default_change_notifier.dart';
import 'package:todo_list_providers/app/services/task/task_service.dart';

class TaskCreateController extends DefaultChangeNotifier {
  final TaskService _taskService;
  DateTime? _selectedDate;

  TaskCreateController({required TaskService taskService})
    : _taskService = taskService;

  set selectedDate(DateTime? selectedDate) {
    _selectedDate = selectedDate;
    setStateAndNotify(DefaultChangeNotifierState.ok);
  }

  DateTime? get selectedDate => _selectedDate;

  Future<void> save(String description) async {
    setStateAndNotify(DefaultChangeNotifierState.loading);

    if (_selectedDate == null) {
      setStateAndNotify(
        DefaultChangeNotifierState.error,
        'Data não selecionada',
      );
    } else {
      try {
        await _taskService.save(_selectedDate!, description);
        setState(DefaultChangeNotifierState.sucess);
      } catch (e) {
        print(e);
        setState(DefaultChangeNotifierState.error, 'Erro ao cadastrar task...');
      } finally {
        notifyListeners();
      }
    }
  }
}
