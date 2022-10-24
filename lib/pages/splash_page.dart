import 'package:app_prmo/monitor_pages/home_monitor.dart';
import 'package:app_prmo/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();
    loading();
  }

  loading() async{
    await Future.delayed(
        const Duration(seconds: 3),
    );

    bool isLog = await SharedPrefs().getMonitor();
    if (isLog == true){
      //redirecionar a tela para a home específica do usuário, neste caso, a home do monitor
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context){
            return const HomeMonitor();
            },
        ),
      );
    }else{
      //caso a atribuição do isLog for false, indicando que o usuário não está mais lgo, direciona para a tela de Login
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context){
                return const LoginPage();
              },
          ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF6BC07D),
      body:  Center(
        child: Image(
      image: AssetImage('images/splash.png'),
          width: 270,
          height: 270,
        ),
      )
    );
  }
}
