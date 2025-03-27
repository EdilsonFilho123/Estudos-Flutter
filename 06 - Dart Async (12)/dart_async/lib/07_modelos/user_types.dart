import 'package:dart_async/07_modelos/user_abstract.dart';
import 'dart:convert';

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
}
