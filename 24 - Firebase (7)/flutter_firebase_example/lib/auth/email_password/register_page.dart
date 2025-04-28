import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final loginEC = TextEditingController();
  final passwordEC = TextEditingController();

  @override
  void dispose() {
    loginEC.dispose();
    passwordEC.dispose();

    super.dispose();
  }

  void registerUser() async {
    String msg;

    try {
      final userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: loginEC.text,
            password: passwordEC.text,
          );

      if (userCredential.user != null) {
        userCredential.user!.sendEmailVerification();
        msg =
            'Usuário registrado com sucesso, favor verificar a caixa de email.';
      } else {
        msg = 'Usuário registrado com sucesso.';
      }
    } on Exception catch (e) {
      print(e);
      msg = 'Erro ao registrar usuário.';
    }

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro de usuario')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: loginEC,
                decoration: InputDecoration(label: Text('Login')),
              ),
              TextField(
                controller: passwordEC,
                decoration: InputDecoration(label: Text('Senha')),
              ),
              ElevatedButton(onPressed: registerUser, child: Text('Registrar')),
            ],
          ),
        ),
      ),
    );
  }
}
