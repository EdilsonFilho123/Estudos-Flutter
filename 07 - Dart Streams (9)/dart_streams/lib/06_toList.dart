void main(List<String> args) async {
  print('Inicio...');

  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  // O take limita os resultados
  stream = stream.take(5);

  final data = await stream.toList();
  print(data);

  print('...Fim');
}

int callback(int value) {
  // print('O valor é ${value+1}');
  return (value + 1) * 2;
}
