import '../data/interfaces/interface_aluno_repository.dart';
import '../domain/aluno.dart';

class AlunoService {
  IAlunoRepository alunoRepository;

  AlunoService(this.alunoRepository);

  void atualizar(
      {required String id,
      required String name,
      required String email,
      required int matricula,
      required String password}) {
    alunoRepository.atualizar(
        id: id,
        name: name,
        email: email,
        matricula: matricula,
        password: password);
  }

  Future<bool> autenticar({required String email, required String password}) {
    final result = alunoRepository.autenticar(email: email, password: password);
    return result;
  }

  void criar(
      {required String id,
      required String name,
      required String email,
      required int matricula,
      required String password}) {
    alunoRepository.criar(
        id: id,
        name: name,
        email: email,
        matricula: matricula,
        password: password);
  }

  void deletar({required String id}) {
    alunoRepository.deletar(id: id);
  }

  Future<List<Aluno>> listar() {
    final result = alunoRepository.listar();
    return result;
  }

  Future<Aluno> pesquisar({required String id}) {
    final result = alunoRepository.pesquisar(id: id);
    return result;
  }
}
