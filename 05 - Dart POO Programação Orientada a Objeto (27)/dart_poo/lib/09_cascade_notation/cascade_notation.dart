void main(List<String> args) {
  var p1 = Pessoa()
    ..nome = 'Kleber'
    ..email = 'kleber@gmail.com'
    ..site = 'https://www.kleber.com.br'
    ..printPessoa();

  var mapa = Map<String, String>()
    ..putIfAbsent('nome', () => p1.nome ?? '')
    ..putIfAbsent('email', () => p1.email ?? '')
    ..putIfAbsent('site', () => p1.site ?? '');

  print(mapa);
}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa() => print(this);

  @override
  String toString() {
    return 'Pessoa:\nNome: $nome\nEmail: $email\nSite: $site';
  }
}
