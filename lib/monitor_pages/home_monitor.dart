import 'package:app_prmo/domain/btn_monitor.dart';
import 'package:app_prmo/domain/usuario.dart';
import 'package:app_prmo/widget/appbar_widget.dart';
import 'package:app_prmo/widget/btn_monitor.dart';
import 'package:app_prmo/widget/drawer_m.dart';
import 'package:flutter/material.dart';
import 'package:app_prmo/data/BD.dart';

class HomeMonitor extends StatefulWidget {
  final Usuario user;
  const HomeMonitor({Key? key, required this.user}) : super(key: key);

  @override
  State<HomeMonitor> createState() => _HomeMonitorState();
}

class _HomeMonitorState extends State<HomeMonitor> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(0.0),
      child: FutureBuilder<List<BtnMonitor>>(
        future: BD.getBtn(usuario: widget.user),
          builder: (context, snapshot){
          if(snapshot.hasData){
            List<BtnMonitor> lista = snapshot.data ?? [];
            return Scaffold(
              drawer:  DrawerWidget1(user: widget.user,),
              appBar: buildAppBar(),
              body: Padding(
                padding: const EdgeInsets.all(16),
                  child: buildGridView(lista),),
            );
          }
          return const Center(
            child: CircularProgressIndicator(color: Color(0xFF6BC07D),
            ),
            );
          }
      ),
    );
  }
  buildAppBar(){
    return const AppBarWidget(title: 'MONITOR');
  }
  buildGridView(list){
    return GridView.builder(gridDelegate:
    const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.0
    ),
        itemCount: list.length,
        itemBuilder: (context, index){
        return BtnMonitorHome(btn: list[index]);
        }
    );
  }
}
