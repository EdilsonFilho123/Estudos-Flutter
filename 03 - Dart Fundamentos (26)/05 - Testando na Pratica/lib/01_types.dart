void main() {
  // objeto inteiro
  int anos = 37;

  // objeto flutuante
  double valor = 29.99;

  // objeto Num é pai do int e do double
  num valorNumInt = 37;
  num valorNumDouble = 29.99;

  // String
  String nomeCompleto = 'Edilson Filho';

  // var pega o tipo automaticamente pela atribuição
  var tipoAutomatico = '3.14';

  // tipo abstrato que pode armazenar qlqr valor
  // (+ indicado) quanto mais complexa a lógica, performa melhor que o dynamic
  Object tipoAbstrato = true;
  tipoAbstrato = '';
  tipoAbstrato = 23.6;

  // tipo dinamico não faz verificação de tipo, ideal para alterar o tipo do valor
  // (Não indicado) se a lógica for simples, até pode performar melhor q o Object, mas ainda não é indicada
  dynamic tipoDinamico = [];
  tipoDinamico = null;
  tipoDinamico = 'teste';

  print('$anos\n$valor\n$valorNumInt\n$valorNumDouble\n$nomeCompleto\n$tipoAutomatico\n$tipoAbstrato\n$tipoDinamico');


  // Funções pra Tipos Numéricos

  var idade = 30;

  // Verificações
  idade.isEven; // somente para int
  idade.isOdd; // somente para int
  idade.isFinite;
  idade.isInfinite;
  idade.isNaN;
  idade.isNegative;

  var gasolina = 4.759;

  print(gasolina.round());
  print(gasolina.roundToDouble());
  print(gasolina.toStringAsFixed(2));

  print(int.parse("8")); // retorna erro se não conseguir converter
  print(int.tryParse("Oito")); // retorna null se não conseguir converter

  // Funções pra strings

  final nome = "Rodrigo Sanches";

  final subStringSanches = nome.substring(8); // Recorta a String apartir do indice 8
  final subStringRogrigo = nome.substring(0, 7); // Recorta a String no indice 0 com o tamanho de 7 letras
  final startsWithTrue = nome.startsWith("R"); // Verifica se a primeira letra da String é R
  final nomeMAIUSCULO = nome.toUpperCase(); // Converte todas as letras em Maiusculas
  final nomeMinusculo = nome.toLowerCase(); // Converte todas as letras em Minusculas
  final containsTrue = nome.contains("Rodri"); // Verifica se uma string contem o conteudo de outra string

  final strConcatenacao = 'Olá, ' + nome + '! Seja Bem-Vindo à mansão dos ' + nome.substring(8);
  final strInterpolacao = 'Olá, $nome! Seja Bem-Vindo à mansão dos ${nome.substring(8)}';

  final listStr = "C:/Dart_Flutter/dart_fundamentos/lib/4_tratamentos_nulos/nullsafety.dart".split('/');
}
