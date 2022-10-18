import 'package:app_prmo/data/db_helper.dart';
import 'package:app_prmo/domain/monitor.dart';
import 'package:sqflite/sqflite.dart';

class MonitorDao {
  Future<bool> autenticar(
      {required String email, required String password}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM MONITOR WHERE email = ? AND password = ?;';
    final result = await db.rawQuery(sql, [email, password]);

    return result.isNotEmpty;
  }

  Future<Monitor> criar(
      {required String email,
      required String password,
      required String name,
      required bool monitor}) async {
    Monitor monitorAux =
        Monitor(email: email, password: password, name: name, monitor: monitor);
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql =
        "INSERT INTO MONITOR (id, name, email, password, monitor) VALUES (DEFAULT, ?, ?, ?, ?);";
    await db.insert(
      'MONITOR',
      monitorAux.toJson(),
    );
    // await db.execute(sql);

    return monitorAux;
  }
}
