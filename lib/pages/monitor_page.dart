import 'package:flutter/material.dart';

class TelaPage extends StatefulWidget {
  const TelaPage({Key? key}) : super(key: key);

  @override
  State<TelaPage> createState() => _TelaPageState();
}

class _TelaPageState extends State<TelaPage> {
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
          'PROGRAMAÇÃO WEB',
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
            Column(
              children: [
                const Text("MONITORES",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                const SizedBox(height: 16),
                buildMonitor(
                    nome: 'GIANCARLO LÚCIO DO NASCIMENTO',
                    email: 'gln1@aluno.ifal.edu.br',
                    url: 'https://cdn-icons-png.flaticon.com/512/74/74472.png'),
                const SizedBox(height: 16),
                buildMonitor(
                    nome: 'MARIA EDUARDA BARBOSA DE LIMA',
                    email: 'mebl2@aluno.ifal.edu.br',
                    url: 'https://cdn-icons-png.flaticon.com/512/74/74472.png'),
                const SizedBox(height: 20),
                Column(
                  children: const [
                    Text(
                      "CRONOGRAMA DE MONITORIA",
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    SizedBox(height: 20),
                    Placeholder(
                      fallbackHeight: 250,
                      fallbackWidth: 100,
                      color: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                buildLocal(
                    data: 'Hoje, 23/06',
                    sala: 'LABORATÓRIO 91 - DESENVOLVIMENTO DE SOFTWARE',
                    horario: '14:00 - 16:00'),
                const SizedBox(height: 16),
                buildLocal(
                    data: 'Amanhã, 24/06',
                    sala: 'LABORATÓRIO 90 - DESENVOLVIMENTO DE SOFTWARE',
                    horario: '14:00 - 17:00'),
                const SizedBox(height: 20),
              ],
            ),
          ], //Children
        ),
      ),
    );
  }

  buildMonitor({
    required String nome,
    required String email,
    required String url,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF6BC07D),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(nome,
                style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            const SizedBox(height: 10),
            Text(
              email,
              style: const TextStyle(
                  fontFamily: 'Roboto', fontSize: 17, color: Colors.white),
            )
          ],
        )),
        Row(
          children: [
            Image.network(
              url,
              height: 100,
              width: 100,
            ),
          ],
        ),
      ]),
    );
  }

  buildLocal({
    required String data,
    required String sala,
    required String horario,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFB1DEBA),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(data,
                style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            const SizedBox(height: 15),
            Text(
              sala,
              style: const TextStyle(
                  fontFamily: 'Roboto', fontSize: 18, color: Colors.black),
            ),
            const SizedBox(height: 15),
            Text(
              horario,
              style: const TextStyle(
                  fontFamily: 'Roboto', fontSize: 18, color: Colors.black),
            ),
          ],
        )),
      ]),
    );
  }
}
