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
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          "MATÉRIAS",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF6BC07D),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(children: [
                Expanded(
                    child: Column(
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
                ))
              ]),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text("Técnicas em Informática",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6BC07D),
                        decoration: TextDecoration.underline,
                      )),
                  const SizedBox(height: 24),
                  buildMaterias(
                      materia: "PWEB",
                      left: 103.0,
                      right: 103.0,
                      cor: 0xFFFFEBEB),
                  const SizedBox(height: 4),
                  buildMaterias(
                      materia: "PRMO",
                      left: 102.0,
                      right: 102.0,
                      cor: 0xFFFFEBEB),
                  const SizedBox(height: 4),
                  buildMaterias(
                      materia: "ISRE",
                      left: 110.0,
                      right: 110.0,
                      cor: 0xFFFFEBEB),
                  const SizedBox(height: 24),
                  const Text("Ensino Médio",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6BC07D),
                        decoration: TextDecoration.underline,
                      )),
                  const SizedBox(height: 24),
                  buildMaterias(
                      materia: "Biologia",
                      left: 96.0,
                      right: 96.0,
                      cor: 0xFFFFE3B9),
                  const SizedBox(height: 4),
                  buildMaterias(
                      materia: "Química",
                      left: 96.0,
                      right: 96.0,
                      cor: 0xFFFFE3B9),
                  const SizedBox(height: 4),
                  buildMaterias(
                      materia: "Português",
                      left: 86.0,
                      right: 86.0,
                      cor: 0xFFFFE3B9),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildMaterias({
    required String materia,
    required double left,
    required double right,
    required int cor,
  }) {
    return ElevatedButton(
        onPressed: onPressedButn,
        style: ElevatedButton.styleFrom(
          primary: Color(cor),
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
          return const TelaPage();
        },
      ),
    );
  }
}
