import 'package:todo_list_providers/app/core/database/sqlite_connection_factory.dart';
import 'package:todo_list_providers/app/models/task_model.dart';
import 'package:todo_list_providers/app/repositories/task/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final SqliteConnectionFactory _sqliteConnectionFactory;

  TaskRepositoryImpl({required SqliteConnectionFactory sqliteConnectionFactory})
    : _sqliteConnectionFactory = sqliteConnectionFactory;

  @override
  Future<void> save(DateTime date, String description) async {
    final conn = await _sqliteConnectionFactory.openConnection();

    await conn.insert('todo', {
      'id': null,
      'descricao': description,
      'data_hora': date.toIso8601String().substring(0, 19),
      'finalizado': 0,
    });
  }

  @override
  Future<List<TaskModel>> findByPeriod(DateTime start, DateTime end) async {
    final startFilter = start
        .copyWith(hour: 0, minute: 0, second: 0)
        .toIso8601String()
        .substring(0, 19);
    final endFilter = end
        .copyWith(hour: 23, minute: 59, second: 59)
        .toIso8601String()
        .substring(0, 19);

    final conn = await _sqliteConnectionFactory.openConnection();
    final result = await conn.query(
      'todo',
      where: 'data_hora between \'$startFilter\' and \'$endFilter\'',
      orderBy: 'data_hora',
    );

    return result.map((el) => TaskModel.fromDB(el)).toList();
  }

  @override
  Future<int> update(TaskModel task) async {
    final conn = await _sqliteConnectionFactory.openConnection();
    return await conn.update('todo', task.toDB(), where: 'id = ${task.id}');
  }
  
  @override
  Future<int> remove(TaskModel task) async {
    final conn = await _sqliteConnectionFactory.openConnection();
    return await conn.delete('todo', where: 'id = ${task.id}');
  }
  
  @override
  Future<int> removeAll() async {
    final conn = await _sqliteConnectionFactory.openConnection();
    return await conn.delete('todo');
  }
}
