import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase_example/auth/email_password/login_page.dart';
import 'package:flutter_firebase_example/auth/email_password/register_page.dart';
import 'package:flutter_firebase_example/auth/show_user.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        'auth/email_password/register': (_) => RegisterPage(),
        'auth/email_password/login': (_) => LoginPage(),
        'auth/show_user': (_) => ShowUser(),
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      print('-----> Usuário ${(user == null) ? 'NÂÂÂÂÂÂÂÂO ' : ''}está logado');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Firebase'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed:
                  () => Navigator.pushNamed(
                    context,
                    'auth/email_password/register',
                  ),
              child: Text('Register User E-mail Password'),
            ),
            ElevatedButton(
              onPressed:
                  () =>
                      Navigator.pushNamed(context, 'auth/email_password/login'),
              child: Text('Login User E-mail Password'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'auth/show_user'),
              child: Text('Details Login + Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
