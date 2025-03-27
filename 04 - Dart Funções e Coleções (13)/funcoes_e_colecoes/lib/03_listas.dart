// Quando passamos uma String ou um int como argumento para alguma função, ela cria uma copia desta variavel
// Porem, se passarmos uma lista, passa-se seu endereço de memoria, e todas as alterações feitas pela função, se mantem na lista original
// devesse lembrar que são poucos os metodos de listas que as alteram de vdd, ex: add, sort...
// mapeamento, iterable apenas retornam resultados, mas podem alterar itens da List Original!

void main(List<String> args) {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(print);

  // Expand
  // Array BiDimensional (Matriz)
  var lista = [
    [1, 2],
    [3, 4]
  ];

  // como juntar td numa lista só
  var listaNormal1 = [...lista[0], ...lista[1]]; // retorna list
  var listaNormal2 = lista.expand((num) => num); // (Indicado) retorna iterable

  // any
  var nomes = ["ed", "ana", "bia"];
  print(nomes.any((nome) => nome == "ed") ? "Tem Ed" : "Não tem Ed");

  // every
  print('${nomes.every((nome) => nome.contains("a")) ? "Todos" : "Nem todos"} os nomes tem a letra "a"');

  // sort
  var listDesordem = [99, 58, 74, 25, 35, 14, 78, 36, 91];
  listDesordem.sort();
  print(listDesordem);

  var listStrDesordem = [
    'Rodrigo|37',
    'Luana|35',
    'Guilherme|18',
    'Arthur|5',
    'Antonio|50',
  ];
  print(listStrDesordem);

  listStrDesordem.sort((p1, p2) {
    var i1 = int.parse(p1.split('|')[1]);
    var i2 = int.parse(p2.split('|')[1]);

    if (i1 > i2)
      return 1;
    else if (i1 == i2)
      return 0;
    else
      return -1;
  });
  print(listStrDesordem);

  listStrDesordem = [
    'Rodrigo|37',
    'Luana|35',
    'Guilherme|18',
    'Arthur|5',
    'Antonio|50',
  ];

  listStrDesordem.sort((p1, p2) {
    return int.parse(p1.split('|')[1]).compareTo(int.parse(p2.split('|')[1]));
  });
  print(listStrDesordem);
}
