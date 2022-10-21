import '../data/interfaces/interface_aluno_repository.dart';
import '../domain/aluno.dart';

class AlunoService {
  IAlunoRepository alunoRepository;

  AlunoService(this.alunoRepository);

  void atualizar(
      {required int id,
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
      {required String name,
      required String email,
      required int matricula,
      required String password}) {
    alunoRepository.criar(
        name: name, email: email, matricula: matricula, password: password);
  }

  void deletar({required int id}) {
    alunoRepository.deletar(id: id);
  }

  Future<List<Aluno>> listar() {
    final result = alunoRepository.listar();
    return result;
  }

  Future<Aluno> pesquisar({required int id}) {
    final result = alunoRepository.pesquisar(id: id);
    return result;
  }
}
