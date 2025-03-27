import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_providers/app/core/notifier/default_change_notifier.dart';
import 'package:todo_list_providers/app/core/notifier/default_listener_notifier.dart';
import 'package:todo_list_providers/app/core/widgets/todo_list_field.dart';
import 'package:todo_list_providers/app/core/widgets/todo_list_logo.dart';
import 'package:todo_list_providers/app/modules/auth/login/login_controller.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _loginFieldKey = GlobalKey<FormFieldState>();
  final _emailFocus = FocusNode();

  final Map<String, TextEditingController> _controllers = {
    'email': TextEditingController(),
    'password': TextEditingController(),
  };

  @override
  void initState() {
    super.initState();

    final defaultListener = DefaultListenerNotifier(
      changeNotifier: context.read<LoginController>(),
    );
    defaultListener.listener(context: context).addCallbacksByState(
      DefaultChangeNotifierState.sucess,
      (DefaultChangeNotifier changeNotifier) {
        defaultListener.dispose();
        // Navigator.pop(context);
      },
    );
  }

  @override
  void dispose() {
    _controllers.values.forEach((item) => item.dispose());
    _emailFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
                minWidth: constraints.maxWidth,
              ),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 10),
                    TodoListLogo(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      color: Colors.amber,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TodoListField.field(
                              key: _loginFieldKey,
                              label: 'email',
                              controller: _controllers['email'],
                              validator: Validatorless.multiple([
                                Validatorless.required('E-mail obrigatório'),
                                Validatorless.email('E-mail inválido'),
                              ]),
                              focusNode: _emailFocus,
                            ),
                            SizedBox(height: 28),
                            TodoListField.password(
                              label: 'senha',
                              controller: _controllers['password'],
                              validator: Validatorless.multiple([
                                Validatorless.required('Senha obrigatório'),
                                Validatorless.min(
                                  6,
                                  'Senha deve ter, ao menos, 6 caracteres',
                                ),
                              ]),
                            ),
                            SizedBox(height: 18),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    if (_loginFieldKey.currentState
                                            ?.validate() ??
                                        false) {
                                      context
                                          .read<LoginController>()
                                          .forgotPassword(
                                            _controllers['email']!.text,
                                          );
                                    } else {
                                      _emailFocus.requestFocus();
                                    }
                                  },
                                  child: Text(
                                    'Esqueceu sua senha?',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState?.validate() ??
                                        false) {
                                      final email = _controllers['email']!.text;
                                      final password =
                                          _controllers['password']!.text;

                                      context.read<LoginController>().loginUser(
                                        email,
                                        password,
                                      );
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      'Login',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xfff0f3f7),
                          border: Border(
                            top: BorderSide(
                              width: 1,
                              color: Colors.grey.withAlpha(50),
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 30),
                            SignInButton(
                              Buttons.Google,
                              text: 'Continue com o Google',
                              padding: EdgeInsets.all(5),
                              shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                              onPressed:
                                  () =>
                                      context
                                          .read<LoginController>()
                                          .loginGoogle(),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Não tem conta?'),
                                TextButton(
                                  onPressed: () async {
                                    Navigator.of(
                                      context,
                                    ).pushNamed('/register');
                                  },
                                  child: Text(
                                    'Cadastre-se',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
