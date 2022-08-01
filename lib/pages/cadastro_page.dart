import 'package:flutter/material.dart';
import 'login_page.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        color: const Color(0xFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Image.network(
                    'https://www2.ifal.edu.br/o-ifal/comunicacao/arquivos/logos/copy_of_IFALvertical.png',
                    height: 110,
                    width: 110,
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          const SizedBox(height: 12),
                          buildContainer(s: "Nome"),
                          const SizedBox(height: 16),
                          buildContainer(s: "Email Institucional", obs: false),
                          const SizedBox(height: 16),
                          buildContainer(s: "Número de Matrícula", obs: false),
                          const SizedBox(height: 16),
                          buildContainer(s: "Senha", obs: true),
                          const SizedBox(height: 16),
                          buildContainer(s: "Confirmar senha", obs: true),
                          const SizedBox(height: 24),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF6BC07D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32), // <-- Radius
                              ),
                            ),
                            onPressed: onPressedButn,
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'CADASTRAR',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  buildContainer({
    required String s,
    bool obs = false,
  }){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 16.0, right: 16.0, bottom: 2.0),
        child: TextFormField(
          decoration:  InputDecoration(
            border: InputBorder.none,
            labelText: s,
          ),
          obscureText: obs,
        ),
      ),

    );
  }
  void onPressedButn() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const LoginPage();
        },
      ),
    );
  }
}