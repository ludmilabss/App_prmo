import 'package:app_prmo/monitor_pages/home_monitor.dart';
import 'package:app_prmo/pages/findus_page.dart';
import 'package:app_prmo/pages/materias_page.dart';
import 'package:app_prmo/pages/mural_page.dart';
import 'package:app_prmo/pages/turmas_page.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TurmasPage(),
  ));
}
