import 'package:app_prmo/controllers/usuario_controller.dart';
import 'package:app_prmo/domain/usuario.dart';
import 'package:app_prmo/pages/login_page.dart';
import 'package:app_prmo/widget/appbar_widget.dart';
import 'package:flutter/material.dart';
import '../data/monitor_dao.dart';
import '../domain/monitor.dart';
import '../pages/editarsenha_page.dart';
import '../widget/appbar_widget.dart';
import '../widget/drawer_m.dart';



class PerfilMonitor extends StatefulWidget {
  final Usuario lista;
  const PerfilMonitor({Key? key, required this.lista}) : super(key: key);

  @override
  State<PerfilMonitor> createState() => _PerfilMonitorState();
}

class _PerfilMonitorState extends State<PerfilMonitor> {

  //declaração das variaveis
  bool _emailinput = false;
  bool _matricula = false;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController matriculacontroller = TextEditingController();
  late String email = widget.lista.email;
  late int matriculanum = widget.lista.enrolmentCode;
  late Color color = Colors.black12;
  String btn = "Editar Perfil";
  bool button = true;
  bool tap = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    drawer:  DrawerWidget1(user: widget.lista),
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
    Text(
    widget.lista.name,
    textAlign: TextAlign.center,
    style: const TextStyle(
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
    hintText: email,
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
    hintText: matriculanum.toString(),
    filled: true,
    fillColor: Colors.white,
    ),
    enabled: _matricula,
    controller: matriculacontroller,
    ),

    const SizedBox(height: 22),

    InkWell(
    onTap: onTap,
    child:
    Text("Editar Senha",
    style: TextStyle(
    color: color,
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
    onPressed: onPressed,
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
  void onPressed() async {
    if(button){
      setState(() {
        _matricula = !_matricula;
        _emailinput = !_emailinput;
        email = emailcontroller.text;
        matriculanum = int.parse( matriculacontroller.text);
        button = !button;
        if (button == false){
          btn = "Salvar";
          color = Colors.black;
        } else{
          btn = "Editar Perfil";
          color = Colors.black12;
        }
      });
    } else {
      var userEncontrado = await UsuarioController().pesquisarPorEmail(email: email);
      userEncontrado.email = email;
      userEncontrado.enrolmentCode = matriculanum;
      await UsuarioController().atualizar(usuario: userEncontrado, id: userEncontrado.id);
      setState(() {
        _matricula = !_matricula;
        _emailinput = !_emailinput;
        email = emailcontroller.text;
        matriculanum = int.parse(matriculacontroller.text) ;
        button = !button;
        if (button == false){
          btn = "Salvar";
          color = Colors.black;
        } else{
          btn = "Editar Perfil";
          color = Colors.black12;
        }
      });
      var snack = SnackBar(content: const Text('Alteração Concluída!'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),);
      ScaffoldMessenger.of(context).showSnackBar(snack);
    }

  }
  void onTap(){
    if(tap){
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
