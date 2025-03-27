
// As extension's serve para acrescentar metodos para uma classe, INCLUSIVE em classes onde não temos acesso ao codigo fonte, como String
// É literalmente enxertar um metodo na classe (Mas nunca sobrescrever)
extension SaudacaoStringExtencion on String {
  String saudacao() => 'Olá $this, seja bem-vindo!';
}
