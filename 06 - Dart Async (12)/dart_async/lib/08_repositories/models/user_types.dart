// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:dart_async/08_repositories/models/user_abstract.dart';

class UserTypes extends UserAbstract {
  UserTypes({required super.id, required super.name, required this.userId});

  final String userId;

  factory UserTypes.fromMap(Map<String, dynamic> map) {
    return UserTypes(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      userId: map['userId'] ?? ''
    );
  }

  factory UserTypes.fromJson(String source) => UserTypes.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'id': id,
      'userId': userId,
    };
  }

  @override
  String toString() => 'UserTypes(id: $id, nome: $name, userId: $userId)';
}
