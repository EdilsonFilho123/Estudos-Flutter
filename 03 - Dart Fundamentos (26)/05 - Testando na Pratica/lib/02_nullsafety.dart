// Nenhum tipo de variavel normal podem receber null (exceto o dynamic)
// Para que algum tipo de variavel possa receber null, deve add o sulfixo '?' no nome do tipo (Ex: String?)
// Quando uma variavel pode ser nula, o Dart ativa seu Null-Safety, que é uma proteção contra possiveis null's inexperados.
// O Null-Safety age de forma diferente para variveis globais e locais.
// Caso uma varivel local q pd ser nula, recebe um valor ou seja é validado num if, o compilador do Dart entende q aquela varivel não é mais um possivel null
// Caso uma varivel global q pd ser nula, recebe um valor ou seja é validado num if, o compilador do Dart ignora e sempre alertará q ela é um possivel Null

// Variaveis de nivel superior (ou globais)
// Todas as variaveis globais devem ser inicializadas com valor (Exceto se ela pode ser nula)
String nomeCompletoVarGlobal = 'Edilson';
String? nomeCompletoVarGlobalNull;

void main() {
  // Variaveis de nivel inferior (ou locais)
  // Todas as variaveis locais não precisam ser inicializadas com valor
  String nomeCompletoVarLocal; // Apesar do tipo 'String' não suportar null, se ela não for inicializada,
  String? nomeCompletoVarLocalNull;

  nomeCompletoVarLocal = 'Edilson';

  nomeCompletoVarLocalNull = ''; // Variaveis locais q podem ser nulas e recebem um valor são promovidas a non-null (Não Nulo) [Ler linha 5]
  nomeCompletoVarGlobalNull = ''; // Variaveis globais q podem ser nulas NUNCA serão promovidas a non-null (Não Nulo) [Ler linha 6]

  print(nomeCompletoVarLocalNull.length);
  print(nomeCompletoVarGlobalNull!.length);
  // O uso do sulfixo '!' nas variaveis (Null Assertion Operator), faz com q o compilador ignore a validação null safety
  // Mas, se a variavel for null de fato, teremos um erro em tempo de execução.

  nomeCompletoVarGlobalNull = null;

  // Coalescência Nula (??)
  // Nesse operador, caso o primeiro valor seja nulo, ele usará o valor do lado direito
  print(nomeCompletoVarGlobalNull ?? 'Edilson'); // irá retornar 'Edilson'

  // Null-Aware Operators (?. e ??=):
  // - Conditional Property Access (?.): 
      print(nomeCompletoVarGlobalNull?.length); // (Caso seja null) irá retornar null ao invés de um erro
  // - Null-Aware Assignment (??=):
      nomeCompletoVarGlobalNull ??= 'Edilson'; // (Caso seja null) irá atribuir um novo valor;

  // Podemos mesclar esses tratamendos de nulos
  print(nomeCompletoVarGlobalNull?.length ?? 0);
}
