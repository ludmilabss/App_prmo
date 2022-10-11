import 'package:app_prmo/data/db_helper.dart';
import 'package:sqflite/sqflite.dart';

class MonitorDao{
  Future<bool> autenticar({required String email, required String password}) async{
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM MONITOR WHERE email = ? AND password = ?;';
    final result = await db.rawQuery(sql, [email, password]);

    return result.isNotEmpty;
  }
}