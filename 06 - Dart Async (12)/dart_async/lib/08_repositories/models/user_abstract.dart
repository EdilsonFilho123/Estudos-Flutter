import 'dart:convert';

abstract class UserAbstract {
  UserAbstract({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  String toJson() => json.encode(toMap());
}
