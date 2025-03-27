import 'package:dart_async/07_modelos/user_abstract.dart';
import 'package:dart_async/07_modelos/user_types.dart';
import 'dart:convert';

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

    print(usertypes);

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
}
