//import 'package:app_prmo/data/turma_dao.dart';
import 'package:app_prmo/domain/turmas.dart';
import 'package:app_prmo/widget/Turma.dart';
import 'package:app_prmo/widget/drawer.dart';
import 'package:flutter/material.dart';
import '../data/BD.dart';
import '../widget/appbar_widget.dart';

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
              appBar: const AppBarWidget(title: 'TURMAS'),
              body: buildListViewBuilder(l),
            );
          }
          return const Center(child: CircularProgressIndicator(color: Color(0xFF6BC07D),));
        },
      ),
    );
  }

  buildListViewBuilder(List<Turmas> list) {
    return Padding(padding: const EdgeInsets.all(16.0),
        child: ListView.builder(itemCount: list.length,
        itemBuilder: (context, index) {
          return CardTurma(turma: list[index]);
        }
      ),
    );
  }
}
