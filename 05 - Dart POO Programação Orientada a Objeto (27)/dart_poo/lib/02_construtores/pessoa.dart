class Pessoa {
  // No Dart, não existe a sobrecarga de construtores, porem existe 3 tipos de construtores:
  // default (tradicional):  Classe(Tipo parametro...); -> para o principal construtor
  // nomeado:  Classe.descricao(Tipo parametro...); -> para ramificações onde nem todos os parametros do principal são obrigatórios
  // factory: factory Classe.descricao(Tipo parametro...){
  //   // tratamento dos parmetros
  //   var instancia = Classe.outraDescricaoJaExistente(parametro...);
  //   // tratamento da instancia
  //   return instancia;
  // } -> ideal para o tratamento ou regra de negocio

  // Pessoa(String nome, int idade, String sexo){
  //   _nome = nome;
  //   _sexo = sexo;
  //   _idade = idade;
  // }
  Pessoa(this._nome, this._idade, this._sexo); // forma resumida

  // Pessoa.parOpcional([String? nome, int? idade, String? sexo]){
  //   _nome = nome;
  //   _sexo = sexo;
  //   _idade = idade;
  // }
  Pessoa.parOpcional( [this._nome, this._idade, this._sexo]); // forma resumida (pode add defaults)

  // Pessoa.parNomeado({required String nome, required int idade, required String sexo}){
  //   _nome = nome;
  //   _sexo = sexo;
  //   _idade = idade;
  // }
  Pessoa.parNomeado({required String nome, required int idade, required String sexo}) : _nome = nome, _idade = idade, _sexo = sexo;
  // forma resumida, para usar o this._nome direto é necessário que os atributos sejam publicos (pode add valor default se não for required) (Se tiverem valor default ou nullables, podem se tornar 'opcionais' tbm)

  factory Pessoa.fabrica(String nomeConstrutor) {
    var nome = '$nomeConstrutor (Fabricado - factory@)';
    var pessoa = Pessoa.parOpcional();
    pessoa._nome = nome;
    return pessoa;
  }

  String? _nome;
  String? _sexo;
  int? _idade;

  String? getNome() => _nome; //get
  void setNome(String nome) => _nome = nome; // set

  String? getSexo() => _sexo; //get
  void setSexo(String sexo) => _sexo = sexo; // set

  int? getIdade() => _idade; //get
  void setIdade(int idade) => _idade = idade; // set

  // !!! Uso de atributos com final

  // os atributos de uma classe podem ser atribuidas como final
  // as vantagens de um atributo ser final é que só é possivel add o valor a ele apenas no construtor
  // depois de criado o objeto, não se pode alterar os atributos finais

  // POREM lembre que para isso, é necessario que o construtor seja configurado corretamente, seguindo as regras:
  // atributos finais so podem ter valor add atraves da atribuição direta no construtor: Classe(this.atributoFinal){...}
  // tudo oq ocorre dentro do {...} do construtor, remete a uma instância já criada, logo o atributo final já n pode ser modificado

  // Exemplos Corretos:
  // Classe(this._attFinal1, this._attFinal2, this._attFinal3);
  // Classe.descConstrutor([this._attFinal1, this._attFinal2]);
  // Classe.descConstrutor2({required String vl}) : this._attFinal1 = vl;

  // Exemplos Errados:
  // Classe(String vl1, int vl2, String vl3){
  //   _attFinal1 = vl1;
  //   _attFinal2 = vl2;
  //   _attFinal3 = vl3;
  // }
  // Classe.descConstrutor([String? vl1, int? vl2]){
  //   _attFinal1 = vl1;
  //   _attFinal2 = vl2;
  // }
  // Classe.descConstrutor2({required String vl}){
  //   _attFinal1 = vl;
  // }


  // !!! Uso late nos atributos
  // Atributos com late tem um problema quando se trata de atribuição em construtores
  // Se o construct usado para atribuir valor ao atributo late e esse construct for resumido (Sem Corpo '{}')
  // O late não interpretará isso como atribuição, e o atributo permanecerá null esperando um valor
}
