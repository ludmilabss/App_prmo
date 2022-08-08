import 'package:flutter/material.dart';
import '/pages/cadastro_page.dart';
import '/pages/turmas_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usercontroller = TextEditingController();
  TextEditingController pswdcontroller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        color: const Color(0xFF6BC07D),
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                    Image.network(
                      'https://www2.ifal.edu.br/o-ifal/comunicacao/arquivos/logos/copy_of_IFALvertical.png',
                      height: 145,
                      width: 145,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Center(
                      child: Text(
                        'SUPORTE PARA MONITORIA',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                    const SizedBox(height: 52),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16.0, bottom: 2.0),
                        child: TextFormField(
                          controller: usercontroller,
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return 'Campo de E-mail obrigatório';
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'E-mail',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16.0, bottom: 2.0),
                        child: TextFormField(
                          controller: pswdcontroller,
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return 'Campo de senha obrigatório';
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Senha',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'Esqueci a senha',
                          style: TextStyle(
                            color: Color(0xFFB22222),
                            fontSize: 18,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 36),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32), // <-- Radius
                        ),
                      ),
                      onPressed: onPressed,
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Color(0xFF6BC07D),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        const Text(
                          'Não tem uma conta?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 6),
                        // ElevatedButton(
                        //   style: ElevatedButton.styleFrom(
                        //     primary: const Color(0xFF6BC07D),
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius:
                        //       BorderRadius.circular(32), // <-- Radius
                        //     ),
                        //   ),
                        //   onPressed: onPressed,
                        //   child: const Padding(
                        //     padding: EdgeInsets.all(12.0),
                        //     child: Text(
                        //       'Cadastre-se',
                        //       style: TextStyle(
                        //         color: Colors.white,
                        //         fontSize: 24,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context){
                                      return CadastroPage();
                                    }
                                    )
                            );
                          },
                          child:
                          const Text("Cadastre-se",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onPressed(){
    if(_formKey.currentState!.validate()) {
      String userDigitado = usercontroller.text;
      String pswdDigitado = pswdcontroller.text;

      String user = "asa@gmail.com";
      String senha = "asagigante";

      if (userDigitado == user && senha == pswdDigitado) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const TurmasPage();
            },
          ),
        );

      }else{
        const snack = SnackBar(content: Text('Login Incorreto'));
        ScaffoldMessenger.of(context).showSnackBar(snack);
      }
      }
    }
}
