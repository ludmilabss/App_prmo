import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../domain/btn_monitor.dart';

class BtnMonitorHome extends StatefulWidget {
  final BtnMonitor btn;
  const BtnMonitorHome({Key? key, required this.btn}) : super(key: key);

  @override
  State<BtnMonitorHome> createState() => _BtnMonitorHomeState();
}

class _BtnMonitorHomeState extends State<BtnMonitorHome> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: const Color(0xFF6BC07D),
          padding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32)
      )),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) {
                    return widget.btn.classe;
                  }));
        },
        child: Column(
          children: [
            Icon(widget.btn.icone, color: Colors.black, size: 100,),
            Text(widget.btn.text,
              style:
              const TextStyle(
                  color: Colors.black,
                  fontSize: 16
              ),)
          ],
        ));
  }
}
