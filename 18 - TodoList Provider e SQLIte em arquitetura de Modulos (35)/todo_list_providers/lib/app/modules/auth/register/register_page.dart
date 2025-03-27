import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_providers/app/core/notifier/default_change_notifier.dart';
import 'package:todo_list_providers/app/core/notifier/default_listener_notifier.dart';
import 'package:todo_list_providers/app/core/ui/theme_extensions.dart';
import 'package:todo_list_providers/app/core/widgets/todo_list_field.dart';
import 'package:todo_list_providers/app/core/widgets/todo_list_logo.dart';
import 'package:todo_list_providers/app/modules/auth/register/register_controller.dart';
import 'package:validatorless/validatorless.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final Map<String, TextEditingController> _controllers = {
    'email': TextEditingController(),
    'password': TextEditingController(),
    'confirmPassword': TextEditingController(),
  };

  @override
  void initState() {
    super.initState();

    final defaultListener = DefaultListenerNotifier(
      changeNotifier: context.read<RegisterController>(),
    );
    defaultListener.listener(context: context).addCallbacksByState(
      DefaultChangeNotifierState.sucess,
      (DefaultChangeNotifier changeNotifier) {
        defaultListener.dispose();
        // Navigator.pop(context); removido devido alteração no auth_provider
      },
    );
  }

  @override
  void dispose() {
    _controllers.values.forEach((item) => item.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Todo List',
              style: TextStyle(fontSize: 10, color: context.primaryColor),
            ),
            Text(
              'Cadastro',
              style: TextStyle(fontSize: 15, color: context.primaryColor),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: ClipOval(
            child: Container(
              color: context.primaryColor.withAlpha(20),
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 20,
                color: context.primaryColor,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * .5,
            child: FittedBox(fit: BoxFit.fitHeight, child: TodoListLogo()),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TodoListField.field(
                    label: 'E-mail',
                    controller: _controllers['email'],
                    validator: Validatorless.multiple([
                      Validatorless.required('E-mail obrigatório'),
                      Validatorless.email('E-mail inválido'),
                    ]),
                  ),
                  SizedBox(height: 20),
                  TodoListField.password(
                    label: 'Senha',
                    controller: _controllers['password'],
                    validator: Validatorless.multiple([
                      Validatorless.required('Senha obrigatório'),
                      Validatorless.min(
                        6,
                        'Senha deve ter, ao menos, 6 caracteres',
                      ),
                    ]),
                  ),
                  SizedBox(height: 20),
                  TodoListField.password(
                    label: 'Confirmar Senha',
                    controller: _controllers['confirmPassword'],
                    validator: Validatorless.multiple([
                      Validatorless.required(
                        'Confirmação de senha obrigatório',
                      ),
                      Validatorless.compare(
                        _controllers['password'],
                        'As senhas devem ser iguais',
                      ),
                    ]),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        final email = _controllers['email']!.text;
                        final password = _controllers['password']!.text;

                        context.read<RegisterController>().registerUser(
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
            ),
          ),
        ],
      ),
    );
  }
}
