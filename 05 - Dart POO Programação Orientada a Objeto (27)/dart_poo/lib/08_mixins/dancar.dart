import 'package:dart_poo/08_mixins/artista.dart';

// Da mesma forma que uma classe abstrata possue o 'abstract', para "Herdar" de outra classe, usa-se o mixin
// o mixin utiliza do 'on' para dizer só vai herdar aquele que for filho de ...
// o 'on' tbm serve para sobrescrita de metodos da classe descrita
mixin Dancar on Artista {
  String dancar() => 'Break Dance';

  @override
  String habilidade() => '${super.habilidade()} / Dançarina';
}
