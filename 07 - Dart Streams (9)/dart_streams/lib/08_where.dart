void main(List<String> args) async {
  print('Inicio...');

  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);

  // Serve para filtrar o que é escutado pelo stream
  // É semelhante ao skipWhile em funcionalidade, soq funciona invertido
  // E logicamnete passa no callback
  stream = stream.where((value) => value % 6 == 0).take(3);
  stream.listen((event) => print('Listen value: $event'));

  print('...Fim');
}

int callback(int value) {
  // print('O valor é ${value+1}');
  return (value + 1) * 2;
}
