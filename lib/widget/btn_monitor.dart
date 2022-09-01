import 'package:app_prmo/domain/btn_monitor.dart';
import 'package:app_prmo/pages/login_page.dart';
import 'package:app_prmo/widget/btn_monitor.dart';
import 'package:app_prmo/widget/drawer_m.dart';
import 'package:flutter/material.dart';
import 'package:app_prmo/data/BD.dart';

class HomeMonitor extends StatefulWidget {
  const HomeMonitor({Key? key}) : super(key: key);

  @override
  State<HomeMonitor> createState() => _HomeMonitorState();
}

class _HomeMonitorState extends State<HomeMonitor> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(0.0),
      child: FutureBuilder<List<BtnMonitor>>(
        future: BD.getBtn(),
          builder: (context, snapshot){
          if(snapshot.hasData){
            List<BtnMonitor> lista = snapshot.data ?? [];
            return Scaffold(
              drawer: const DrawerWidget1(),
              appBar: buildAppBar(),
              body: buildGridView(lista),
            );
          }
          return const Center(child: CircularProgressIndicator(color: Color(0xFF6BC07D),),);
          }
      ),
    );
  }
  buildAppBar(){
    return AppBar(
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
    );
  }
  buildGridView(list){
    return GridView.builder(gridDelegate:
    const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.05
    ),
        itemCount: list.length,
        itemBuilder: (context, index){
        return BtnMonitorHome(btn: list[index]);
        }
    );
  }
}
