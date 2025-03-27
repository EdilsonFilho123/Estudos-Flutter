import 'dart:convert';
import 'dart:async';

import '../models/aluno.dart';
import 'package:http/http.dart' as http;

class AlunosRepository {
  Future<List<Aluno>> findAll() async {
    final alunosReq = await http.get(Uri.parse('http://127.0.0.1:3031/alunos'));
    final alunosList = jsonDecode(alunosReq.body);
    
    return alunosList.map<Aluno>((aluno) => Aluno.fromMap(aluno)).toList();
  }

  Future<Aluno> findById(String id) async {
    final alunoReq = await http.get(Uri.parse('http://127.0.0.1:3031/alunos/$id'));
    final alunoList = jsonDecode(alunoReq.body);

    return Aluno.fromMap(Map<String, dynamic>.from(alunoList));
  }

  Future<void> update(Aluno aluno) async {
    await http.put(Uri.parse('http://127.0.0.1:3031/alunos/${aluno.id}'), body: aluno.toJson(), headers: { 'Content-Type': 'application/json' });
  }
}
