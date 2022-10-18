import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper{

  initDB() async{
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacote.db");
    Database database = await openDatabase(path,
        version: 2,
        onCreate: onCreate, onUpgrade: onUpgrade);

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
  Future<FutureOr<void>> onUpgrade(Database database, int oldversion, int newversion) async {
    if(
    oldversion == 1 && newversion == 2
    ){
      String sql = 'CREATE TABLE  ATENDIMENTO ( turma varchar(100), data1 varchar(100), nome varchar(100), atividade varchar(100), matricula varchar(10))';
      await database.execute(sql);
    }
  }



}