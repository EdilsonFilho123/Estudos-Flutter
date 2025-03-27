import 'package:dart_poo/06_interfaces/carro.dart';
import 'package:dart_poo/06_interfaces/gol.dart';
import 'package:dart_poo/06_interfaces/uno.dart';

void main(List<String> args) {
  Uno uno = Uno();
  Gol gol = Gol();

  print(uno.temEscadaEmCima());
  print(gol.tipoRodas());

  Carro uno2 = Uno();
  Carro gol2 = Gol();

  // print(uno2.temEscadaEmCima()); 
  // print(gol2.tipoRodas()); // por ser do tipo abstrato e não do especificado, não tras os atributos/metodos da classe especificada

  printaCarro(uno);
  printaCarro(gol);
  printaCarro(uno2);
  printaCarro(gol2);
}

void printaCarro(Carro c) {
  // Por esperar um objeto de interface Carro, as propriedades especificas de cada classe onde Carro é implementada não irão ser encontradas, ex:
  // c.temEscadaEmCima();
  // c.tipoRodas();

  print('''
    Carro:
      -> Tipo: ${c.runtimeType}
      -> Portas: ${c.portas}
      -> Rodas: ${c.rodas}
      -> Motor: ${c.motor}
      -> Velocidade Máxima: ${c.velocidadeMaxima()}
  ''');
}
