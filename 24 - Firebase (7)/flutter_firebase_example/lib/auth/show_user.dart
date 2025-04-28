import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ShowUser extends StatefulWidget {
  const ShowUser({super.key});

  @override
  State<ShowUser> createState() => _ShowUserState();
}

class _ShowUserState extends State<ShowUser> {
  User? user;

  @override
  void initState() {
    super.initState();

    user = FirebaseAuth.instance.currentUser;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Usuário Logado...')),
      body: Center(
        child: Column(
          children: [
            Text(user?.displayName ?? ''),
            Text(user?.email ?? ''),
            Text(user?.photoURL ?? ''),
            ElevatedButton(onPressed: () => FirebaseAuth.instance.signOut(), child: Text('Sair'))
          ],
        ),
      ),
    );
  }
}
