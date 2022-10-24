import 'package:app_prmo/domain/usuario.dart';

abstract class IUsuarioRepository {
  Future<bool> autenticar({required String email, required String password});
  Future<void> criar({required Usuario usuario});
  Future<Usuario> pesquisar({required String id});
  Future<List<Usuario>> listar();
  Future<void> atualizar({required Usuario updatedUsuario, required String id});
  Future<void> deletar({required String id});
}
