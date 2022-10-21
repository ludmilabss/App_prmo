import 'package:app_prmo/data/sqliteRepository/usuario_sqlite_repository.dart';
import 'package:app_prmo/services/usuario_service.dart';

import '../data/sqliteRepository/usuario_sqlite_repository.dart';
import '../domain/usuario.dart';
import '../services/usuario_service.dart';

class UsuarioController {
  UsuarioSQLiteRepository? usuarioRepository;
  UsuarioService? usuarioService;

  Usuario emptyUsuario = Usuario(
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

  bool autenticar({required String email, required String password}) {
    final result =
        usuarioRepository?.autenticar(email: email, password: password);
    return result != null ? result as bool : false;
  }

  void criar({required Usuario usuario}) {
    usuarioService?.criar(usuario: usuario);
  }

  void deletar({required String id}) {
    usuarioService?.deletar(id: id);
  }

  List<Usuario> listar() {
    final result = usuarioService?.listar();
    var emptyList = <Usuario>[];
    emptyList.add(emptyUsuario);
    return result != null ? result as List<Usuario> : emptyList;
  }

  Usuario pesquisar({required String id}) {
    final result = usuarioService?.pesquisar(id: id);

    return result != null ? result as Usuario : emptyUsuario;
  }
}
