import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sanpresolve/features/validation/permissions.dart';

class LocationWidget extends StatefulWidget{
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidget();
  
}

class _LocationWidget extends State<LocationWidget>{
    String? _currentAddress;
  Position? _currentPosition;

Future<void> _getCurrentPosition() async {
  // ignore: non_constant_identifier_names
  Permissions AskUserLocationPermission=Permissions();
  final hasPermission = await AskUserLocationPermission.handleLocationPermission(context);
  if (!hasPermission) return;

  await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high)
      .then((Position position) {
        
    setState(() {
      _currentPosition=position;
      if(position!=null)
      _getAddressFromLatLng(_currentPosition!);

    });

  }).catchError((e) {
    debugPrint(e);
  });
}

Future<void> _getAddressFromLatLng(Position position) async {
  await placemarkFromCoordinates(
          _currentPosition!.latitude, _currentPosition!.longitude)
      .then((List<Placemark> placemarks) {
    Placemark place = placemarks[0];
  setState(() {
      print("working");
        _currentAddress =
            '${place.street}, ${place.subLocality}, ${place.subAdministrativeArea}, ${place.postalCode}';
                print(_currentAddress);
      });
  }).catchError((e) {
    debugPrint(e);
  });
 }


  @override
  Widget build(BuildContext context) {
    
    return Container(
                        margin: const EdgeInsets.all(30),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: const Text(
                                  "Location",
                                  style: TextStyle(fontSize: 20),
                                )),
                            TextButton(
                              onPressed:  _getCurrentPosition ,
                              
                              child:Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                height: 55,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: Colors.lime,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                ),
                                child: Text(
                                  _currentAddress==null?"Click to find the current location":_currentAddress!,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),),
                          ],
                        ),
     );  
  }

}