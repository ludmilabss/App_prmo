import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper{

  initDB() async{
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacote.db");
    Database database = await openDatabase(path,
    version: 1,
    onCreate: onCreate);

    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async{
    String sql = 'CREATE TABLE MONITOR (id INTEGER PRIMARY KEY, name varchar(100), email varchar(100), password varchar(100), monitor boolean)';
    await db.execute(sql);

    sql = "INSERT INTO MONITOR (id, name, email, password, monitor) VALUES (1, 'Antony Gabriel', 'antony@gmail.com', 'asagigante', true);";
    await db.execute(sql);

    sql = "INSERT INTO MONITOR (id, name, email, password, monitor) VALUES (2, 'Maria Eduarda', 'eduarda@gmail.com', 'asameuamor', true);";
    await db.execute(sql);
  }
}