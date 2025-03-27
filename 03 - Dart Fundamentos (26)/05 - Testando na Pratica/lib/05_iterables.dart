void main(List<String> args) {
  var numeros = List.generate(10, (index) => index);

  numeros.where((num) => num != 5).forEach(print);

  final numerosLimit5 = numeros.takeWhile((value) => value <= 5); // takeWhile retorna um iterable
  final numerosAcima5 = numeros.skipWhile((value) => value <= 5); // skipWhile retorna um iterable
  final numerosMapStr = numeros.map((num) { return "-> $num"; }); // o map tbm retorna um iterable

  // iterable != list
  // Um Iterable vem a partir de um List, geralmente executando um where, takeWhile, skipWhile ou map
  // Apesar de parecidos, possuem diferenças como:
  // Iterable: Mais performático q List na iteração, mas n tem acesso ao índece
  // List: possuí e é acessivel por index e permite modificações como add ou remover item

  // index
  print(numeros[0]); // list[]
  print(numerosLimit5.elementAt(0)); // iterable.elementAt()
  print(numerosAcima5.toList()[0]); // iterable.toList()[]
  
  // completos
  print(numeros); // list
  print(numerosLimit5); // iterable
  print(numerosAcima5.toList()); // iterable.toList()

  print(numerosMapStr); // iterable de strings
}
