void main(List<String> args) async {
  print('Inicio...');

  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  // O stream por padrão só pode ser escutado (listen) por um objeto só
  // Para ser escutado por mais de um objeto, deve usar o asBroadcastStream()
  // Mas >>> CUIDADO <<< :
  // Se o take for definido após o asBroadcastStream, ela continua executando sem exibir nada, consumindo processamento!
  stream = stream.asBroadcastStream();
  stream = stream.take(5);

  stream.listen((event) => print('Listen value: $event'));
  stream.listen((event) => print('Listen2 value: $event'));

  // await for (var i in stream) {
  //   print(i);
  // }

  print('...Fim');
}

int callback(int value) {
  return (value + 1) * 2;
}
