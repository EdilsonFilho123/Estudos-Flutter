void main(List<String> args) async {
  print('Inicio...');

  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  // O skip 'pula' determinado numero de resultados iniciais
  // Porém, os valores chegam no callback !!!
  stream = stream.take(5).skip(2);

  await for (var i in stream) {
    print(i);
  }

  print('...Fim');
}

int callback(int value) {
  // print('O valor é ${value+1}');
  return (value + 1) * 2;
}
