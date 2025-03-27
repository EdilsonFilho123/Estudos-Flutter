import 'package:dart_async/08_repositories/repositories/cidade_repository.dart';
import 'package:dart_async/08_repositories/repositories/user_repository.dart';

// Repositories serve para encapsular e centralizar toda a lógica de busca
// Facilita a vizualização e manutenção de código

void main(List<String> args) async {
  var cidadeRepository = CidadeRepository();

  try {
    var cidade = await cidadeRepository.buscarCidade();
    print(cidade);

    var usuario = await UserRepository().findAllUsers(100);
    print(usuario ?? 'Usuário não encontrado');
  } catch (e) {
    print('Erro ao buscar cidade');
  }
}
