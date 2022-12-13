import 'package:app_prmo/backend/domain/turmas.dart';
import 'package:sqflite/sqflite.dart';

import 'db_helper.dart';

class TurmaDao {
  Future<List<Turmas>> listarTurmas() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = "SELECT * FROM TURMAS";
    final result = await db.rawQuery(sql);

    List<Turmas> lista = <Turmas>[];
    for (var json in result) {
      Turmas turma = Turmas.fromJson(json);
      lista.add(turma);
    }

    return lista;
  }
}
