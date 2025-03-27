void main(List<String> args) async {
  print('Inicio...');

  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  // O take limita o numero de requisições que este stream faz, que no caso é 5
  stream = stream.take(5);

  await for (var i in stream) {
    print(i);
  }

  print('...Fim');
}

int callback(int value) {
  // print('O valor é ${value+1}');
  return (value + 1) * 2;
}
