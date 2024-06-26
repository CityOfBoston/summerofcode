import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class Permissions {

  Future<void> checkPermissions(Permission permission, BuildContext context) async {
    final status = await permission.status;
    if (status.isDenied || status.isPermanentlyDenied) {
      final result = await permission.request();
      if (!result.isGranted) {
        // Handle the case when the permission is not granted
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Permission Required'),
              content: Text('This app requires access to ${permission.toString().split('.')[1]} to function properly.'),
              actions: <Widget>[
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: const Text('Open Settings'),
                  onPressed: () {
                    openAppSettings();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }
  }




  Future<bool> handleLocationPermission(BuildContext context) async {
    var status = await Permission.location.status;
    if (status.isGranted) {
      return true;
    } else if (status.isDenied) {
      if (await Permission.location.request().isGranted) {
        return true;
      } else if (await Permission.location.request().isPermanentlyDenied) {
        // The user has previously denied the permission and selected "Never ask again"
        openAppSettings();
        return false;
      }
      return false;
    } else {
      // If the status is not determined, request the permission
      return await Permission.location.request().isGranted;
    }
  }


}
