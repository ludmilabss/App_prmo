import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs{

  //método usado para recuperar um conjunto de instâncias de uma classe espcífica, como objetos
  getInstance(){
    return SharedPreferences.getInstance();
  }
  //método para verifcar e atribuir true quando o usuário estiver logado
  login() async{
    SharedPreferences sharedP = await getInstance();
    await sharedP.setBool('MONITOR', true);
  }

//método para verifcar e atribuir false quando o usuário estiver deslogado
  logout() async {
    SharedPreferences sharedP = await getInstance();
    await sharedP.setBool('MONITOR', false);
  }

  //método que irá ser executado no futuro quando a verificação do estar logado ou não for feita
  Future<bool> getMonitor() async{
    SharedPreferences sharedP = await getInstance();
    bool? isLog = sharedP.getBool('MONITOR');

    //retornar o operando observando se ele existe e se não for nulo
    return isLog ?? false;

  }

}