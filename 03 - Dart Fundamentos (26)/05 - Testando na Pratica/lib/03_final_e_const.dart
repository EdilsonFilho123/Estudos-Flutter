void main() {
  var nomeCompleto = 'Edilson FIlho';

  // Final (Recomendado) tem valores imutavéis, definidas em Runtime (Logo, aceita o uso de qualquer variavel na declaração)
  final nomeCompletoFinal = 'Edilson FIlho';
  final nomeCompletoFina12 = nomeCompleto;

  // Const tbm tem valores imutavéis, mas são definidas em tempo de compilação (Aceita usar apenas outra const na declaração)
  const nomeCompletoConst = 'Edilson FIlho';
  const nomeCompletoConst2 = nomeCompletoConst;

  print('$nomeCompletoFinal\n$nomeCompletoFina12\n$nomeCompletoConst\n$nomeCompletoConst2');
}