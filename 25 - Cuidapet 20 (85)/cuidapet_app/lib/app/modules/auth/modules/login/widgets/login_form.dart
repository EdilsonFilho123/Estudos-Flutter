part of '../login_page.dart';

class _LoginForm extends StatefulWidget {
  // ignore: unused_element_parameter
  const _LoginForm({super.key});

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 20,
        children: [
          CuidapetTextformField(label: 'Login'),
          CuidapetTextformField(label: 'Senha', obscure: true),
          CuidapetDefaultButton(label: 'Entrar'),
        ],
      ),
    );
  }
}
