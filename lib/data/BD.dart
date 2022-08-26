import '../domain/turmas.dart';


class BD{
  static List<Turmas> turma = [
    Turmas(nome: "Turma 911", turno: "Matutino", curso: "Informática - "),
    Turmas(nome: "Turma 912", turno: "Matutino", curso: "Informática - "),
    Turmas(nome: "Turma 913", turno: "Matutino", curso: "Informática - "),
    Turmas(nome: "Turma 914", turno: "Matutino", curso: "Informática - "),
    Turmas(nome: "Turma 411", turno: "Matutino", curso: "Eletroeletrônica - "),
    Turmas(nome: "Turma 412", turno: "Matutino", curso: "Eletroeletrônica - "),
    Turmas(nome: "Turma 413", turno: "Matutino", curso: "Eletroeletrônica - "),
    Turmas(nome: "Turma 414", turno: "Matutino", curso: "Eletroeletrônica - "),
    Turmas(nome: "Turma 921", turno: "Vespertino", curso: "Informática - "),
    Turmas(nome: "Turma 922", turno: "Vespertino", curso: "Informática - "),
    Turmas(nome: "Turma 923", turno: "Vespertino", curso: "Informática - "),
    Turmas(nome: "Turma 924", turno: "Vespertino", curso: "Informática - "),
    Turmas(nome: "Turma 421", turno: "Vespertino", curso: "Eletroeletrônica - "),
    Turmas(nome: "Turma 422", turno: "Vespertino", curso: "Eletroeletrônica - "),
    Turmas(nome: "Turma 423", turno: "Vespertino", curso: "Eletroeletrônica - "),
    Turmas(nome: "Turma 424", turno: "Vespertino", curso: "Eletroeletrônica - "),
  ];

  static Future <List<Turmas>> getTurmas() async{
    await Future.delayed(const Duration(seconds: 3));
    return turma;
  }
}