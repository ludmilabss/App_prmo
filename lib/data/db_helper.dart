import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacote2.db");
    // deleteDatabase(path);
    Database database =
        await openDatabase(path, version: 1, onCreate: onCreate);

    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        "CREATE TABLE usuarios (id varchar(100), email varchar(100), password varchar(100), name varchar(100), enrolmentCode varchar(100), isMonitor INTEGER, isAdmin INTEGER );";
    await db.execute(sql);

    sql =
        "CREATE TABLE TURMAS (nome varchar(100), turno varchar(100), curso varchar(100));";
    await db.execute(sql);

    String adminInsert =
        "INSERT INTO usuarios (id, email, password, name, enrolmentCode, isMonitor, isAdmin) VALUES ('1', 'admin@ifal.com', '12345678', 'ana', '0000000001', 1, 1);";
    await db.execute(adminInsert);

    String monitorInsert =
        "INSERT INTO usuarios (id, email, password, name, enrolmentCode, isMonitor, isAdmin) VALUES ('2', 'monitor@ifal.com', '12345678', 'maria', '0000000002', 1, 0);";
    await db.execute(monitorInsert);

    String alunoInsert =
        "INSERT INTO usuarios (id, email, password, name, enrolmentCode, isMonitor, isAdmin) VALUES ('3', 'aluno@ifal.com', '12345678', 'joao', '0000000003', 0, 0);";
    await db.execute(alunoInsert);

    sql =
        "INSERT INTO TURMAS (nome, turno, curso) VALUES ('912', 'matutino', 'Informática - ');";
    await db.execute(sql);

    sql =
        "INSERT INTO TURMAS (nome, turno, curso) VALUES ('913', 'matutino', 'Informática - ');";
    await db.execute(sql);

    sql =
        "INSERT INTO TURMAS (nome, turno, curso) VALUES ('914', 'matutino', 'Informática - ');";
    await db.execute(sql);

    sql =
        "INSERT INTO TURMAS (nome, turno, curso) VALUES ('921', 'vespertino', 'Informática - ');";
    await db.execute(sql);

    sql =
        "INSERT INTO TURMAS (nome, turno, curso) VALUES ('922', 'vespertino', 'Informática - ');";
    await db.execute(sql);

    sql =
        "INSERT INTO TURMAS (nome, turno, curso) VALUES ('923', 'vespertino', 'Informática - ');";
    await db.execute(sql);

    sql =
        "INSERT INTO TURMAS (nome, turno, curso) VALUES ('924', 'vespertino', 'Informática - ');";
    await db.execute(sql);

    sql =
        "INSERT INTO TURMAS (nome, turno, curso) VALUES ('411', 'matutino', 'Eletroeletrônica - ');";
    await db.execute(sql);

    sql =
        "INSERT INTO TURMAS (nome, turno, curso) VALUES ('412', 'matutino', 'Eletroeletrônica - ');";
    await db.execute(sql);

    sql =
        "INSERT INTO TURMAS (nome, turno, curso) VALUES ('413', 'matutino', 'Eletroeletrônica - ');";
    await db.execute(sql);

    sql =
        "INSERT INTO TURMAS (nome, turno, curso) VALUES ('414', 'matutino', 'Eletroeletrônica - ');";
    await db.execute(sql);

    sql =
        "INSERT INTO TURMAS (nome, turno, curso) VALUES ('421', 'vespertino', 'Eletroeletrônica - ');";
    await db.execute(sql);

    sql =
        "INSERT INTO TURMAS (nome, turno, curso) VALUES ('422', 'vespertino', 'Eletroeletrônica - ');";
    await db.execute(sql);

    sql =
        "INSERT INTO TURMAS (nome, turno, curso) VALUES ('423', 'vespertino', 'Eletroeletrônica - ');";
    await db.execute(sql);

    sql =
        "INSERT INTO TURMAS (nome, turno, curso) VALUES ('424', 'vespertino', 'Eletroeletrônica - ');";
    await db.execute(sql);
  }

  Future<void> onUpgrade(
      Database database, int oldVersion, int newVersion) async {
    if (oldVersion == 1 && newVersion == 2) {}
  }

  Future<void> onUpgrade1(
      Database database, int oldVersion, int newVersion) async {}
}
