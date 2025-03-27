class Pessoa {
  Pessoa({required this.nome, required this.email});

  String nome;
  String email;

  @override // Assim, toda a verificação n vê se apenas estão apontando pro msm lugar, mas compara os atributos tbm
  bool operator ==(Object other) {
    return identical(this, other) || (other is Pessoa && other.nome == nome && other.email == email);
  }

  @override // Sempre q alterar o operador ==, deve alterar o hashCode...
  int get hashCode => nome.hashCode ^ email.hashCode;

  @override // fica mais agradavel
  String toString() => 'Pessoa(\n   nome: $nome\n   email: $email\n)';
}
