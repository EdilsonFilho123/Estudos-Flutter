import 'package:dart_banco_dados/database.dart';

Future<void> main(List<String> args) async {
  final database = Database();
  var mysqlConnection = await database.openConnection();

  var userId = 1;
  var results = await mysqlConnection.query('select id, nome from aluno where id = ?', [userId]);

  for (var row in results) {
    print('id: ${row[0]}, nome: ${row[1]}');
  }

  try {
    var resultUpdate = await mysqlConnection.query('UPDATE aluno SET nome = ? where id = ?', ['Edilson Filho', userId+100]);

    if(resultUpdate.affectedRows == 0)
      print('Dados não atualizado');
  } catch (e) {
    print('Erro ao atualizar');
  }

  await mysqlConnection.transaction((_) async {
    // se aqui subir uma exception, faz rollback automagicamente
    // Caso contrário, confirma a transaction
  });

  await mysqlConnection.close();
}
