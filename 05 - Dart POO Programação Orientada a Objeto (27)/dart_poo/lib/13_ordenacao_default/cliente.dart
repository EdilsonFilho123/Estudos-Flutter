// Para ordenar objetos, cada objeto tem q ser uma implementação da interface Comparable
// Essa Interface trás o metodo compareTo, q auxiliará na ordenação desse objeto em listas

class Cliente implements Comparable<Cliente> {
  Cliente({
    required this.nome,
    required this.email,
  });

  String nome;
  String email;

  @override
  bool operator ==(covariant Cliente other) {
    if (identical(this, other)) return true;

    return other.nome == nome && other.email == email;
  }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode;

  @override
  String toString() => '\nCliente(\n   nome: $nome\n   email: $email\n)';

  @override
  int compareTo(Cliente other) {
    return nome.compareTo(other.nome);
  }
}
