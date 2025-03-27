import 'package:mysql1/mysql1.dart';

class Database {
  Future<MySqlConnection> openConnection() async {
    var settings = ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: 'root',
      db: 'dart_mysql'
    );

    var conn = await MySqlConnection.connect(settings);
    // Atenção para esse delay, devido a um problema no windows vc precisa adicionar esse delay
    await Future.delayed(Duration(seconds: 2));
    return conn;
  }
}

// CREATE DATABASE dart_mysql;
// USE dart_mysql;

// CREATE TABLE aluno (
// 	id INT AUTO_INCREMENT PRIMARY KEY,
//     nome varchar(255) not null
// );

// -- INSERT INTO aluno (nome) VALUES ('Edilson'), ('Claudio'), ('Silvestrini'), ('Filho');