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

  Future<FutureOr<void>> onCreate(Database database, int version) async{
    String sql = 'CREATE TABLE MONITOR (name varchar(100), email varchar(100), password varchar(100), matricula varchar(10))';
    await database.execute(sql);

    sql = "INSERT INTO MONITOR (name, email, password, matricula) VALUES ('Antony Gabriel', 'antony@gmail.com', 'asagigante', '2020123456');";
    await database.execute(sql);

    sql = "INSERT INTO MONITOR (name, email, password, matricula) VALUES ('Maria Eduarda', 'eduarda@gmail.com', 'asameuamor', '1234567890');";
    await database.execute(sql);

     sql = "CREATE TABLE TURMAS (nome varchar(100), turno varchar(100), curso varchar(100))";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('911', 'Matutino', 'Informática -');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('912', 'Matutino', 'Informática - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('913', 'Matutino', 'Informática - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('914', 'Matutino', 'Informática - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('921', 'Vespertino', 'Informática - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('922', 'Vespertino', 'Informática - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('923', 'Vespertino', 'Informática - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('924', 'Vespertino', 'Informática - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('411', 'Matutino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('412', 'Matutino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('413', 'Matutino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('414', 'Matutino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('421', 'Vespertino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('422', 'Vespertino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('423', 'Vespertino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    "INSERT INTO TURMAS (nome, turno, curso) VALUES ('424', 'Vespertino', 'Eletroeletrônica - ');";
    await database.execute(sql);

    sql =
    'CREATE TABLE  ATENDIMENTO ( turma varchar(100), data1 varchar(100), nome varchar(100), atividade varchar(300), matricula varchar(10))';
    await database.execute(sql);
  }
}