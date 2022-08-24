import 'package:app_prmo/pages/perfil.dart';
import 'package:flutter/material.dart';

class HomeMonitor extends StatefulWidget {
  const HomeMonitor({Key? key}) : super(key: key);

  @override
  State<HomeMonitor> createState() => _HomeMonitorState();
}

class _HomeMonitorState extends State<HomeMonitor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app_outlined, color: Colors.black,))
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
            buildItem(text: 'Perfil', icone: Icons.person, classe: PerfilPage() ),
            buildItem(text: 'Calendário', icone: Icons.calendar_today_outlined, classe: PerfilPage()),
            buildItem(text: 'Frequência', icone: Icons.assignment_outlined, classe: PerfilPage()),
            buildItem(text: 'Atendimento', icone: Icons.group, classe: PerfilPage()),
            buildItem(text: 'Mural', icone: Icons.chat_outlined, classe: PerfilPage()),
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
            color: Color(0xFF6BC07D),
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
