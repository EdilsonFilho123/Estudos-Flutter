import 'package:todo_list_provider/app/core/migrations/migration.dart';
import 'package:todo_list_provider/app/core/migrations/migration_v1.dart';
import 'package:todo_list_provider/app/core/migrations/migration_v2.dart';
import 'package:todo_list_provider/app/core/migrations/migration_v3.dart';

class SqliteMigrationFactory {
  List<Migration> getCreateMigration() => [MigrationV1(), MigrationV2()];

  List<Migration> getUpgradeMigration(int version) {
    final migrations = <Migration>[];

    switch (version) {
      case 1:
        migrations.add(MigrationV2());
        migrations.add(MigrationV3());
        break;
      case 2:
        migrations.add(MigrationV3());
        break;
    }

    return migrations;
  }
}
