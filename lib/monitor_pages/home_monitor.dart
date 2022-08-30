import 'package:app_prmo/monitor_pages/perfil_m.dart';
import 'package:app_prmo/pages/calendario_page.dart';
import 'package:app_prmo/pages/login_page.dart';
import 'package:app_prmo/widget/drawer_m.dart';
import 'package:flutter/material.dart';
import 'atendimento_page.dart';
import '../pages/perfil_page.dart';

class HomeMonitor extends StatefulWidget {
  const HomeMonitor({Key? key}) : super(key: key);

  @override
  State<HomeMonitor> createState() => _HomeMonitorState();
}

class _HomeMonitorState extends State<HomeMonitor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget1(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
          const Center(
            child: Text(
              "MONITOR",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(
                        builder: (context){
                          return const LoginPage();
                        }
                        )
                );
              },
              icon:
              const Icon(Icons.exit_to_app_outlined, color: Colors.black,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16
          ),

          children: [
            buildItem(text: 'Perfil', icone: Icons.person, classe: const PerfilMonitor() ),
            buildItem(text: 'Calendário', icone: Icons.calendar_today_outlined, classe:  CalendarioPage()),
            buildItem(text: 'Frequência', icone: Icons.assignment_outlined, classe: const PerfilPage()),
            buildItem(text: 'Atendimento', icone: Icons.group, classe: const AtendimentoPage()),
            buildItem(text: 'Mural', icone: Icons.chat_outlined, classe: const PerfilPage()),
          ],
        ),
      ),
    );
  }

  InkWell buildItem({
  required String text,
  required IconData icone,
    required Widget classe,
}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return classe;
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0, top: 12.0),
        child: Container(
          decoration:  BoxDecoration(
            color: const Color(0xFF6BC07D),
            borderRadius: BorderRadius.circular(32),
          ),
          height: 40,
          width: 100,
          child: Column(
            children:  [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(icone, size: 90,),
              ),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
