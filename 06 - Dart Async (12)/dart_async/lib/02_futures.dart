
// Em processos async teremos 2 Status: 
// 1 - Incompleto;
// 2 - Concluido (Com Valor, Com Erro)
// Concluido com valor -> .then()
// Concluido com erro -> .catchError() ou OnError
// qd for Concluido  -> .whenComplete()

void main(List<String> args) {
  print('Linha Temporal 1 (principal)...\n');

  linha2();
  linha3('Vcs estão ai?').then((value) => print(value));
  linha4('Tentativa 1, vcs estão ai?')
    .then((value) => print(value), onError: (error) => print("...Erro na comunicação com Linha Temporal 4: $error"));
  linha4('Tentativa 2, vcs estão ai?')
    .then(print)
    .catchError(print)
    .whenComplete(() => print("...Resposta com Linha Temporal 4 com Instabilidade"));

  print('\n...Linha Temporal 1 (principal) destruida\n');
}

Future<String> linha4(String msg) {
  print('Contato com Linha Temporal 4: $msg...');
  return Future.delayed(Duration(microseconds: 5), (() => throw Exception()));
}

Future<String> linha3(String msg) {
  print('Contato com Linha Temporal 3: $msg...');
  return Future.delayed(Duration(microseconds: 2), (() => '...Retorno Linha Temporal 3: Estamos aqui!!!'));
}

void linha2() async {
  print('Linha Temporal 2 Criada ...');
  Future.delayed(Duration(seconds: 3), (() {
    for (var i = 3; i > 0; i--) print(i);

    print('...Linha Temporal 2 destruida');
  }));
}
