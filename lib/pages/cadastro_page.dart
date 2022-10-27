import 'package:app_prmo/controllers/usuario_controller.dart';
import 'package:app_prmo/domain/usuario.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'login_page.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  bool _showPassword = false;
  final _formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController matriculaController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
                    child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            const SizedBox(height: 12),
                            buildContainer(
                                s: "Nome",
                                controller: nameController,
                                obscureField: false),
                            const SizedBox(height: 12),
                            buildContainer(
                                s: "Email Institucional",
                                controller: emailController,
                                obscureField: false),
                            const SizedBox(height: 12),
                            buildContainer(
                                s: "Número de Matrícula",
                                controller: matriculaController,
                                obscureField: false),
                            const SizedBox(height: 12),
                            buildContainer(
                                s: "Senha",
                                controller: passwordController,
                                obscureField: true),
                            const SizedBox(height: 12),
                            buildContainer(
                                s: "Confirmar senha",
                                controller: confirmPasswordController,
                                obscureField: true),
                            const SizedBox(height: 24),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xFF6BC07D),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(32), // <-- Radius
                                ),
                              ),
                              onPressed: onPressedBtn,
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
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildContainer({
    required String s,
    required TextEditingController controller,
    required bool obscureField,
  }) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'O campo ${s} é obrigatório!';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        hintText: s,
        filled: true,
        fillColor: Colors.white,
        suffixIcon: obscureField
            ? GestureDetector(
                child: Icon(
                  _showPassword == false
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: Colors.grey,
                ),
                onTap: () {
                  setState(() {
                    _showPassword = !_showPassword;
                  });
                },
              )
            : null,
      ),
      obscureText: _showPassword == false && obscureField ? true : false,

      /*child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 2.0),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: s,
          ),
          obscureText: obs,
        ),
      ),
      */
    );
  }

  Future<void> onPressedBtn() async {
    if (_formkey.currentState!.validate()) {
      print('CHEGOU AQUI');
      String typedEmail = emailController.text;
      print('typedEmail: ${typedEmail} ');
      String typedPassword = passwordController.text;
      print('typedPassword: ${typedPassword} ');
      String typedName = nameController.text;
      print("typedName: ${typedName} ");
      final typedMatricula = matriculaController.text != ''
          ? int.parse(matriculaController.text)
          : 0;
      print('typedMatricula: ${typedMatricula}');
      Usuario usuario = Usuario(
          id: typedMatricula.toString(),
          email: typedEmail,
          password: typedPassword,
          name: typedName,
          enrolmentCode: typedMatricula,
          isMonitor: false,
          isAdmin: false);

      /*Usuario usuario = Usuario(
          id: '1231234567',
          email: 'iemei',
          password: '12345678',
          name: 'lukas',
          enrolmentCode: 1231234567,
          isMonitor: false,
          isAdmin: false);
        */
      await UsuarioController().criar(usuario: usuario);
      await UsuarioController().pesquisar(id: usuario.id);
      //if (result) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const LoginPage();
          },
        ),
      );
    } else {
      const snack = SnackBar(content: Text('Cadastro incompleto'));
      ScaffoldMessenger.of(context).showSnackBar(snack);
    }
    //  }
    /*
    if(_formkey.currentState!.validate()) {

    }*/
  }
}
