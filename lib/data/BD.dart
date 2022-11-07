import 'package:app_prmo/domain/btn_monitor.dart';
import 'package:app_prmo/monitor_pages/atendimento_page.dart';
import 'package:app_prmo/monitor_pages/perfil_m.dart';
import 'package:app_prmo/pages/calendario_page.dart';
import 'package:app_prmo/pages/mural_page.dart';
import 'package:app_prmo/pages/perfil_page.dart';
import 'package:flutter/material.dart';
import '../domain/turmas.dart';
import '../domain/usuario.dart';

class BD {
  
  Usuario getUser({required Usuario user}){
    return user;
  }
  



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
    Turmas(
        nome: "Turma 421", turno: "Vespertino", curso: "Eletroeletrônica - "),
    Turmas(
        nome: "Turma 422", turno: "Vespertino", curso: "Eletroeletrônica - "),
    Turmas(
        nome: "Turma 423", turno: "Vespertino", curso: "Eletroeletrônica - "),
    Turmas(
        nome: "Turma 424", turno: "Vespertino", curso: "Eletroeletrônica - "),
  ];


  static Future<List<BtnMonitor>> getBtn({required Usuario usuario}) async {
     List<BtnMonitor> btn = [
      BtnMonitor(
          text: "Perfil",
          icone: Icons.person,
          classe:  PerfilMonitor(lista: usuario,)),
      BtnMonitor(
          text: "Calendário",
          icone: Icons.calendar_today_outlined,
          classe: CalendarioPage(user: usuario,)),
      BtnMonitor(
          text: "Frequência",
          icone: Icons.assignment_outlined,
          classe:  PerfilPage(user: usuario,)),
      BtnMonitor(
          text: "Atendimento",
          icone: Icons.group,
          classe:  AtendimentoPage(monitor: usuario)),
      BtnMonitor(
          text: "Mural", icone: Icons.chat_outlined, classe:  MuralPage(user: usuario)),
    ];
    await Future.delayed(const Duration(seconds: 3));
    return btn;
  }

  static Future<List<Turmas>> getTurmas() async {
    await Future.delayed(const Duration(seconds: 3));
    return turma;
  }
}
