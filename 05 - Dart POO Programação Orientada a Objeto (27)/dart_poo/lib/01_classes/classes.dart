import 'package:dart_poo/01_classes/camiseta.dart';

void main(List<String> args) {

  Camiseta camisetaNike = new Camiseta(); // O new não é necessário, nem o tipo 
  var camisetaAdidas = Camiseta(); // (Ideal)

  camisetaNike.tamanho = 'M';
  camisetaNike.marca = 'Nike';
  camisetaNike.setCor('Black');

  camisetaAdidas.tamanho = 'G';
  camisetaAdidas.marca = 'Adidas';
  camisetaAdidas.setCor('Preta');


  print('''
    Camiseta:
        Tamanho: ${camisetaNike.tamanho}
        Marca: ${camisetaNike.marca}
        Cor: ${camisetaNike.getCor()}
  ''');

  print('''
    Camiseta:
        Tamanho: ${camisetaAdidas.tamanho}
        Marca: ${camisetaAdidas.marca}
        Cor: ${camisetaAdidas.getCor()}
  ''');
}
