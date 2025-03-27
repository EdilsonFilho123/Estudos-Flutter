// Exemplo de 'mixin' declarado com o abstract (NÃO RECOMENDADO)
// se uma classe abstract for usada como mixin, ela não pode extender ninguem
// Não muito indicado pois perde a utilização do 'on' e com isso perde um possivel tratamento de sobrescrita
abstract class Cantar {
  String cantar() => 'Rock';

  // dependendo da ordem, irá cancelar o metodo habilidade anterior
  String habilidade() => 'Cantar...';
}
