import 'dart:convert';
import 'cidade.dart';

class Endereco {
  Endereco({required this.rua, required this.numero, required this.cep, required this.cidade });

  String rua;
  int numero;
  String cep;
  Cidade cidade;

  Map<String, dynamic> toMap() => <String, dynamic>{ 'rua': rua, 'numero': numero, 'CEP': cep, 'cidade': cidade.toMap() };
  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      rua: map['rua'] as String, 
      numero: map['numero'] as int, 
      cep: map['CEP'] as String, 
      cidade: Cidade.fromMap(map['cidade'])
    );
  }

  String toJson() => json.encode(toMap());
  factory Endereco.fromJson(String source) => Endereco.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Endereco(rua: $rua, numero: $numero, cep: $cep, cidade: $cidade)';
}
