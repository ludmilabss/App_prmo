import 'dart:convert';

import 'package:app_prmo/data/db_helper.dart';
import 'package:app_prmo/domain/usuario.dart';
import 'package:sqflite/sqflite.dart';

import '../interfaces/interface_usuario_repository.dart';
import 'package:http/http.dart' as http;

class UsuarioExpressAPI implements IUsuarioRepository {

  final baseUrl = "10.0.2.2:8080";

  @override
  Future<void> atualizar(
      {required Usuario updatedUsuario, required String id}) async {
    try {
      final url = Uri.http(baseUrl, "users");
      await http.patch(url, body: updatedUsuario.toJson());
    } catch (error) {
      throw Exception(error);
    }
  }

  @override

  Future<bool> autenticar({required String email, required String password}) async {
    try {
      final url = Uri.http(baseUrl, "users/auth");
      var response = await http.post(url, body: {"email": email, "password": password});

      if(response.body == '{"result":false}'){
        return true;
      } else{
        return false;
      }


        } catch (error) {
          throw Exception(error);
        }
  }


  @override
  Future<void> criar({required Usuario usuario}) async {
    try {
      final url = Uri.http(baseUrl, "users");
      await http.post(url, body: usuario.toJson());
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<void> deletar({required String id}) async {
    try {
      final url = Uri.http(baseUrl, "users/${id}");
      await http.delete(url);
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<List<Usuario>> listar() async {
    try {     
      final url = Uri.http(baseUrl, "users");
      var usuariosJsonList = await http.get(url);
      
      if(usuariosJsonList.statusCode == 200) {
        List<Usuario> usuariosList = <Usuario>[];
        for (var json in jsonDecode(usuariosJsonList.body) ) {
          Usuario usuario = Usuario.fromJson(json);
          usuariosList.add(usuario);
        }
        return usuariosList;
      } else {
        throw Exception("Não foi possível listar usuários.");
      }
      
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<Usuario> pesquisar({required String id}) async {
    try {
      
      final url = Uri.http(baseUrl, "users/${id}");
      var usuario = await http.get(url);

      if(usuario.statusCode == 200) {
        return Usuario.fromJson(jsonDecode(usuario.body)) ;
      } else {
        throw Exception("Usuário não encontrado.");
      }

    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Future<Usuario> pesquisarPorEmail({required String email}) {
    // TODO: implement pesquisarPorEmail
    throw UnimplementedError();
  }
}
