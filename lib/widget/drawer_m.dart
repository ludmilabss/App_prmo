import 'package:app_prmo/monitor_pages/home_monitor.dart';
import 'package:app_prmo/monitor_pages/perfil_m.dart';
import 'package:app_prmo/pages/perfil_page.dart';
import 'package:flutter/material.dart';
import '../monitor_pages/atendimento_page.dart';
import '../pages/calendario_page.dart';
import '../pages/findus_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DrawerWidget1 extends StatefulWidget {
  const DrawerWidget1({Key? key}) : super(key: key);

  @override
  State<DrawerWidget1> createState() => _DrawerWidget1State();
}

class _DrawerWidget1State extends State<DrawerWidget1> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              'Beltrano Ferreira',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Roboto',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text('bf1@aluno.ifal.edu.br'),
            currentAccountPicture: CircleAvatar(
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
            decoration: BoxDecoration(color: Color(0xFF6BC07D)),
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
                  builder: (BuildContext context) => const HomeMonitor()));
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
                  builder: (BuildContext context) => const PerfilMonitor()));
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
                  builder: (BuildContext context) => const AtendimentoPage()));
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
          const Divider(),
          ListTile(
            title: const Text(
              "Encontre-nos",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: const Icon(Icons.location_on),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>   const FindUsPage())
              );
            },
          ),
        ],
      ),
    );
  }
}
