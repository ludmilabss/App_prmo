import 'package:flutter/material.dart';
import '../widget/drawer.dart';

class MuralPage extends StatefulWidget {
  const MuralPage({Key? key}) : super(key: key);

  @override
  State<MuralPage> createState() => _MuralPageState();
}

class _MuralPageState extends State<MuralPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
          'MURAL',
          style: TextStyle(fontSize: 24,
            color: Colors.black,
          fontWeight: FontWeight.bold,
          ),
        ),
    ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
              child: Column(
                children: [
                  buildMateria(
                      materia: 'Programação Web',
                      ano: "2022",
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      hintText: 'Compartilhe com a turma...',
                      prefixIcon: const Icon(Icons.person, color: Colors.grey,),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ],

              ),

            ),

    ]
    ),
                      );
  }

    buildMateria({
      required String materia,
      required String ano
    }){return Container(
        decoration: BoxDecoration(
          color: const Color(0xFF6BC07D),
          borderRadius: BorderRadius.circular(16),
        ),
      child: Padding(
          padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 46),
            Text(
              materia,
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Roboto',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(),
            Text(ano,
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
}


