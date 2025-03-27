import 'package:dart_poo/03_heranca/01_heranca_normal/animal.dart';

class Cachorro extends Animal {

  // Cachorro(super.tamanho, super.idade);
  Cachorro(String tamanho, int idade) : super(tamanho, idade); // : super() invoca o construtor da classe pai

  @override
  int calcularIdadeHumana() => getIdade() * 7;

  @override
  String toString() => 'Cachorro ${getTamanho()} com ${getIdade()} anos, que equivale à ${calcularIdadeHumana()} anos de uma humano!';
}