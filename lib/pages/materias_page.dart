import 'package:app_prmo/pages/mural_page.dart';
import 'package:app_prmo/widget/appbar_widget.dart';
import 'package:app_prmo/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'monitor_page.dart';

class MateriasPage extends StatefulWidget {
  const MateriasPage({Key? key}) : super(key: key);

  @override
  State<MateriasPage> createState() => _MateriasPageState();
}

class _MateriasPageState extends State<MateriasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: const AppBarWidget(title: 'MATÉRIAS'),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF6BC07D),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                      Text("TURMA 913 - Matérias com monitoria disponível",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(height: 4),
                      Text(
                        "Informática - Matutino",
                          style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 19,
                          color: Colors.white),
                    )
                  ],
                )
              ),
            const SizedBox(height: 24),
            Padding  (
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Center(
                    child: Text("Técnicas em Informática",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF6BC07D),
                          decoration: TextDecoration.underline,
                        )),
                  ),
                  const SizedBox(height: 24),
                  buildMaterias(
                      materia: "Programação Web",
                      cor: 0xFFFFEBEB),
                  const SizedBox(height: 4),
                  buildMaterias(
                      materia: "Programação Móvel",
                      cor: 0xFFFFEBEB),
                  const SizedBox(height: 4),
                  buildMaterias(
                      materia: "ISRE",
                      cor: 0xFFFFEBEB),
                  const SizedBox(height: 24),
                  const Center(
                    child: Text("Ensino Médio",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF6BC07D),
                          decoration: TextDecoration.underline,
                        )),
                  ),
                  const SizedBox(height: 24),
                  buildMaterias(
                      materia: "Biologia",
                      cor: 0xFFFFE3B9),
                  const SizedBox(height: 4),
                  buildMaterias(
                      materia: "Química",
                      cor: 0xFFFFE3B9),
                  const SizedBox(height: 4),
                  buildMaterias(
                      materia: "Português",
                      cor: 0xFFFFE3B9),
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }

  buildMaterias({
    required String materia,
    required int cor,
  }) {
    return ElevatedButton(
        onPressed: onPressedButn,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(cor),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
        child: Text(
          materia,
          style: const TextStyle(
            fontFamily: 'Roboto',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ));
  }

  void onPressedButn() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const MuralPage();
        },
      ),
    );
  }
}
