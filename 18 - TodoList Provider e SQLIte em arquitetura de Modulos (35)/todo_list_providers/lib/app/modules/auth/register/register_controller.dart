import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_list_providers/app/core/notifier/default_change_notifier.dart';
import 'package:todo_list_providers/app/services/user/user_service.dart';

class RegisterController extends DefaultChangeNotifier {
  final UserService _userService;

  RegisterController({required UserService userService})
    : _userService = userService;

  void registerUser(String email, String password) async {
    setStateAndNotify(DefaultChangeNotifierState.loading);

    try {
      final register = await _userService.register(email, password);

      if (register == null) {
        setState(DefaultChangeNotifierState.error, 'Erro ao registrar usuário');
      } else {
        setState(DefaultChangeNotifierState.sucess);
      }
    } on FirebaseAuthException catch (e) {
      setState(DefaultChangeNotifierState.error, e.message);
    } catch (e) {
      setState(DefaultChangeNotifierState.error, 'Erro desconhecido...');
    } finally {
      notifyListeners();
    }
  }
}
