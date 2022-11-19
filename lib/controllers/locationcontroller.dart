import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:swachh/views/recylepoints.dart';

class LocationController extends GetxController {
  Future<bool> getLocationPermission() async {
    LocationPermission permission;

    bool locationServiceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!locationServiceEnabled) {
      Get.snackbar('Opps!', 'Please turn on location service',
          icon: const Icon(
            Icons.dangerous_outlined,
            color: Colors.red,
            size: 30,
          ),
          snackPosition: SnackPosition.BOTTOM);
      return false;
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Get.snackbar('Opps!',
            'You will need to allow location permission to use this feature',
            icon: const Icon(
              Icons.dangerous_outlined,
              color: Colors.red,
              size: 30,
            ),
            snackPosition: SnackPosition.BOTTOM);
        return false;
      }
    } else if (permission == LocationPermission.deniedForever) {
      Get.snackbar('Opps!',
          'Go to settings and provide location permission to this app.',
          icon: const Icon(
            Icons.dangerous_outlined,
            color: Colors.red,
            size: 30,
          ),
          snackPosition: SnackPosition.BOTTOM);
      return false;
    }
    return true;
  }

  // Future<void> getCurrentPosition() async {
  //   final isPermisionGranted = await getLocationPermission();
  //   if (!isPermisionGranted) {
  //     return;
  //   }

  //   Position currentPosition = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high);
  // }
}
