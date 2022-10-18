import 'package:app_prmo/pages/perfil_page.dart';
import 'package:flutter/material.dart';

class EditarSenhaPage extends StatefulWidget {
  const EditarSenhaPage({Key? key}) : super(key: key);

  @override
  State<EditarSenhaPage> createState() => _EditarSenhaPageState();
}

class _EditarSenhaPageState extends State<EditarSenhaPage> {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Senha atual"),
                  const SizedBox(height: 10),
                  TextFormField(
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

                  Text("Nova senha"),
                  const SizedBox(height: 10),
                  TextFormField(
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

                  Text("Confirmar nova senha"),
                  const SizedBox(height: 10),
                  TextFormField(
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
                          primary: Color(0xFF6BC07D),
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
                        child:  Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text( "Cancelar",
                            style: const TextStyle(
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
                          primary: Color(0xFF6BC07D),
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
                        child:  Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text( "Salvar",
                            style: const TextStyle(
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




          ],
        ),
      ),



    );
  }
}
