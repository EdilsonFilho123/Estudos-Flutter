import 'dart:async';

Future<void> main(List<String> args) async {
  print('Inicio...\n');

  final streamController = StreamController<Pessoa>.broadcast();
  // final inStream = streamController.sink;
  final outStream = streamController.stream;

  outStream
      .skip(1)
      .where((p) => p.idade > 19)
      .map((p) => '> Exibindo pessoa maior de idade: $p')
      .listen(print);

  var pessoas = [
    Pessoa('Kleber (que vai ser pulado pelo skip)', 19),
    Pessoa('Romario', 5),
    Pessoa('Gi', 23),
    Pessoa('Jooj', 47),
    Pessoa('Mila', 12),
    Pessoa('Marlene', 99999999)
  ];

  for (var p in pessoas) {
    print('Incluindo $p');
    // inStream.add(p);
    streamController.add(p);
    // este await de tempo, faz com que a main n se torne uma microtask, fazendo com que ela permaneça executando durante todo o ciclo de escuta do stream
    // sem o await, a main executa todo o insert do stream mas n participando da sua escuta!
    await Future.delayed(Duration(milliseconds: 500));
  }

  // este await garante que a main esteja executando até que o stream execute todos suas funções e seja finalizado
  await streamController.close();

  print('\n...Fim');
}

class Pessoa {
  Pessoa(
    this.nome,
    this.idade,
  );

  String nome;
  int idade;

  @override
  String toString() {
    return 'Pessoa $nome com $idade anos de idade';
  }
}
