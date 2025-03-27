Future<void> main(List<String> args) async {
  var nomes = ['Rodrigo', 'Gabi', 'Clauber'];
  print('Inicio main()...');

  // await equivocado:

  // nomes.forEach((n) async {
  //   print(await saudacao(n));
  // });

  // await's corretos:

  // executa um await por vez, nome por nome
  await Future.forEach<String>(nomes, (n) async {
    print(await saudacao(n));
  });

  // executa todos os nome de uma só vez, sendo mais veloz
  print(await Future.wait( nomes.map((n) => saudacao(n)).toList() ));

  print('...Fim main()');
}

Future<String> saudacao(String nome) {
  return Future.delayed(Duration(seconds: 2), () => 'Olá $nome');
}
