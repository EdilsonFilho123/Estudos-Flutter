void main(List<String> args) {
  var p1 = Pessoa();

  // get e set tradicional (como java por exemplo)
  // p1.setNome('Kleber');
  // print(p1.getNome());

  // get e set padrão dart OU atributo publico
  p1.nome = 'Kleber';
  print(p1.nome);
}

// Os getters e setters no dart não são 'obrigatórios', por exemplo: em java se criava sempre atributos privados com getters e setters
// No dart, se vc for criar um atributo q iria ter get e set sem nenhuma regra de negocio, o certo seria vc deixar publico
// mas e se tiver q implemetar regra de negocio posteriormente?
// n tem problema, é só definir os metodos como get e set
class Pessoa {
  String? _nome;

  // get e set tradicional (como java por exemplo)
  // String? getNome() => _nome;
  // void setNome(String? nome) => _nome = nome;

  // get e set apenas por existir
  // String? get nome => _nome;
  // set nome(String? nome) => _nome = nome;

  // get e set com verificações
  String? get nome {
    return _nome ?? '<< Nome Vazio >>';
  }
  set nome(String? nome) {
    if(nome != null) _nome = nome;
  }
}
