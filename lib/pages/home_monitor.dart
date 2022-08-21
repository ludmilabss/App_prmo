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
        title: const Center(
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
              onPressed: () {},
              icon: const Icon(
                Icons.exit_to_app_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16),
          children: [
            buildItem(text: 'Perfil', icone: Icons.person),
            buildItem(text: 'Calendário', icone: Icons.calendar_today_outlined),
            buildItem(text: 'Frequência', icone: Icons.assignment_outlined),
            buildItem(text: 'Atendimento', icone: Icons.person),
            buildItem(text: 'Mural', icone: Icons.chat_outlined),
          ],
        ),
      ),
    );
  }

  InkWell buildItem({
    required String text,
    required IconData icone,
  }) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const Text('text');
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF6BC07D),
            borderRadius: BorderRadius.circular(32),
          ),
          height: 40,
          width: 100,
          child: Column(
            children: [
              Icon(
                icone,
                size: 100,
              ),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
