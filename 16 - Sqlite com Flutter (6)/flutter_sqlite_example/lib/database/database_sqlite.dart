import 'package:sqflite/sqflite.dart';

class DatabaseSqlite {
  Future<void> openConnetion() async {
    await openDatabase(
      'sqlite_example.db',
      version: 1,
      onCreate: (Database db, version) {
        final batch = db.batch();

        batch.execute('''
          create table teste(
            id Integer primary key autoincrement,
            nome varchar(200)
          )
        ''');

        batch.commit();
      },
    );
  }
}
