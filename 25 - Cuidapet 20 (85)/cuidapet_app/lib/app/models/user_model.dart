// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  final String email;
  final String? registerType;
  final String? imgAvatar;

  UserModel({required this.email, this.registerType, this.imgAvatar});

  UserModel.empty() : email = '', registerType = '', imgAvatar = '';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'registerType': registerType,
      'imgAvatar': imgAvatar,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] as String,
      registerType:
          map['registerType'] != null ? map['registerType'] as String : null,
      imgAvatar: map['imgAvatar'] != null ? map['imgAvatar'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
