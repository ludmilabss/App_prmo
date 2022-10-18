import 'package:app_prmo/pages/login_page.dart';
import 'package:flutter/material.dart';
import '../pages/editarsenha_page.dart';
import '../widget/drawer_m.dart';
import 'package:image_picker/image_picker.dart';
import 'package:camera_camera/camera_camera.dart';
//import 'package:video_player/video_player.dart';



class PerfilMonitor extends StatefulWidget {
  const PerfilMonitor({Key? key}) : super(key: key);

  @override
  State<PerfilMonitor> createState() => _PerfilMonitorState();
}

class _PerfilMonitorState extends State<PerfilMonitor> {

  //declaração das variaveis
  Color cor = Colors.black12;
  bool _hab = false;
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'PERFIL',
          style: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {Navigator.pushReplacement(context,
                  MaterialPageRoute(
                      builder: (context){
                        return const LoginPage();
                      }
                  )
              );
              },
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ))
        ],
      ),

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
                          onPressed: () {


                          },
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
                    enableFeedback: false,
                    onTap: ontap,
                    child:
                     Text("Editar Senha",
                      style: TextStyle(
                        color: cor,
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
                          _hab = !_hab;
                          cor = Colors.black;
                          if (button == false){
                            btn = "Salvar";
                            cor = Colors.black;
                          } else{
                            btn = "Editar Perfil";
                            cor = Colors.black12;
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

  void ontap(){
    if(_hab){
      Navigator.pushReplacement(context,
          MaterialPageRoute(
              builder: (context){
                return const EditarSenhaPage();
              }
          )
      );
    } else {
      () {};
    }

  }
}
