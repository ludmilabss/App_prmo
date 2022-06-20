import 'package:flutter/material.dart';
import 'materias_page.dart';

class TurmasPage extends StatefulWidget {
  const TurmasPage({Key? key}) : super(key: key);
  @override
  State<TurmasPage> createState() => _TurmasPageState();
}

class _TurmasPageState extends State<TurmasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "TURMAS",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 22),
              const Text(
                'MONITORIAS DISPONÍVEIS',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 112,
                  turma: 'Turma 911',
                  curso: "Informática - ",
                  turno: "Matutino"),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 95,
                  turma: 'Turma 921',
                  curso: "Informática - ",
                  turno: "Vespertino"),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 80,
                  turma: 'Turma 411',
                  curso: "Eletroeletrônica - ",
                  turno: "Matutino"),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 65,
                  turma: 'Turma 421',
                  curso: "Eletroeletrônica - ",
                  turno: "Vespertino"),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 112,
                  turma: 'Turma 912',
                  curso: "Informática - ",
                  turno: "Matutino"),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 95,
                  turma: 'Turma 922',
                  curso: "Informática - ",
                  turno: "Vespertino"),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 80,
                  turma: 'Turma 412',
                  curso: "Eletroeletrônica - ",
                  turno: "Matutino"),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 65,
                  turma: 'Turma 422',
                  curso: "Eletroeletrônica - ",
                  turno: "Vespertino"),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 112,
                  turma: 'Turma 913',
                  curso: "Informática - ",
                  turno: "Matutino"),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 95,
                  turma: 'Turma 923',
                  curso: "Informática - ",
                  turno: "Vespertino"),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 80,
                  turma: 'Turma 413',
                  curso: "Eletroeletrônica - ",
                  turno: "Matutino"),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 65,
                  turma: 'Turma 423',
                  curso: "Eletroeletrônica - ",
                  turno: "Vespertino"),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 112,
                  turma: 'Turma 914',
                  curso: "Informática - ",
                  turno: "Matutino"),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 95,
                  turma: 'Turma 924',
                  curso: "Informática - ",
                  turno: "Vespertino"),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 80,
                  turma: 'Turma 414',
                  curso: "Eletroeletrônica - ",
                  turno: "Matutino"),
              const SizedBox(height: 18),
              buildTurma(
                  left: 20,
                  right: 65,
                  turma: 'Turma 424',
                  curso: "Eletroeletrônica - ",
                  turno: "Vespertino"),
              const SizedBox(height: 18),
            ],
          ),
        ],
      ),
    );
  }

  buildTurma({
    required double left,
    required double right,
    required String turma,
    required String curso,
    required String turno,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF6BC07D),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // <-- Radius
        ),
      ),
      onPressed: onPressedButn,
      child: Padding(
        padding: EdgeInsets.only(left: left, right: right, top: 20, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              turma,
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Roboto',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Text(curso + turno,
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Roboto',
                  fontSize: 20,
                ))
          ],
        ),
      ),
    );
  }

  void onPressedButn() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const MateriasPage();
        },
      ),
    );
  }
}
