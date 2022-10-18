import 'package:app_prmo/domain/atendimento.dart';
import 'package:sqflite/sqflite.dart';

import '../data/db_helper.dart';

class AtendimentoDao {
  Future<void> salvarAtendimento({required Atendimento atendimento}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    await db.insert('ATENDIMENTO', atendimento.toJson());
  }

  listarUsers() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM atendimento';
    final result = await db.rawQuery(sql);

    List<Atendimento> lista = <Atendimento>[];
    for (var json in result) {
      Atendimento usuario = Atendimento.fromJson(json);
      lista.add(usuario);
    }

    return lista;
  }


}
