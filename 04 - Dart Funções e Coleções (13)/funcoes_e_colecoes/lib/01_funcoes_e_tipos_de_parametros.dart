void main(List<String> args) {
  // Parametros por default (
  //   comuns e tradicionais,
  //   obgd à passar tds os parametros na ordem correta
  // )
  print(somaInteiros(5, 10));

  // Parametros nomeados (
  //   nâo precisa estar na ordem correta,
  //   são nullables por padrão,
  //   por isso necessita do uso da ? na tipagem dos parametros,
  //   mas podem ser promovidos à non-null!
  //   isso se deve pq quando são param. nomeados,
  //   nao tem a necessidade de passar todos os parametros,
  //   logo é "opcional"
  //
  //   Se quiser receber um parametro non-null,
  //   basta usar o required antes do tipo do parametro,
  //   porém, vc é obrigado à passar todos os parametros com required
  // )
  print(somaDouble(d2: 5.2, d1: 10.3));

  // Parametros opcionais (
  //   Não precisa passar os parametros,
  //   mas se passar, precisar estar na ordem correta,
  //   isso se deve pois possuem valores defaults
  // )
  print(uniTextos("Hoy"));

  // Parametros mistos (comuns + nomeados)
  print(paramComunsENomeados(1, idade: 19, nome: "Kleber"));

  // Parametros mistos (comuns + opcionais)
  print(paramComunsEOpcionais(2, "Thompson"));

  // Parametros mistos devem sempre ter os nomeados ou os opcionais por ultimo
  // Por isso q não pode haver um misto entre os nomeados e os opcionais
}

int somaInteiros(int n1, int n2) {
  return n1 + n2;
}

double somaDouble({required double d1, double? d2, double? d3, double d4 = 0}) {
  d3 ??= 0; // caso seja null, atribui 0 à ele
  return d1 + (d2 ?? 0) + d3 + d4;
}

String uniTextos([String t1 = '', String t2 = 'default']) {
  return '$t1 $t2';
}

String paramComunsENomeados(int id, {required String nome, int? idade}) {
  return '$id - $nome, ${idade ?? "idade não informada em"} anos';
}

String paramComunsEOpcionais(int id, [String nome = "default", int idade = 0]) {
  return '$id - $nome, $idade anos';
}