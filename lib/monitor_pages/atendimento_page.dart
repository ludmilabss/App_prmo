import 'package:app_prmo/monitor_pages/home_monitor.dart';
import 'package:app_prmo/pages/turmas_page.dart';
import 'package:app_prmo/widget/drawer.dart';
import 'package:flutter/material.dart';

import '../widget/drawer_m.dart';


class AtendimentoPage extends StatefulWidget {
  const AtendimentoPage({Key? key}) : super(key: key);
  @override
  State<AtendimentoPage> createState() => _AtendimentoPageState();
}

class _AtendimentoPageState extends State<AtendimentoPage> {
  TextEditingController turmaController = TextEditingController();
  TextEditingController matriculaController = TextEditingController();
  TextEditingController nomeController = TextEditingController();
  TextEditingController dataController = TextEditingController();
  TextEditingController atividadeController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget1(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "ATENDIMENTO",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 22),
                buildTurma(
                    turma: '923',
                    turno: "Turno Vespertino"),
                //botão que redireciona para a página 'turmas'

                const SizedBox(height: 20),
                const Text(
                  'FICHA DE ATENDIMENTO',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: turmaController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Turma obrigatório';
                              }

                              return null;
                            },
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              labelText: 'Turma',
                            ),
                          ),

                          const SizedBox(height: 16), //Data
                          TextFormField(
                            controller: matriculaController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Data obrigatória';
                              }

                              return null;
                            },
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              labelText: 'Data',
                            ),
                          ),

                          const SizedBox(height: 16),
                          TextFormField(
                            controller: dataController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Nome obrigatório';
                              }

                              return null;
                            },
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              labelText: 'Nome do Aluno',
                            ),
                          ),

                          const SizedBox(height: 16), //Atividade Realizada
                          TextFormField(
                            controller: nomeController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Atividade obrigatória';
                              }

                              return null;
                            },
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              labelText: 'Atividade Realizada',
                            ),
                          ),

                          const SizedBox(height: 16),
                          TextFormField(
                            controller: atividadeController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              labelText: 'Matrícula',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo matrícula obrigatório';
                              } else if (value.length >= 10 ) {
                                return 'Matrícula deve conter no mínimo 10 digitos';
                              }

                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF6BC07D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22), // <-- Radius
                    ),
                  ),
                  onPressed: onPressed,
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'ENVIAR',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],

            ),


          ),
        ],),
    );
  }


  buildTurma({
    required String turma,
    required String turno,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFFB1DEBA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // <-- Radius
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const TurmasPage();
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            const SizedBox(),
            Text(turno,
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


  void onPressed() {
    if (_formKey.currentState!.validate()) {
      String turmaLogin = "913";
      String matriculaLogin = "2020304050";

      String as = turmaController.text;
      String a = matriculaController.text;

      if (turmaLogin == as && matriculaLogin == a) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomeMonitor();
            },
          ),
        );
      }
    }
  }
}
