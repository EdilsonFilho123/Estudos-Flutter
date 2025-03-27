import 'dart:io';

void main(List<String> args) async {
  var file = File('lib/09_files/file.txt');

  // (4) Tipos de Leituras:

  // - Leitura Sincrona:
  print(file.readAsStringSync());
  // - Leitura Assincrona:
  print(await file.readAsString());
  // - Leitura por Linha Sincrona:
  print(file.readAsLinesSync());
  // - Leitura por Linha Assincrona:
  print(await file.readAsLines());

  //////////////////////////////////////////////////////////////////////////////

  var file2 = File('lib/09_files/file2.txt');

  // (3) Tipos de Escritas:
  
  // - Escrita Sincrona:
  file2.writeAsStringSync('Teste Escrita File - Sobre-Escrevendo');
  // - Escrita Assincrona:
  await file2.writeAsString('\nTeste Escrita File - Adicionando', mode: FileMode.append);
  // - Escrita por Objeto:
  var writeFile = file2.openWrite(mode: FileMode.append);
  var listaLinhasTexto = ["3 -> 'tres'", "4 -> 'quatro'", "5 -> 'cinco'"];

  listaLinhasTexto.forEach((el) => writeFile.write('\n$el') );
}
