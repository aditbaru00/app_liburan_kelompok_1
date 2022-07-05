import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DanautobaMap extends StatefulWidget {
  const DanautobaMap();

  @override
  State<DanautobaMap> createState() => _DanautobaMapState();
}

class _DanautobaMapState extends State<DanautobaMap> {
  GoogleMapController mapController;
  final LatLng _center = const LatLng(2.6735142,98.6821761);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Peta Wisata Danau Toba"),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 12.0,
        ),
      ),
    );
  }
}
