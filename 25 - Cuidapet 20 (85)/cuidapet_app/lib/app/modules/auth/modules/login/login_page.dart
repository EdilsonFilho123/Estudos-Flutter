import 'package:cuidapet/app/shared/ui/extensions/size_screen_extension.dart';
import 'package:cuidapet/app/shared/ui/extensions/theme_extension.dart';
import 'package:cuidapet/app/shared/ui/icons/cuidapet_icons.dart';
import 'package:cuidapet/app/shared/ui/widgets/cuidapet_default_button.dart';
import 'package:cuidapet/app/shared/ui/widgets/cuidapet_textform_field.dart';
import 'package:cuidapet/app/shared/ui/widgets/image_logo.dart';
import 'package:cuidapet/app/shared/ui/widgets/rounded_button_with_icon.dart';
import 'package:cuidapet/app/shared/ui/widgets/text_divisor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'widgets/login_form.dart';
part 'widgets/login_buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final controllers = <String, TextEditingController>{
    'email': TextEditingController(),
    'password': TextEditingController(),
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controllers.forEach((k, v) => v.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(height: 50.h),
              ImageLogo(isWrapWithCenter: true),
              SizedBox(height: 20),
              _LoginForm(),
              SizedBox(height: 8),
              TextDivisor(text: 'OU'),
              SizedBox(height: 8),
              _LoginButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
