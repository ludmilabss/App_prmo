import 'dart:async';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../widget/drawer.dart';

class FindUsPage extends StatefulWidget {
  final LatLng latLng;

  const FindUsPage({Key? key, required this.latLng}) : super(key: key);

  @override
  State<FindUsPage> createState() => FindUsPageState();
}

class FindUsPageState extends State<FindUsPage> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  late final CameraPosition _initialPosition = CameraPosition(
    target: widget.latLng,
      zoom: 18,
  );

  static const CameraPosition _finalPosition = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(-9.745243, -36.631392),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

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
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _initialPosition,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_finalPosition));
  }
}