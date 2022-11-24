import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:swachh/constants.dart';
import 'package:swachh/controllers/locationcontroller.dart';

final locationController = Get.put(LocationController());

LatLng currentLocation = LatLng(
    locationController.latitude.value, locationController.longitude.value);

RxBool isCurrentLocationFected = false.obs;

class RecylePoints extends StatefulWidget {
  const RecylePoints({Key? key}) : super(key: key);

  @override
  State<RecylePoints> createState() => _RecylePointsState();
}

class _RecylePointsState extends State<RecylePoints> {
  late GoogleMapController mapController;
  Map<String, Marker> _markers = {};

  final locationController = Get.put(LocationController());

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
  void initState() {
    super.initState();
    locationController.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => isCurrentLocationFected.value == true
          ? GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: currentLocation, zoom: 14),
              onMapCreated: ((controller) {
                mapController = controller;
                addMarker('First Marker', currentLocation);
              }),
              markers: _markers.values.toSet(),
            )
          : Center(
              child: CircularProgressIndicator(
                color: Constants().primaryColor,
              ),
            )),
    );
  }
}
