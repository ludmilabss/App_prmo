import 'package:app_prmo/data/db_helper.dart';
import 'package:app_prmo/domain/monitor.dart';
import 'package:sqflite/sqflite.dart';

class MonitorDao{

  Future<bool> autenticar({required String email, required String password}) async{
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM MONITOR WHERE email = ? AND password = ?;';
    final result = await db.rawQuery(sql, [email, password]);

    return result.isNotEmpty;
  }

  Future<Monitor> listar({required String email, required String password}) async {
    DBHelper db1 = DBHelper();
    Database db = await db1.initDB();

    String sql = 'SELECT * FROM MONITOR WHERE email = ? AND password = ?;';
    final result = await db.rawQuery(sql, [email, password]);

    List<Monitor> list = <Monitor>[];
    for(var json in result){
      Monitor monitor = Monitor.fromJson(json);
      list.add(monitor);
    }
    print(list);
    return list.first;
  }

  // Monitor listarMonitor({required List<Monitor> lista}){
  //   Monitor monitor = lista.elementAt(0);
  //
  //   return monitor;
  // }
}