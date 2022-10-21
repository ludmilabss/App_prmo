import 'package:app_prmo/widget/drawer.dart';
import 'package:flutter/material.dart';


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
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
              
              child: Column(
                children: [
                  buildMural(
                    nome: 'Fulano da Silva Santos',
                    data: "30 de jul.",
                    texto: "Boa tarde, pessoal, passando para avisar que hoje não teremos aula devido às fortes chuvas, abraço!"
                  ),
                  TextFormField(
                    decoration:  const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                      ),
                      hintText: 'Adicionar comentário...',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ],

              ),


            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 8, right: 8),

              child: Column(
                children: [
                  buildMural(
                      nome: 'Ciclano Araujo',
                      data: "01 de ago.",
                      texto: "Galera, alguém poderia me informar se haverá monitoria amanhã?"
                  ),
                  TextFormField(
                    decoration:  const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                      ),
                      hintText: '3 comentários',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ],

              ),


            ),

            Padding(
              padding: const EdgeInsets.only(top: 16, left: 8, right: 8),

              child: Column(
                children: [
                  buildMural(
                      nome: 'Beltrano Ferreira',
                      data: "08:43",
                      texto: "Faltarei amanhã"
                  ),
                  TextFormField(
                    decoration:  const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                      ),
                      hintText: '8 comentários',
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
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(),
          Text(ano,
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Roboto',
                fontSize: 24,
              ))
        ],
      ),
    ),
  );
  }

  buildMural({
    required String nome,
    required String data,
    required String texto
  }){return Container(
    decoration: BoxDecoration(
        border: Border.all(
      color: Colors.black,
      style: BorderStyle.solid,
    ),
      color: const Color(0xFFFFFFFF),
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 8),
          Text(
            nome,
            style: const TextStyle(
              color: Color(0xFF000000),
              fontFamily: 'Roboto',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(),
          Text(data,
              style: const TextStyle(
                color: Color(0xFF000000),
                fontFamily: 'Roboto',
                fontSize: 20,
              )),
          const SizedBox(height: 18),
          Text(texto,
              style: const TextStyle(
                color: Color(0xFF000000),
                fontFamily: 'Roboto',
                fontSize: 18,
              ))


        ],
      ),
    ),
  );
  }


}


