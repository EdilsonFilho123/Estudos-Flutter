void main(List<String> args) {

  // Tipos de declaração de lista

  List<int> list1 = [1, 2, 3]; // cria lista de inteiros
  
  var list2 = [1, 2, 3]; // cria lista de inteiros
  
  List<int> list3 = []; // cria lista de inteiros vazia
  
  var list4 = []; // CUIDADO!!! Cria lista de dinamicos vazia

  var list5 = <int>[]; // cria lista de inteiros vazia


  // Tipos de declaração de lista com nulos

  List<String>? nullOrList; // Permite que esta variavel seja OU uma Lista de string OU um nulo

  List<String?> listOfStringOrNull; // Permite que esta lista armazene itens tanto string quanto nulo

  List<String?>? NullOrListOfStringOrNull; // Permite que seja nulo, ou uma lista com itens strings ou nulos


  // Exemplos na pratica

  final numeros = [1, 2, 3, 4];
  print(numeros); // [1, 2, 3, 4]

  numeros.add(1);
  print(numeros); // [1, 2, 3, 4, 1]]

  final nomes = ["Jasper", "Groa", "Linda", "Justin"];
  print(nomes); // ["Jasper", "Groa", "Linda", "Justin"]

  nomes.add("Flora");
  print(nomes); // ["Jasper", "Groa", "Linda", "Justin", "Flora"]

  nomes.insert(0, "Ghost");
  print(nomes); // ["Ghost", "Jasper", "Groa", "Linda", "Justin", "Flora"]

  nomes.addAll(["Goldster", "Grilfior", "Grestoria", "Glaustia"]);
  print(nomes); // ["Ghost", "Jasper", "Groa", "Linda", "Justin", "Flora", "Goldster", "Grilfior", "Grestoria", "Glaustia"]

  nomes.removeWhere((element) { return element.length > 6 ? true : false; });
  print(nomes); // [Ghost, Jasper, Groa, Linda, Justin, Flora]

  nomes.remove(nomes.firstWhere((element) { return element == "Ghost" ? true : false; })); // existe tbm o lastWhere
  print(nomes); // [Jasper, Groa, Linda, Justin, Flora]

  nomes.remove(nomes.last); // existe tbm o first
  print(nomes); // [Jasper, Groa, Linda, Justin]

  final numerosGerados = List.generate(5, (index) => (index + 1) * 2);
  print(numerosGerados); // [2, 4, 6, 8, 10]

  final repet = List.filled(5, "Good Nighting");
  print(repet); // [Good Nighting, Good Nighting, Good Nighting, Good Nighting, Good Nighting]

  var soma = numerosGerados.fold( 0, (previousValue, element) => previousValue += element );
  print(soma); // 30

  final listaCompleta = [-10, -8, -6, -4, -2, 0, ...numerosGerados];
  print(listaCompleta); // [-10, -8, -6, -4, -2, 0, 2, 4, 6, 8, 10]

  final collectionIf = ["Arroz", "Feijão", if (soma >= 30) "Batata"];
  print(collectionIf); // [Arroz, Feijão, Batata]

  final collectionFor = ["-> 0", for (var i in numerosGerados) "-> $i"];
  print(collectionFor); // [-> 0, -> 2, -> 4, -> 6, -> 8, -> 10]

  var text = collectionFor.join("\n");
  print(text); 
}
