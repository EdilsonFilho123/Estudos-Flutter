class Cliente {
  final String _nome;
  String? cpf;

  String? razaoSocial;
  String? cnpj;
  
  Cliente({
    nome,
    this.cpf,
    this.razaoSocial,
    this.cnpj,
  }) : 
  _nome = nome,
  assert(nome != null, 'Nome não pode ser nulo'),
  assert(cpf != null, 'Cpf não pode ser nulo');
  // assert permite vc passar um bool, onde se for falso, retorna uma exception que tem como mensagem o bool passado e seu segundo parametro
  // com isso, pode criar validações com ele e passar uma mensagem para quando retornar a exception
  // isso ocorre apenas em ambiente de DESENVOLVIMENTO, se estiver em ambiente de produção, gera um log, mas não trava o programa
  // usado mais antes do null-safety

  @override
  String toString() {
    return 'Cliente(nome: $_nome, cpf: $cpf, razaoSocial: $razaoSocial, cnpj: $cnpj)';
  }
}
