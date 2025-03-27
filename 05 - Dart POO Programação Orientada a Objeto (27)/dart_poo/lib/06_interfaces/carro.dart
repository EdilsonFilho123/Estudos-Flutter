// Isso aqui é uma classe abstrata
// pois tem metodos implementados!!!
abstract class CarroClasseAbstrataParaHeranca {
  void velocidadeMaxima() {
    // codigo
  }
}

// Isso aqui é uma interface
// pois existem metodos mas nunca implementados!!!
// O uso de abstract em variaveis exige q elas sejam implementadas
abstract class Carro {
  abstract int portas;
  abstract int rodas;
  abstract String motor;

  int velocidadeMaxima();
}
