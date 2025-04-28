import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginEC = TextEditingController();
  final passwordEC = TextEditingController();
  User? user;

  @override
  void dispose() {
    loginEC.dispose();
    passwordEC.dispose();

    super.dispose();
  }

  void loginUser() async {
    String msg;

    try {
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
            email: loginEC.text,
            password: passwordEC.text,
          );

      print(userCredential.user);
      setState(() => user = userCredential.user);

      if (userCredential.user != null) {
        if (userCredential.user!.emailVerified) {
          msg = 'Usuário autenticado com sucesso!';
        } else {
          msg = 'Usuário não foi verificado.';
        }
      } else {
        msg = 'Erro ao encontrar usuário.';
      }
    } on Exception catch (_) {
      msg = 'Erro ao realizar login.';
    }

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
    }
  }

  void update() async {
    String msg;

    try {
      await user!.updateDisplayName('Tester');
      await user!.verifyBeforeUpdateEmail('teste@email.com');

    } on Exception catch (_) {
      if (mounted) {
        msg = 'Erro ao atualizar usuário.';
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(msg)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: loginEC,
                decoration: InputDecoration(label: Text('Login')),
              ),
              TextField(
                controller: passwordEC,
                decoration: InputDecoration(label: Text('Senha')),
              ),
              SizedBox(height: 3),
              ElevatedButton(onPressed: loginUser, child: Text('Login')),
              SizedBox(height: 3),
              Row(
                children: [
                  ElevatedButton(onPressed: update, child: Text('Update')),
                ],
              ),
              SizedBox(height: 30),
              Text('displayName: ${user?.displayName ?? 'null'}'),
              Text('email: ${user?.email ?? 'null'}'),
              Text(
                'isEmailVerified: ${((user != null) ? (user!.emailVerified ? 'true' : 'false') : 'null')}',
              ),
              Text('isAnonymous: ${user?.isAnonymous ?? 'null'}'),
              Text('phoneNumber: ${user?.phoneNumber ?? 'null'}'),
              Text('photoURL: ${user?.photoURL ?? 'null'}'),
              Text('refreshToken: ${user?.refreshToken ?? 'null'}'),
              Text('tenantId: ${user?.tenantId ?? 'null'}'),
              Text('uid: ${user?.uid ?? 'null'}'),
            ],
          ),
        ),
      ),
    );
  }
}
