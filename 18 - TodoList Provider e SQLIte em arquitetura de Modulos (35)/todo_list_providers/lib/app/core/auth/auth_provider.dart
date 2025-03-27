import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_providers/app/core/database/sqlite_connection_factory.dart';
import 'package:todo_list_providers/app/core/navigator/todo_list_navigator.dart';
import 'package:todo_list_providers/app/repositories/task/task_repository_impl.dart';
import 'package:todo_list_providers/app/services/user/user_service.dart';

class AuthProvider extends ChangeNotifier {
  final FirebaseAuth _firebaseAuth;
  final UserService _userService;
  final SqliteConnectionFactory _sqliteConnectionFactory;

  AuthProvider({
    required FirebaseAuth firebaseAuth,
    required UserService userService,
    required SqliteConnectionFactory sqliteConnectionFactory,
  }) : _firebaseAuth = firebaseAuth,
       _userService = userService,
       _sqliteConnectionFactory = sqliteConnectionFactory;

  Future<void> logout() => _userService.logout();
  User? get user => _firebaseAuth.currentUser;

  void loadListener() {
    _firebaseAuth.userChanges().listen((_) => notifyListeners());
    _firebaseAuth.authStateChanges().listen((context) {
      if (user == null) {
        TaskRepositoryImpl(
          sqliteConnectionFactory: _sqliteConnectionFactory,
        ).removeAll();
        TodoListNavigator.to.pushNamedAndRemoveUntil(
          '/login',
          (route) => route.isFirst,
        );
      } else {
        TodoListNavigator.to.pushNamedAndRemoveUntil(
          '/home',
          (route) => route.isFirst,
        );
      }
    });
  }
}
