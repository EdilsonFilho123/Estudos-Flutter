import 'package:dart_consumo_api/repositories/alunos_repository.dart';

class AlunosController {
  final _alunosRepository = AlunosRepository();

  Future<void> findAll() async {
    final alunos = await _alunosRepository.findAll();

    alunos.forEach(print);
  }

  Future<void> findById(String id) async {
    final aluno = await _alunosRepository.findById(id);

    print(aluno);
  }

  Future<void> update() async {
    final aluno = await _alunosRepository.findById('1');

    aluno.nome = 'Professor Girafalles';
    await _alunosRepository.update(aluno);

    print(await _alunosRepository.findById('1'));
  }
}
