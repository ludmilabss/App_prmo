import 'package:app_prmo/data/db_helper.dart';
import 'package:app_prmo/domain/usuario.dart';
import 'package:sqflite/sqflite.dart';

import '../interfaces/interface_usuario_repository.dart';

class UsuarioSQLiteRepository implements IUsuarioRepository {
  @override
  Future<void> atualizar(
      {required Usuario updatedUsuario, required String id}) async {
    try {
      DBHelper dbHelper = DBHelper();
      Database db = await dbHelper.initDB();

      String sql =
          'UPDATE usuarios SET name = ?, email = ?, enrolmentCode = ?, password = ? WHERE id = ?;';

      await db.rawUpdate(sql, [
        updatedUsuario.name,
        updatedUsuario.email,
        updatedUsuario.enrolmentCode,
        updatedUsuario.password,
        id
      ]);
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

      String sql = 'SELECT * FROM usuarios WHERE email = ? AND password = ?;';
      final result = await db.rawQuery(sql, [email, password]);

      return result.isNotEmpty;
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<void> criar({required Usuario usuario}) async {
    try {
      DBHelper dbHelper = DBHelper();
      Database db = await dbHelper.initDB();
      print('ENTROUU NO REPOSITORY');
      String sql =
          'INSERT INTO usuarios (id, name, email, enrolmentCode, password) VALUES (?, ?, ?, ?, ?);';
/*
      await db.rawInsert(sql, [
        usuario.id,
        usuario.name,
        usuario.email,
        usuario.enrolmentCode,
        usuario.password
      ]);*/
      await db.insert('usuarios', usuario.toJson());
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<void> deletar({required String id}) async {
    try {
      DBHelper dbHelper = DBHelper();
      Database db = await dbHelper.initDB();

      String sql = 'DELETE FROM usuarios WHERE id = ?';

      db.rawDelete(sql, [id]);
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<List<Usuario>> listar() async {
    try {
      DBHelper dbHelper = DBHelper();
      Database db = await dbHelper.initDB();

      String sql = 'SELECT * FROM usuarios';
      final usuariosJsonList = await db.rawQuery(sql);
      List<Usuario> usuariosList = <Usuario>[];
      for (var json in usuariosJsonList) {
        Usuario usuario = Usuario.fromJson(json);
        usuariosList.add(usuario);
      }
      return usuariosList;
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<Usuario> pesquisar({required String id}) async {
    try {
      DBHelper dbHelper = DBHelper();
      Database db = await dbHelper.initDB();

      String sql = 'SELECT * FROM usuarios WHERE id = ?;';
      final usuariosList = await db.rawQuery(sql, [id]);

      List<Usuario> usuarios = <Usuario>[];
      /*Usuario usuario = Usuario(
          id: '0',
          email: 'email',
          password: 'password',
          name: 'name',
          enrolmentCode: 0,
          isMonitor: false,
          isAdmin: false);*/
      for (var json in usuariosList) {
        print('get in the search');
        print('found json: ${json}');
        Usuario usuario = Usuario.fromJson(json);
        print('usuario: ${usuario}');
        usuarios.add(usuario);
      }
      print('eh o chegas aqui');
      print('usuario encontrado: ${usuarios[0].name} ${usuarios[0].email} ');
      return usuarios[0];
    } catch (error) {
      print('erro! ${error}');
      throw Exception(error);
    }
  }
}
