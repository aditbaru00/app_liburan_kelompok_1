import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BromoMap extends StatefulWidget {
  const BromoMap();

  @override
  State<BromoMap> createState() => _BromoMapState();
}

class _BromoMapState extends State<BromoMap> {
  GoogleMapController mapController;
  final LatLng _center = const LatLng(-7.9423185,112.9449415);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Peta Wisata Bromo"),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 15.0,
        ),
      ),
    );
  }
}
