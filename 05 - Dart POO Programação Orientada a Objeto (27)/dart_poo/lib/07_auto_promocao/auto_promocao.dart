import 'package:dart_poo/06_interfaces/carro.dart';
import 'package:dart_poo/06_interfaces/gol.dart';
import 'package:dart_poo/06_interfaces/uno.dart';

// Variaveis de nivel superior e atributos de classe não seguem a auto_promocao na checkagem
Carro unoSuperior = Uno();
Carro golSuperior = Gol();

void main(List<String> args) {
  Uno uno = Uno();
  Gol gol = Gol();

  print(uno.temEscadaEmCima());
  print(gol.tipoRodas());

  Carro uno2 = Uno();
  Carro gol2 = Gol();

  // print(uno2.temEscadaEmCima()); // Por ser do tipo abstrato, não tras os atributos/metodos de uma classe especificada
  // print(gol2.tipoRodas()); // Para usar atributos/metodos de uma classe especificada, é necessario converte-la antes

  print((uno2 as Uno).temEscadaEmCima()); // Converte a classe abstrata na especificada, porém se forem incompativeis, retorna erro
  if(gol2 is Gol) print(gol2.tipoRodas()); // Se for validado, o obj se auto-converte (auto_promocao) na classe em que foi comparada

  // if(unoSuperior is Uno) print(unoSuperior.temEscadaEmCima()); // devido a auto_promocao n funfar em variaveis superiores, ele não reconhece o metodo usado
  if(golSuperior is Gol) print((golSuperior as Gol).tipoRodas()); // Para acessar atributos da classe especificadas, deve converter na 'mão', mas para n retornar erro, validasse antes

  printaCarro(uno);
  printaCarro(gol);
  printaCarro(uno2);
  printaCarro(gol2);
}

void printaCarro(Carro c) {
  print('''
    Carro:
      -> Tipo: ${c.runtimeType}
      -> Portas: ${c.portas}
      -> Rodas: ${c.rodas}
      -> Motor: ${c.motor}
      -> Velocidade Máxima: ${c.velocidadeMaxima()}
      // auto-promoção via checkagem por if
      -> Tipo das Rodas: ${c is Gol ? c.tipoRodas() : 'Informação Omitida'}
      -> Tem Escada em Cima: ${c is Uno ? c.temEscadaEmCima() : 'Informação Omitida'}
  ''');
}
