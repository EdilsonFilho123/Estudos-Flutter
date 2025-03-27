void main(List<String> args) {
  var str = ';';
  
  // como o construtor é const, permite instanciar objetos como const, porem n se pode passar uma variavel como parametro
  // as vantagens disso é q se os objts const forem iguais, eles iram compartilhar o endereço de memoria, tornando-se eficiente em execução
  // var p0 = const Pessoa(nome: str, idade: 35);
  var p1 = const Pessoa(nome: 'Macabeus', idade: 35);
  var p2 = const Pessoa(nome: 'Macabeus', idade: 35);

  print(p1 == p2);
}

class Pessoa {
  final String nome;
  final int idade;

  // Se declararmos o construtor como const, todos os atributos envolvidos devem ser final
  const Pessoa({
    required this.nome,
    required this.idade,
  });
  
}
