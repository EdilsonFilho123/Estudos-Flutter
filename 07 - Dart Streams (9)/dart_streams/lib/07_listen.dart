void main(List<String> args) async {
  print('Inicio...');

  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5);

  // escuta o stream, semelhantemente ao await for, só que não para o programa, o programa continua enquanto escuta o stream
  // No stream, só pode haver 1 listen (Só uma função pode escutar)
  stream.listen((event) => print('Listen value: $event'));

  print('...Fim');
}

int callback(int value) {
  // print('O valor é ${value+1}');
  return (value + 1) * 2;
}
