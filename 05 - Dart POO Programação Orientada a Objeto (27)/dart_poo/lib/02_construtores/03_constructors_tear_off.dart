void main(List<String> args) {
  final nomes = ['Rodrigo', 'Guilherme', 'Renata'];

  // final pessoas = nomes.map((nome) => Pessoa(nome)).toList(); -> Normal
  // final pessoas = nomes.map(Pessoa.nome).toList(); -> Avançado
  final pessoas = nomes.map(Pessoa.new).toList(); // Apenas em versões acima do 2.15 (new aponta pro default, pois apenas Pessoa da erro)

  for (var p in pessoas) {
    print('Olá ${p.nome}');
  }

  // Pessoa.new ou Pessoa.nome são funções que podem retornar Pessoa, Object, dynamic ou até msm um void, como é o exemplo!
  funcaoQqlr(Pessoa.new);
}

void funcaoQqlr(void Function(String) f) {
  f('Kleber');
}

class Pessoa {
  String nome;

  Pessoa(this.nome);
  Pessoa.nome(this.nome);
}
