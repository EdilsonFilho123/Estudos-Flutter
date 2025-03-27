class Camiseta {
  String? tamanho;// publico
  String? marca; // publico
  String? _cor; // quando se usa o underline '_' no começo, torna o atributo privado (A Logica se aplica ao metodos e aos statics)

  // Para acessar atributos estaticos, NÃO necessita de objeto, apenas o nome da classe
  // const n é obrigatório, mas é indicado pois se alguem alterar, ele permanecerá com o novo valor para todas as classes até o fim do programa (ou até uma outra modificação)
  static const String nome = 'Camiseta'; // publico
  static const String _nome2 = 'Camiseta'; // privado

  static String recuperarNome() => nome; // publico
  static String _recuperarNome2() => _nome2; // privado

  String tipoDeLavagem() => ('${(marca == 'Nike') ? 'Não ' : ''}Pode lavar na maquina'); // publico
  String _tipoDeLavagem() => ('${(marca == 'Nike') ? 'Não ' : ''}Pode lavar na maquina'); // privado

  String? getCor() => _cor; // get
  void setCor(String cor) => _cor = cor; // set
}
