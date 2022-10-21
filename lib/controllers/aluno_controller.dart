import 'package:app_prmo/data/sqliteRepository/aluno_sqlite_repository.dart';
import 'package:app_prmo/services/aluno_service.dart';

import '../domain/aluno.dart';

class AlunoController {
  AlunoSQLiteRepository? alunoRepository;
  AlunoService? alunoService;

  Aluno emptyAluno = Aluno(id: '', email: '', matricula: 0, name: '', password: '');

  AlunoController() {
    alunoRepository = AlunoSQLiteRepository();
    alunoService = AlunoService(alunoRepository!);
  }

  bool autenticar({required String email, required String password}) {
    final result =
        alunoRepository?.autenticar(email: email, password: password);
    return result != null ? result as bool : false;
  }

  void criar(
      {
      required String id,
      required String name,
      required String email,
      required int matricula,
      required String password}) {
    alunoService?.criar(
       id: id, name: name, email: email, matricula: matricula, password: password);
  }

  void deletar({required String id}) {
    alunoService?.deletar(id: id);
  }

  List<Aluno> listar() {
    final result = alunoService?.listar();
    var emptyList = <Aluno>[];
    emptyList.add(emptyAluno);
    return result != null ? result as List<Aluno> : emptyList;
  }

  Aluno pesquisar({required String id}) {
    final result = alunoService?.pesquisar(id: id);

    return result != null ? result as Aluno : emptyAluno;
  }
}
