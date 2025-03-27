import 'dart:convert';

class Curso {
  Curso({ required this.id, required this.nome });

  int id;
  String nome;

  Map<String, dynamic> toMap() => <String, dynamic>{ 'id': id, 'nome': nome };
  factory Curso.fromMap(Map<String, dynamic> map) => Curso( id: map['id'] as int, nome: map['nome'] as String );

  String toJson() => json.encode(toMap());
  factory Curso.fromJson(String source) => Curso.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Curso(id: $id, nome: $nome)';
}
