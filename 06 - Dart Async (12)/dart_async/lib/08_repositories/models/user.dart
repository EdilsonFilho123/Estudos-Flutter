// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_async/08_repositories/models/user_abstract.dart';
import 'package:dart_async/08_repositories/models/user_types.dart';

class User extends UserAbstract {
  List<UserTypes> userTypes;
  final String userName;

  User(
      {required super.id,
      required super.name,
      required this.userName,
      required this.userTypes});

  factory User.fromMap(Map<String, dynamic> map) {
    var usertypes = (map['user_types'] is List)
        ? map['user_types']
            .map<UserTypes>((type) => UserTypes.fromMap(type))
            .toList()
        : <UserTypes>[];

    return User(
        id: map['id'] ?? '',
        name: map['name'] ?? '',
        userName: map['username'] ?? '',
        userTypes: usertypes);
  }

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'username': userName,
      'user_types': userTypes.map((type) => type.toMap()).toList()
    };
  }

  @override
  String toString() => 'User(id: $id, name: $name, userName: $userName, userTypes: ${userTypes.map((e) => e.toString())})';
}
