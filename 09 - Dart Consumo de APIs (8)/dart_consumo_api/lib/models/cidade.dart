import 'dart:convert';

class Cidade {
  Cidade({ required this.id, required this.nome });

  int id;
  String nome;

  Map<String, dynamic> toMap() => <String, dynamic>{ 'id': id, 'nome': nome };
  factory Cidade.fromMap(Map<String, dynamic> map) => Cidade( id: map['id'] as int, nome: map['nome'] as String );

  String toJson() => json.encode(toMap());
  factory Cidade.fromJson(String source) => Cidade.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => "Cidade(id: $id, nome: $nome)";
}
