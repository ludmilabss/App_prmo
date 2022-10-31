import 'repository/usuario_sqlite_repository.dart';
import 'usuario.dart';
import 'usuario_service.dart';

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

  List<Usuario> listar() {
    final result = usuarioService?.listar();
    var emptyList = <Usuario>[];
    emptyList.add(emptyUsuario);
    return result != null ? result as List<Usuario> : emptyList;
  }

  Future<Usuario> pesquisar({required String id}) async {
    final result = await usuarioService?.pesquisar(id: id);

    return result ?? emptyUsuario;
  }
}
