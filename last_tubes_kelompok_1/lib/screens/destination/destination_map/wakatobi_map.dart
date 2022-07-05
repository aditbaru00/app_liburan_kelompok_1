import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class WakatobiMap extends StatefulWidget {
  const WakatobiMap();

  @override
  State<WakatobiMap> createState() => _WakatobiMapState();
}

class _WakatobiMapState extends State<WakatobiMap> {
  GoogleMapController mapController;
  final LatLng _center = const LatLng(-5.5306582,123.8405488);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Peta Wisata Wakatobi"),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),
    );
  }
}
