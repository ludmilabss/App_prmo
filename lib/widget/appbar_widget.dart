import 'package:app_prmo/pages/login_page.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget{

  final String title;
  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(55);

}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(onPressed: (){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const LoginPage();
              },
            ),
          );
        }, icon: const Icon(Icons.exit_to_app),),
      ],

      backgroundColor: Colors.white,
      title:  Text(
        widget.title,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
