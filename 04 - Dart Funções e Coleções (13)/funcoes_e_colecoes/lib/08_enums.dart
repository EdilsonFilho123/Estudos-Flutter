void main(List<String> args) {
  /*Cores*/ var cor = Cores.azul; // cria o 'objeto' enum Cores
  String azul = 'azul';

  print(cor);
  print(cor.name);
  print(cor.index);

  switch (cor) {
    case Cores.azul:
      print("É ${cor.name}");
      break;
    case Cores.amarelo:
      print("É ${cor.name}");
      break;
    case Cores.vermelho:
      print("É ${cor.name}");
      break;
  }

  print(Cores.values.where((cor) => cor.toString() == 'Cores.$azul')); // retorna () se n  (versão < 2.15)
  print(Cores.values.byName(azul)); // retorna exception se n encontrado (versão > 2.15)
  print(Cores.values.asNameMap()[azul]); // retorna null se n encontrado (versão > 2.15)

  print(Cores.values.asMap()); // Chave: index, Valor: item; {0: Cores.azul} (versão < 2.15)
  print(Cores.values.asNameMap()); // Chave: item.name, Valor: item; {azul: Cores.azul} (versão > 2.15)
}

// é como se fosse uma 'classe'
enum Cores { azul, amarelo, vermelho }