import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import '../widget/drawer.dart';

class FindUsPage extends StatefulWidget {
  final LatLng latLng;
  const FindUsPage({Key? key, required this.latLng}) : super(key: key);

  @override
  State<FindUsPage> createState() => FindUsPageState();
}

class FindUsPageState extends State<FindUsPage> {
  // na linha abaixo estamos inicializando nosso controller para google maps.
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  late final CameraPosition _initialPosition = CameraPosition(
    target: widget.latLng,
      zoom: 18,
  );

  // na linha abaixo estamos especificando a posição da nossa câmera
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'ENCONTRE-NOS',
          style: TextStyle(fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      //A visualização do mapa pode ser controlada com o GoogleMapController que é passado para o GoogleMapretorno de chamada do onMapCreated
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _initialPosition,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}