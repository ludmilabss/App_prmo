import 'package:app_prmo/pages/calendario_page.dart';
import 'package:app_prmo/pages/materias_page.dart';
import 'package:app_prmo/pages/mural_page.dart';
import 'package:app_prmo/pages/perfil_page.dart';
import 'package:flutter/material.dart';

import '../domain/usuario.dart';

class DrawerWidget extends StatefulWidget {
  final Usuario user;
  const DrawerWidget({Key? key, required this.user}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        children: [
           UserAccountsDrawerHeader(
            accountName: Text(
              widget.user.name,
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
                  builder: (BuildContext context) =>  PerfilPage(user: widget.user,)));
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              "Matérias",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: const Icon(Icons.folder),
            onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) =>  MateriasPage(user: widget.user,)));
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
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>  MuralPage(user: widget.user,)));
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
                  builder: (BuildContext context) =>  CalendarioPage(user: widget.user,)));
            },
          ),
        ],
      ),
    );
  }
}
