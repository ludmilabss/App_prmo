import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,

      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            UserAccountsDrawerHeader(
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
              title: Text(
                "Perfil",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              trailing: Icon(Icons.person),
            ),
            Divider(),
            ListTile(
              title: Text(
                "Matérias",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              trailing: Icon(Icons.folder),
            ),
            Divider(),
            ListTile(
              title: Text(
                "Mural",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              trailing: Icon(Icons.chat_outlined),
            ),
            Divider(),
            ListTile(
              title: Text(
                "Calendário",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              trailing: Icon(Icons.calendar_month),
            ),
          ],
        ),
      ),

      appBar: AppBar(

        backgroundColor: Colors.white,

        // leading: GestureDetector(
        //   onTap: () {},
        //   child: const Icon(
        //     Icons.menu,
        //     color: Colors.black,
        //   ),
        // ),

        title: const Text(
          'PERFIL',
          style: TextStyle(fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.black,
              )
          )
        ],
      ),




      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SizedBox(height: 25),
            Column(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(101)
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.person, size: 160,),
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  'GIANCARLO LÚCIO DO NASCIMENTO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 52),

            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text("Email"),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, bottom: 2.0),
              child: TextFormField(
                decoration:  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'gln1@aluno.ifal.edu.br',
                  filled: true,
                  fillColor: Colors.white,
                ),
                enabled: false,
              ),
            ),
            const SizedBox(height: 40),
             const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text("Número de matrícula"),
             ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, bottom: 2.0),
              child: TextFormField(
                decoration:  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: '20203552',
                  filled: true,
                  fillColor: Colors.white,
                ),
                enabled: false,
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF6BC07D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32), // <-- Radius
                ),
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'EDITAR PERFIL',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
