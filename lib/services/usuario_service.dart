import 'package:app_prmo/domain/usuario.dart';

import '../data/interfaces/interface_usuario_repository.dart';
import '../domain/usuario.dart';

class UsuarioService {
  IUsuarioRepository usuarioRepository;

  UsuarioService(this.usuarioRepository);

  void atualizar({required String id, required Usuario usuario}) {
    usuarioRepository.atualizar(id: id, updatedUsuario: usuario);
  }

  Future<bool> autenticar({required String email, required String password}) {
    final result =
        usuarioRepository.autenticar(email: email, password: password);
    return result;
  }

  void criar({required Usuario usuario}) {
    usuarioRepository.criar(usuario: usuario);
  }

  void deletar({required String id}) {
    usuarioRepository.deletar(id: id);
  }

  Future<List<Usuario>> listar() {
    final result = usuarioRepository.listar();
    return result;
  }

  Future<Usuario> pesquisar({required String id}) {
    final result = usuarioRepository.pesquisar(id: id);
    return result;
  }
}
