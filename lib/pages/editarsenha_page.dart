import 'package:app_prmo/pages/perfil_page.dart';
import 'package:flutter/material.dart';
import '../data/monitor_dao.dart';
import '../domain/monitor.dart';

class EditarSenhaPage extends StatefulWidget {
  // final Monitor monitor;
  const EditarSenhaPage({Key? key}) : super(key: key);

  @override
  State<EditarSenhaPage> createState() => _EditarSenhaPageState();
}

class _EditarSenhaPageState extends State<EditarSenhaPage> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController senhacontroller = TextEditingController();
  TextEditingController confcontroller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'PERFIL',
          style: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),


            //PADDING PRA FAZER OS CAMPOS DE SENHA ATUAL NOVA SENHA E CONFIRMAR NOVA SENHA
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 2.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Text("Senha atual"),
                    // const SizedBox(height: 10),
                    // TextFormField(
                    //
                    //   decoration: InputDecoration(
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(12.0),
                    //       //borderSide: BorderSide.none,
                    //     ),
                    //     filled: true,
                    //     fillColor: Colors.white,
                    //   ),
                    //   obscureText: true,
                    // ),
                    const SizedBox(height: 15),

                    const Text("Nova senha"),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: senhacontroller,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Campo de E-mail obrigatório';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          //borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      obscureText: true,
                    ),

                    const SizedBox(height: 15),

                    const Text("Confirmar nova senha"),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: confcontroller,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Campo de E-mail obrigatório';
                        }else if(confcontroller.text != senhacontroller.text){
                          return 'Confirmação Inválida. Digite novamente.';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          //borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      obscureText: true,
                    ),

                    const SizedBox(height: 25),

                    Row(
                      children: [

                        const SizedBox(width: 8),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF6BC07D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32), // <-- Radius
                            ),
                          ),
                          onPressed: onPressed,
                          child:  const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text( "Cancelar",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),


                        const SizedBox(width: 92),


                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF6BC07D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32), // <-- Radius
                            ),
                          ),
                          onPressed: () {Navigator.pushReplacement(context,
                              MaterialPageRoute(
                                  builder: (context){
                                    return const PerfilPage();
                                  }
                              )
                          );
                          },
                          child:  const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text( "Salvar",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> onPressed() async {
    if(_formKey.currentState!.validate()) {
      String senha1 = senhacontroller.text;
     // await MonitorDao().AtualizarSenha(novopassword: senha1, email: widget.monitor.email, password: widget.monitor.password);
     Navigator.pop(context);

       var snack = SnackBar(content: const Text('Alteração Concluída!'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),);
      ScaffoldMessenger.of(context).showSnackBar(snack);
      } else{
      var snack = SnackBar(content: const Text('Alteração Inválida!'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),);
      ScaffoldMessenger.of(context).showSnackBar(snack);
      }
    }
  }


