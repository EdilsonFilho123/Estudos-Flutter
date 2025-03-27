import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;

  Telefone({ required this.ddd, required this.telefone });

  Map<String, dynamic> toMap() => <String, dynamic>{ 'ddd': ddd, 'telefone': telefone };
  factory Telefone.fromMap(Map<String, dynamic> map) => Telefone( ddd: map['ddd'] as int, telefone: map['telefone'] as String );

  String toJson() => json.encode(toMap());
  factory Telefone.fromJson(String source) => Telefone.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Telefone(ddd: $ddd, telefone: $telefone)';
}
