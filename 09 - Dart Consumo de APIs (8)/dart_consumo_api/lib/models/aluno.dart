import 'dart:convert';

import 'curso.dart';
import 'endereco.dart';
import 'telefone.dart';

class Aluno {
  Aluno({ this.id, required this.nome, required this.idade, required this.telefone, required this.endereco, required this.cursos });

  String? id;
  String nome;
  int idade;
  Telefone telefone;
  Endereco endereco;
  List<Curso> cursos;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'idade': idade,
      'telefone': telefone.toMap(),
      'endereco': endereco.toMap(),
      'cursos': cursos.map((x) => x.toMap()).toList(),
    };
  }
  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
      id: map['id'] as String,
      nome: map['nome'] as String,
      idade: map['idade'] as int,
      telefone: Telefone.fromMap(map['telefone'] as Map<String,dynamic>),
      endereco: Endereco.fromMap(map['endereco'] as Map<String,dynamic>),
      cursos: List<Curso>.from((map['cursos'] as List<dynamic>).map<Curso>((x) => Curso.fromMap(x as Map<String,dynamic>))),
    );
  }

  String toJson() => json.encode(toMap());
  factory Aluno.fromJson(String source) => Aluno.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Aluno(id: $id, nome: $nome, idade: $idade, telefone: $telefone, endereco: $endereco, cursos: $cursos)';
  }
}
