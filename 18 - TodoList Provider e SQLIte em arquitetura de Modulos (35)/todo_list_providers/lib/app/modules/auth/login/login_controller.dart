import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:todo_list_providers/app/core/notifier/default_change_notifier.dart';
import 'package:todo_list_providers/app/services/user/user_service.dart';

class LoginController extends DefaultChangeNotifier {
  final UserService _userService;

  LoginController({required UserService userService})
    : _userService = userService;

  void loginUser(String email, String password) async {
    setStateAndNotify(DefaultChangeNotifierState.loading);

    try {
      final register = await _userService.login(email, password);

      if (register == null) {
        setState(DefaultChangeNotifierState.error, 'Erro ao realizar login');
      } else {
        setState(DefaultChangeNotifierState.sucess);
      }
    } on FirebaseAuthException catch (e) {
      setState(
        DefaultChangeNotifierState.error,
        e.message ?? 'Erro desconhecido...',
      );
    } catch (e) {
      setState(DefaultChangeNotifierState.error, 'Erro desconhecido...');
    } finally {
      notifyListeners();
    }
  }

  void loginGoogle() async {
    setStateAndNotify(DefaultChangeNotifierState.loading);

    try {
      final register = await _userService.googleLogin();

      if (register == null) {
        _userService.logout();
        setState(
          DefaultChangeNotifierState.error,
          'Erro ao realizar login com o google',
        );
      } else {
        setState(DefaultChangeNotifierState.sucess);
      }
    } on FirebaseAuthException catch (e) {
      _userService.logout();
      setState(
        DefaultChangeNotifierState.error,
        e.message ?? 'Erro desconhecido...',
      );
    } catch (e) {
      _userService.logout();
      setState(DefaultChangeNotifierState.error, 'Erro desconhecido...');
    } finally {
      notifyListeners();
    }
  }

  void forgotPassword(String email) async {
    setStateAndNotify(DefaultChangeNotifierState.loading);

    try {
      await _userService.forgotPassword(email);
      setState(
        DefaultChangeNotifierState.message,
        'E-mail enviado com sucesso',
      );
    } on FirebaseAuthException catch (e) {
      setState(
        DefaultChangeNotifierState.error,
        e.message ?? 'Erro desconhecido...',
      );
    } on PlatformException catch (e) {
      setState(
        DefaultChangeNotifierState.error,
        e.message ?? 'Erro desconhecido...',
      );
    } catch (e) {
      setState(DefaultChangeNotifierState.error, 'Erro desconhecido...');
    } finally {
      notifyListeners();
    }
  }
}
