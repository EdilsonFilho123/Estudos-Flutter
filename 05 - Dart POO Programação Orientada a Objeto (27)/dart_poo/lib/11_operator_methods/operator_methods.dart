import 'package:dart_poo/11_operator_methods/numeros.dart';

// operator methods envolve apenas operadores como +, - *, /, ^...
// é diferente de assingnment operators, voltados pra atribuição, q são eles:
  // = += -= *= /= ~/= %=  --> mais usados em calculos numericos
  // >>= <<= &= ^= |=  --> n mto usado
  // ??= --> nullsafety

void main(List<String> args) {
  var num1 = Numero(100);
  var num2 = Numero(2);

  var num3 = num1 ^ num2;

  print(num3);
}
