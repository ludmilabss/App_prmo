import 'dart:convert';
import 'package:app_prmo/domain/turmas.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class TurmaDao{

  String baseUrl = "10.0.2.2:8080";

  Future<List<Turmas>> listarTurmas() async{

    Uri url = Uri.http(baseUrl, "turmas");
    Response response = await http.get(url);

    List<Turmas> lista = <Turmas>[];
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);

      for (var json in result) {
        Turmas pacote = Turmas.fromJson(json);
        lista.add(pacote);
      }
    }
    print(lista);
    return lista;
  }
}