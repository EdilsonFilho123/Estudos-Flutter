
// O conceito de Assíncrono é representado por por 2 classes no Dart:
// Future (1 resultado Futuro) -> representa UM valor ou erro que estará disponivel (promisse) no futuro!
// Stream (Fluxo de resultados) -> representa VARIOS valores (ou varios Futures), um canal aberto para receber diversos valores!

void main(List<String> args) async {
  print('Inicio...');

  final interval = Duration(seconds: 2);
  final stream = Stream<int>.periodic(interval, callback);

  // await for serve para ficar 'escutando' tudo q o stream pode retornar 
  // (com o uso do await, o for n fica consumindo processamento, pois ele 'espera' até que um novo valor chegue ao stream)
  // como o stream é um 'canal aberto', se n houver um tratamento de saida, o for entra em loop infinito como nesse caso
  await for (var i in stream) {
    print(i);
  }

  print('...Fim');
}

int callback(int value) {
  // print('O valor é ${value+1}');
  return (value + 1) * 2;
}
