import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacote.db");
    Database database = await openDatabase(path,
        version: 4, onCreate: onCreate, onUpgrade: onUpgrade);

    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'CREATE TABLE MONITOR (id INTEGER PRIMARY KEY, name varchar(100), email varchar(100), password varchar(100), monitor boolean)';
    await db.execute(sql);

    sql =
        "INSERT INTO MONITOR (id, name, email, password, monitor) VALUES (1, 'Antony Gabriel', 'antony@gmail.com', 'asagigante', true);";
    await db.execute(sql);

    sql =
        "INSERT INTO MONITOR (id, name, email, password, monitor) VALUES (2, 'Maria Eduarda', 'eduarda@gmail.com', 'asameuamor', true);";
    await db.execute(sql);
  }

  Future<void> onUpgrade(
      Database database, int oldVersion, int newVersion) async {
    if (oldVersion == 2 && newVersion == 3) {
      // String sql = "CREATE TABLE TURMAS (nome varchar(100), turno varchar(100), curso varchar(100))";
      // await database.execute(sql);
      //
      // sql =
      // "INSERT INTO TURMAS (nome, turno, curso) VALUES ('911', 'matutino', 'Informática -');";
      // await database.execute(sql);
    }
    if (oldVersion == 2 && newVersion == 3) {
      String sql =
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
    }

    if (oldVersion == 3 && newVersion == 4) {
      String sql =
          'CREATE TABLE alunos (id varchar(100) PRIMARY KEY, name varchar(100), email varchar(100), matricula varchar(10), password varchar(100));';
      await database.execute(sql);

      sql =
          "INSERT INTO alunos (id, name, email, matricula, password) VALUES ('gui@gmail.com', 'Guilherme de Jesus', 'gui@gmail.com', '2020123456', '12345678');";
      await database.execute(sql);
    
    }
  }

  Future<void> onUpgrade1(
      Database database, int oldVersion, int newVersion) async {}
}
