import 'package:flutter/material.dart';

class UserModel extends InheritedWidget {
  final String name;
  final String imgAvatar;
  final String birthDate;

  @override
  UserModel({
    required this.name,
    required this.imgAvatar,
    required this.birthDate,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant UserModel other) {
    return other.name != name ||
        other.imgAvatar != imgAvatar ||
        other.birthDate != birthDate;
  }

  static UserModel of(BuildContext context) {
    var userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();
    assert(userModel != null, 'UserModel not exists in BuildContext');
    return userModel!;
  }
}
