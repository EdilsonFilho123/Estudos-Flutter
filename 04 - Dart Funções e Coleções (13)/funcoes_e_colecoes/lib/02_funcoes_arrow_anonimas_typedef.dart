void main(List<String> args) {
  // Arrow Fuctions
  print(soma(10, 10));

  // Funções Anonimas
  func() {
    print("Anonimus");
  }
  print(func);

  var funcTestNome = (nome) {
    print(nome.isEmpty ? "Nome Vazio" : nome);
  };

  chamafunc("Kleber", funcTestNome);

  // Typedef
  chamaTypeDef(teste);
}

int soma(int n1, int n2) => n1 + n2;

void chamafunc(String nome, Function(String nome) funcParam) {
  funcParam(nome);
}

// tipo de função
typedef Func2str2int = void Function(String nome, String sobreNome, int idade, [int experienciaProf]);

void chamaTypeDef(Func2str2int fnc){
  fnc("Kleber", "Thompson", 19);
}

void teste (String nome, String sobreNome, int idade, [int experienciaProf = 0]){
  print('$nome $sobreNome possui $idade anos de idade, sendo $experienciaProf de experiencia profissional!');
}