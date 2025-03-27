import 'package:dart_poo/10_callable_class/enviar_email.dart';

void main(List<String> args) {
  var enviarEmail = EnviarEmail();

  // via call (Note que o call serve para n precisarmos chamar um metodo!!!)
  enviarEmail('Kleber@gmail.com');

  print('\n-0-0-0-0-0-0-0-0-\n');

  // via metodo
  enviarEmail.enviar('kleber@gmail.com');
}
