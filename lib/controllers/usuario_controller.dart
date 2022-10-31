import 'dart:ffi';

import 'package:app_prmo/data/sqliteRepository/usuario_sqlite_repository.dart';
import 'package:app_prmo/services/usuario_service.dart';

import '../data/sqliteRepository/usuario_sqlite_repository.dart';
import '../domain/usuario.dart';
import '../services/usuario_service.dart';

class UsuarioController {
  UsuarioSQLiteRepository? usuarioRepository;
  UsuarioService? usuarioService;

  Usuario emptyUsuario = Usuario(
      id: '',
      email: '',
      enrolmentCode: 0,
      isAdmin: false,
      isMonitor: false,
      name: '',
      password: '');

  UsuarioController() {
    usuarioRepository = UsuarioSQLiteRepository();
    usuarioService = UsuarioService(usuarioRepository!);
  }

  Future<bool> autenticar(
      {required String email, required String password}) async {
    final result =
        await usuarioRepository?.autenticar(email: email, password: password);
    return result ?? false;
  }

  Future<void> criar({required Usuario usuario}) async {
    await usuarioService?.criar(usuario: usuario);
  }

  Future<void> deletar({required String id}) async {
    await usuarioService?.deletar(id: id);
  }

  Future<List<Usuario>> listar() async {
    final result = await usuarioService?.listar();
    var emptyList = <Usuario>[];
    emptyList.add(emptyUsuario);
    return result != null ? result : emptyList;
  }

  Future<void> atualizar({ required String id, required Usuario usuario}) async {
    usuarioService?.atualizar(id: id, usuario: usuario);
  }

  Future<Usuario> pesquisarPorEmail({ required String email }) async {
    final result = await listar();
    Usuario resultado = Usuario(id: 'id', email:' email', password:' password', name: 'name', enrolmentCode: 123, isMonitor: false, isAdmin: false);
    for(int i = 0; i < result.length; i++){
      if(result[i].email == email) {
        resultado = result[i];
      }
    }
    return resultado ;
  }

  Future<Usuario> pesquisar({required String id}) async {
    final result = await usuarioService?.pesquisar(id: id);

    return result ?? emptyUsuario;
  }
}
