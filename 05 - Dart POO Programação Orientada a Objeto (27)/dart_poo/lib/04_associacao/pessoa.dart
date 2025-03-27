class Pessoa {
  // Associação é divido e 2 partes: (Composição, Agregação)

  // Composição (Obrigatório)
  // Quando um atributo de associação é obrigatório (onde n faz sentido existir algum objeto sem tal atributo)
  CPF cpf = CPF();
  Endereco endereco = Endereco();

  // Agregação (Opcional)
  // Quando o atributo de associação não é obrigatório, mas é interessante ou pertinentente (onde pro obj pd até ser importante, mas 'vive' sem!)
  Telefone? telefone;
}

class CPF {}

class Endereco {}

class Telefone {}
