import 'package:app_prmo/pages/login_page.dart';
import 'package:flutter/material.dart';
import '../pages/editarsenha_page.dart';
import '../widget/appbar_widget.dart';
import '../widget/drawer_m.dart';



class PerfilMonitor extends StatefulWidget {
  const PerfilMonitor({Key? key}) : super(key: key);

  @override
  State<PerfilMonitor> createState() => _PerfilMonitorState();
}

class _PerfilMonitorState extends State<PerfilMonitor> {

  //declaração das variaveis
  bool _emailinput = false;
  bool _matricula = false;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController matriculacontroller = TextEditingController();
  var _email = "gln1@aluno.ifal.edu.br";
  var _matriculanum = "2020123456";
  String btn = "Editar Perfil";
  bool button = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const DrawerWidget1(),
      appBar: const AppBarWidget(title: 'PERFIL'),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),

            //COLUMN PRA FAZER A FOTO DE PERFIL E O NOME
            Column(
              //mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(101)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.person, size: 160),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: const Color(0xFFC8E5CE),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add,
                            color: Colors.black,),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'GIANCARLO LÚCIO DO NASCIMENTO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(height: 25),

            //PADDING PRA FAZER OS CAMPOS DE EMAIL MATRICULA E EDITAR SENHA
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Email"),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        //borderSide: BorderSide.none,
                      ),
                      hintText: _email,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    enabled: _emailinput,
                    controller: emailcontroller,
                  ),

                  const SizedBox(height: 15),

                  const Text("Número de matrícula"),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        //borderSide: BorderSide.none,
                      ),
                      hintText: _matriculanum,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    enabled: _matricula,
                    controller: matriculacontroller,
                  ),

                  const SizedBox(height: 22),

                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(
                              builder: (context){
                                return const EditarSenhaPage();
                              }
                          )
                      );
                    },
                    child:
                    const Text("Editar Senha",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    //enableFeedback: false,
                  ),

                  const SizedBox(height: 30),

                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF6BC07D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32), // <-- Radius
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _matricula = !_matricula;
                          _emailinput = !_emailinput;
                          _email = emailcontroller.text;
                          _matriculanum = matriculacontroller.text;
                          button = !button;
                          if (button == false){
                            btn = "Salvar";
                          } else{
                            btn = "Editar Perfil";
                          }
                        });
                      },
                      child:  Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text( btn,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}
