void main(List<String> args) async {
  print('Inicio...');

  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  // O takeWhile faz o stream encerrar através de uma função que recebe o valor final do callback
  // onde mantem o stream aberto enquanto o resultado é true, mas quando a função retorna false, encerra o stream
  stream = stream.takeWhile((value) => value < 10);

  await for (var i in stream) {
    print(i);
  }

  print('...Fim');
}

int callback(int value) {
  // print('O valor é ${value+1}');
  return (value + 1) * 2;
}
