// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cidade {
  Cidade({
    required this.cidade,
    required this.estado,
  });

  final String cidade;
  final String estado;

  @override
  String toString() => '$cidade / $estado';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidade': cidade,
      'estado': estado,
    };
  }

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      cidade: map['cidade'] as String,
      estado: map['estado'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cidade.fromJson(String source) => Cidade.fromMap(json.decode(source) as Map<String, dynamic>);
}
