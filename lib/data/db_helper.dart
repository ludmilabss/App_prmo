import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacote.db");
    //deleteDatabase(path);
    Database database = await openDatabase(path,
        version: 1, onCreate: onCreate);

    return database;
  }

  Future<FutureOr<void>> onCreate(Database database, int version) async {
    String sql =
        'CREATE TABLE MONITOR (id INTEGER PRIMARY KEY AUTOINCREMENT, name varchar(100), email varchar(100), password varchar(100), monitor INTEGER);';
    await database.execute(sql);

    sql =
    'CREATE TABLE alunos (id varchar(100) PRIMARY KEY, name varchar(100), email varchar(100), matricula varchar(10), password varchar(100));';
    await database.execute(sql);

    sql = "CREATE TABLE TURMAS (nome varchar(100), turno varchar(100), curso varchar(100));";
    await database.execute(sql);

    sql =
        "INSERT INTO MONITOR (id, name, email, password, monitor) VALUES (1, 'Antony Gabriel', 'antony@gmail.com', 'asagigante', 1);";
    await database.execute(sql);

    sql =
        "INSERT INTO MONITOR (id, name, email, password, monitor) VALUES (2, 'Maria Eduarda', 'eduarda@gmail.com', 'asameuamor', 1);";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('912', 'matutino', 'Informática - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('913', 'matutino', 'Informática - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('914', 'matutino', 'Informática - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('921', 'vespertino', 'Informática - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('922', 'vespertino', 'Informática - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('923', 'vespertino', 'Informática - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('924', 'vespertino', 'Informática - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('411', 'matutino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('412', 'matutino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('413', 'matutino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('414', 'matutino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('421', 'vespertino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('422', 'vespertino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('423', 'vespertino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('424', 'vespertino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO alunos (id, name, email, matricula, password) VALUES ('6969', 'Guilherme de Jesus', 'gui@gmail.com', '2020123456', '12345678');";
    await database.execute(sql);

  }

  // Future<void> onUpgrade(
  //     Database database, int oldVersion, int newVersion) async {
  //   print('oldVersion: ${oldVersion}');
  //   print('newVersion: ${newVersion}');
  //   if (oldVersion == 2 && newVersion == 3) {
  //     // String sql = "CREATE TABLE TURMAS (nome varchar(100), turno varchar(100), curso varchar(100))";
  //     // await database.execute(sql);
  //     //
  //     // sql =
  //     // "INSERT INTO TURMAS (nome, turno, curso) VALUES ('911', 'matutino', 'Informática -');";
  //     // await database.execute(sql);
  //   }
  //   if (oldVersion == 2 && newVersion == 3) {
  //
  //   }
  //
  //   if (oldVersion == 3 && newVersion == 4) {
  //     String
  //   }
  // }

  Future<void> onUpgrade1(
      Database database, int oldVersion, int newVersion) async {}
}
