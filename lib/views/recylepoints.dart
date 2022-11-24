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
  final constants = Get.put(Constants());

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
        body: Stack(
      children: [
        Positioned.fill(
          child: Obx(() => isCurrentLocationFected.value == true
              ? GoogleMap(
                  initialCameraPosition:
                      CameraPosition(target: currentLocation, zoom: 14),
                  onMapCreated: ((controller) {
                    setState(() {
                      mapController = controller;
                      addMarker('First Marker', currentLocation);
                    });
                  }),
                  markers: _markers.values.toSet(),
                )
              : Center(
                  child: CircularProgressIndicator(
                    color: Constants().primaryColor,
                  ),
                )),
        ),
        Positioned(
            top: 70,
            child: Padding(
              padding: EdgeInsets.only(left: Get.width / 18),
              child: Container(
                width: Get.width / 1.13,
                height: Get.height / 13.5,
                decoration: BoxDecoration(
                    color: constants.backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: Get.width / 20),
                      child: Text(
                        'Search Your Location',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: Get.width / 40),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey.shade500,
                          )),
                    )
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}
