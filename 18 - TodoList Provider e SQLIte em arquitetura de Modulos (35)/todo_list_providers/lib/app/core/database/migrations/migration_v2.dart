import 'package:sqflite_common/sqlite_api.dart';
import 'package:todo_list_providers/app/core/database/migrations/migration.dart';

class MigrationV2 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('''
      create table teste(
        id Integer primary key autoincrement,
        descricao varchar(500) not null
      );
    ''');
  }

  @override
  void upgrade(Batch batch) {}
}
