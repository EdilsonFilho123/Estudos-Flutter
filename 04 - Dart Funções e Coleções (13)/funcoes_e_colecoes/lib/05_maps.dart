void main(List<String> args) {
  // Map é uma representação Chave:Valor

  final map1 = <String, String>{
    'nome': "Kleber",
    'curso': "Flutter"
  }; // Nada pode ser nulo

  Map<String, String>? map2 = null; // O map pode ser nulo, mas se houver algum item, nem a chave e nem o valor podem ser nulos
  Map<String?, String> map3 = {
    null: "Rodri"
  }; // Chave pode ser nulo, mas o valor e o map, não
  Map<String, String?> map4 = {
    'nome': null
  }; // Valor pode ser nulo, mas a chave e o map, não
  Map<String?, String?> map5 = {null: null};

  var produtos = <String, String>{};

  produtos.putIfAbsent('Arroz', () => "R\$ 15,69"); // Insere item caso não exista essa key
  produtos.putIfAbsent('Feijão', () => "R\$ 7,69"); // Insere item caso não exista essa key
  produtos.update("Feijão", (value) => "R\$ 6,59"); // Atualiza item no map
  produtos.update("Batata", (value) => "R\$ 2,29", ifAbsent: () => 'R\$ 1,59'); // Atualiza item, mas caso n exista, coloca outro valor (evitando erro de update inexistente)

  print(produtos); // print map
  print(produtos['Arroz']); // print map[]
  produtos.forEach((key, value) => {print('$key -> $value')}); // foreach map

  for (var pdt in produtos.entries) {
    print('${pdt.key} -> ${pdt.value}'); // for in map para funções async
  }

  for (var key in produtos.keys) {
    print(key);
  }

  for (var value in produtos.values) {
    print(value);
  }

  var newMap = produtos.map((key, value) {
    return MapEntry(key.toUpperCase(), value);
  });

  print(newMap);

  var mapa = <String, Object>{
    'nome': "Edilson",
    'Faculdades': [
      {'instituição': "Einstein", 'curso': "TADS"},
      {'instituição': "Anhaguera", 'curso': "Eng. Software"}
    ]
  };

  print(mapa);
}
