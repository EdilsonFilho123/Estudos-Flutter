class EnviarEmail {
  bool call(String email) {
    print('Acionando metodo call');
    return enviar(email);
  }

  bool enviar(String email) {
    print("Enviando email");
    return true;
  }
}
