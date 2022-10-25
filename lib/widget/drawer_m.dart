import 'package:app_prmo/monitor_pages/home_monitor.dart';
import 'package:app_prmo/pages/perfil_page.dart';
import 'package:flutter/material.dart';
import '../domain/monitor.dart';
import '../monitor_pages/atendimento_page.dart';
import '../pages/calendario_page.dart';


class DrawerWidget1 extends StatefulWidget {
  final Monitor monitor;
   const DrawerWidget1({Key? key,required this.monitor}) : super(key: key);

  @override
  State<DrawerWidget1> createState() => _DrawerWidget1State();
}

class _DrawerWidget1State extends State<DrawerWidget1> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        children: [
           UserAccountsDrawerHeader(
            accountName: Text(
              widget.monitor.name,
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Roboto',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail:  Text(widget.monitor.email),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Color(0xFFD9D9D9),
              child: Text(
                'BF',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: const BoxDecoration(color: Color(0xFF6BC07D)),
          ),
          ListTile(
            title: const Text(
              "Home",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: const Icon(Icons.house_outlined),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>  HomeMonitor(monitor: widget.monitor,)));
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              "Perfil",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: const Icon(Icons.person),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const PerfilPage()));
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              "Atendimento",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: const Icon(Icons.group),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>  AtendimentoPage(monitor: widget.monitor,)));
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              "Mural",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: const Icon(Icons.chat_outlined),
            onTap: () {
              // Navigator.of(context).pop();
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (BuildContext context) => const MateriasPage()));
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              "Calendário",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: const Icon(Icons.calendar_month),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => CalendarioPage()));
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              "Frequência",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: const Icon(Icons.assignment_outlined),
            onTap: () {
              // Navigator.of(context).pop();
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (BuildContext context) => CalendarioPage()));
            },
          ),
        ],
      ),
    );
  }
}
