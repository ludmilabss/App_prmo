import 'package:app_prmo/domain/usuario.dart';

abstract class IUsuarioRepository {
  Future<bool> autenticar({required String email, required String password});
  void criar({required Usuario usuario});
  Future<Usuario> pesquisar({required String id});
  Future<List<Usuario>> listar();
  void atualizar({required Usuario updatedUsuario, required String id});
  void deletar({required String id});
}
