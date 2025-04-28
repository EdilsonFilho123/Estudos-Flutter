part of '../register_page.dart';

class _RegisterForm extends StatefulWidget {
  // ignore: unused_element_parameter
  const _RegisterForm({super.key});

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 20,
        children: [
          CuidapetTextformField(label: 'Login'),
          CuidapetTextformField(label: 'Senha', obscure: true),
          CuidapetTextformField(label: 'Confirmar Senha', obscure: true),
          CuidapetDefaultButton(label: 'Cadastrar'),
        ],
      ),
    );
  }
}
