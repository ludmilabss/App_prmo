import 'package:app_prmo/domain/turmas.dart';
import 'package:app_prmo/widget/Turma.dart';
import 'package:app_prmo/widget/drawer.dart';
import 'package:flutter/material.dart';
import '../data/BD.dart';

class TurmasPage extends StatefulWidget {
  const TurmasPage({Key? key}) : super(key: key);
  @override
  State<TurmasPage> createState() => _TurmasPageState();
}

class _TurmasPageState extends State<TurmasPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: FutureBuilder<List<Turmas>>(
        future: BD.getTurmas(),
        builder: (context, snapshot) {

          if(snapshot.hasData){
            List<Turmas> l = snapshot.data ?? [];
            
            return Scaffold(
              drawer: const DrawerWidget(),
              appBar: buildAppbar(),
              body: buildListViewBuilder(l),
            );
          }
          return const Center(child: CircularProgressIndicator(color: Color(0xFF6BC07D),));
        },
      ),
    );
  }

  buildAppbar(){
    return AppBar(
      backgroundColor: Colors.white,
        title: const Text(
          "TURMAS",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
    );
  }
  
  buildListViewBuilder(List<Turmas> list) {
    return Padding(padding: EdgeInsets.all(16.0),
        child: ListView.builder(itemCount: list.length,
        itemBuilder: (context, index) {
          return CardTurma(turma: list[index]);
        }
      ),
    );
  }
}
