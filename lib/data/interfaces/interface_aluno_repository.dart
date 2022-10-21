import 'package:app_prmo/domain/aluno.dart';

abstract class IAlunoRepository {
  Future<bool> autenticar({required String email, required String password});
  void criar(
      {
        required String id,
        required String name,
      required String email,
      required int matricula,
      required String password});

  Future<Aluno> pesquisar({required String id});
  Future<List<Aluno>> listar();
  void atualizar(
      {required String id,
      required String name,
      required String email,
      required int matricula,
      required String password});
  void deletar({required String id});
}
