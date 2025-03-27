

// await serve "forçar uma rotina sincrona", fazendo com que o resto do programa pare e retorne apenas quando o async retornar o valor
// so que para isso, é necessario que a função em que esteja chamando o await, seja tbm um async, como o main()

void main(List<String> args) async {
  print('Inicio main()...');

  String req1 = await request1();
  print(req1);

  try {
    String req2 = await request2();
    print(req2);
  } on Exception catch (e) {
    print("...Resposta 2: $e");
  }

  print('...Final main()');
}

Future<String> request1() {
  print('Requisição 1...');
  return Future.delayed(Duration(microseconds: 2), (() => '...Resposta 1: {}'));
}

Future<String> request2() {
  print('Requisição 2...');
  return Future.delayed(Duration(microseconds: 2), (() => throw Exception()));
}
