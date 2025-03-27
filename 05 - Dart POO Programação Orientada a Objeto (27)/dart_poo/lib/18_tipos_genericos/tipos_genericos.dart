void main(List<String> args) {
  // tipos primitivos referece à tipos onde se é necessario passar uma "tag" (ex: <Tipo>) com o tipo, como um List ou Map:
  List<num> numeros = [1, 2, 3];

  Map<int, String> mapa = {};

  final caixa = Caixa<Bola>();
  caixa.add(Bola());
  Bola? itemBola = caixa.getItem();

  final caixaBoneca = Caixa<Boneca>();
  caixaBoneca.add(Boneca());
  Boneca? itemBoneca = caixaBoneca.getItem();

  final caixaTelefone = Caixa<Telefone>();
  caixaTelefone.add(Telefone());
  Telefone? itemTelefone = caixaTelefone.getItem();

  // var caixaString = Caixa<String>();

  print(caixa.alturaItem());
  print(caixaBoneca.alturaItem());
  print(caixaTelefone.alturaItem());
}

// Podemos criar uma classe do tipo generico, onde n dizemos o tipo, mas podemos, ao menos e não necessariamente, dizer que o tipo precise extender de alguma classe (seja via extends, implements ou with)
class Caixa<I extends Item> {
  I? _item;

  void add(I item) => _item = item;

  I? getItem() => _item;

  double alturaItem() => _item?.altura ?? 0;
}

abstract class Item {
  double altura = 0;
}

class Bola extends Item {
  @override
  double altura = 20;
}

class Boneca implements Item {
  @override
  double altura = 40;
}

class Telefone with Item {
  @override
  double altura = 60;
}
