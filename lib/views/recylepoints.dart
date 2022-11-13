import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

LatLng currentLocation = const LatLng(30.2753, 77.0476);

class RecylePoints extends StatefulWidget {
  const RecylePoints({Key? key}) : super(key: key);

  @override
  State<RecylePoints> createState() => _RecylePointsState();
}

class _RecylePointsState extends State<RecylePoints> {
  late GoogleMapController mapController;
  Map<String, Marker> _markers = {};

  addMarker(String id, LatLng location) {
    var marker = Marker(
        markerId: MarkerId(id),
        position: location,
        infoWindow: const InfoWindow(
            title: 'Recycle Point',
            snippet: 'Description about Recycle Point'));
    _markers[id] = marker;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: currentLocation, zoom: 14),
        onMapCreated: ((controller) {
          mapController = controller;
          addMarker('First Marker', currentLocation);
        }),
        markers: _markers.values.toSet(),
      ),
    );
  }
}
