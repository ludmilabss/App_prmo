import 'package:app_prmo/domain/turmas.dart';
import 'package:flutter/material.dart';

import '../domain/usuario.dart';
import '../pages/materias_page.dart';

class CardTurma extends StatefulWidget {
  final Turmas turma;
  final Usuario user;
  const CardTurma({Key? key, required this.turma, required this.user}) : super(key: key);

  @override
  State<CardTurma> createState() => _CardTurmaState();
}

class _CardTurmaState extends State<CardTurma> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF6BC07D),
            // backgroundColor: const Color(0xFF6BC07D),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // <-- Radius
            ),
          ),
          onPressed: onPressedButn,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  widget.turma.nome,
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                Text(widget.turma.curso + widget.turma.turno,
                    style: const TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontFamily: 'Roboto',
                      fontSize: 20,
                    ))
              ],
            ),
          ),
        ),
        const SizedBox(height: 18.0),
      ],
    );
  }

  void onPressedButn() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return  MateriasPage(user: widget.user,);
        },
      ),
    );
  }
}
