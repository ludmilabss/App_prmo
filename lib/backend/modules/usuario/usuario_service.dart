import 'repository/interface/interface_usuario_repository.dart';
import 'usuario.dart';

class UsuarioService {
  IUsuarioRepository usuarioRepository;

  UsuarioService(this.usuarioRepository);

  Future<void> atualizar({required String id, required Usuario usuario}) async {
    await usuarioRepository.atualizar(id: id, updatedUsuario: usuario);
  }

  Future<bool> autenticar({required String email, required String password}) {
    final result =
        usuarioRepository.autenticar(email: email, password: password);
    return result;
  }

  Future<void> criar({required Usuario usuario}) async {
    await usuarioRepository.criar(usuario: usuario);
  }

  Future<void> deletar({required String id}) async {
    await usuarioRepository.deletar(id: id);
  }

  Future<List<Usuario>> listar() async {
    final result = await usuarioRepository.listar();
    return result;
  }

  Future<Usuario> pesquisar({required String id}) async {
    final result = await usuarioRepository.pesquisar(id: id);
    return result;
  }
}
