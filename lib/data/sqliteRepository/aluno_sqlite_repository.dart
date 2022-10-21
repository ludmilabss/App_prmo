import 'package:app_prmo/data/db_helper.dart';
import 'package:app_prmo/data/interfaces/interface_aluno_repository.dart';
import 'package:app_prmo/domain/aluno.dart';
import 'package:sqflite/sqflite.dart';

class AlunoSQLiteRepository implements IAlunoRepository {
  @override
  void atualizar(
      {required String id,
      required String name,
      required String email,
      required int matricula,
      required String password}) async {
    try {
      DBHelper dbHelper = DBHelper();
      Database db = await dbHelper.initDB();

      String sql =
          'UPDATE alunos SET name = ?, email = ?, matricula = ?, password = ? WHERE id = ?';

      await db.rawUpdate(sql, [name, email, matricula, password, id]);
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<bool> autenticar(
      {required String email, required String password}) async {
    try {
      DBHelper dbHelper = DBHelper();
      Database db = await dbHelper.initDB();

      String sql = 'SELECT * FROM monitor WHERE email = ? AND password = ?';
      final result = await db.rawQuery(sql, [email, password]);

      return result.isNotEmpty;
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  void criar(
      {required String id,
      required String name,
      required String email,
      required int matricula,
      required String password}) async {
    try {
      DBHelper dbHelper = DBHelper();
      Database db = await dbHelper.initDB();
      print('ENTROUU NO REPOSITORY');
      String sql =
          'INSERT INTO alunos (id, name, email, matricula, password) VALUES (?, ?, ?, ?, ?)';

      await db.rawInsert(sql, [id, name, email, matricula, password]);
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  void deletar({required String id}) async {
    try {
      DBHelper dbHelper = DBHelper();
      Database db = await dbHelper.initDB();

      String sql = 'DELETE FROM alunos WHERE id = ?';

      db.rawDelete(sql, [id]);
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<List<Aluno>> listar() async {
    try {
      DBHelper dbHelper = DBHelper();
      Database db = await dbHelper.initDB();

      String sql = 'SELECT * FROM alunos';
      final alunosJsonList = await db.rawQuery(sql);
      //Future<List<Aluno>> alunosList = Aluno.fromJson(alunosJson);
      List<Aluno> alunosList = <Aluno>[];
      for (var json in alunosJsonList) {
        Aluno aluno = Aluno.fromJson(json);
        alunosList.add(aluno);
      }
      return alunosList;
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<Aluno> pesquisar({required String id}) async {
    try {
      DBHelper dbHelper = DBHelper();
      Database db = await dbHelper.initDB();

      String sql = 'SELECT * FROM alunos WHERE id = ?';

      final alunosList = await db.rawQuery(sql, [id]);

      List<Aluno> alunos = <Aluno>[];
      for (var json in alunosList) {
        Aluno aluno = Aluno.fromJson(json);
        alunos.add(aluno);
      }

      return alunos[0];
    } catch (error) {
      throw Exception(error);
    }
  }
}
