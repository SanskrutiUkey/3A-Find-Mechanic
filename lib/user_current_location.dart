import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

const LatLng currentLocation = LatLng(21.1258, 79.0882);

class UserLocation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return UserLocationScreen();
  }

}

class UserLocationScreen extends State<StatefulWidget>{
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng sourceLocation = LatLng(21.1440142, 79.0835614);
  static const LatLng destLocation = LatLng(21.134201, 79.125217);

  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;

  void getCurrentLocation() async{
    Location location = Location();

    // location.getLocation().then((location){
    //   currentLocation = location;
    // });
    // GoogleMapController googleMapController = await _controller.future;
    // location.onLocationChanged.listen((newLoc) {
    //   currentLocation = newLoc;
    //
    //   googleMapController.animateCamera(
    //     CameraUpdate.newCameraPosition(
    //       CameraPosition(
    //         zoom: 13.5, target: LatLng(newLoc!.latitude!, newLoc!.longitude!)),),);
    //       setState(() {
    //
    //       });
    // });
  }

  void getPolyPoints() async{
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        "AIzaSyDcvIWuU-BlqFqsxV1BlFOREsaLs-3_NfE",
        PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
        PointLatLng(destLocation.latitude, destLocation.longitude)
    );

    if(result.points.isNotEmpty){
      // print("XYZ");
      result.points.forEach((PointLatLng point) =>polylineCoordinates.add(LatLng(
          point.latitude, point.longitude)) );
      setState(() {

      });
    }
  }
  @override
  void initState() {
    // getCurrentLocation();
    getPolyPoints();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      // currentLocation == null ? const Center(child: Text("Loading")):
       GoogleMap(
        initialCameraPosition: CameraPosition(
          // target: LatLng(currentLocation!.latitude!, currentLocation!.longitude!),\
          target: sourceLocation,
          zoom: 14,
        ),
        polylines:{
          Polyline(
            polylineId: PolylineId("route"),
            points: polylineCoordinates,
            color: Colors.lightBlue,
            width: 6
          )
        },
        markers: {
          Marker(
            markerId: const MarkerId("currentLocation"),
            position: LatLng(currentLocation!.latitude!, currentLocation!.longitude!),
          ),
          const Marker(
            markerId: MarkerId("source"),
            position: sourceLocation,
          ),
          const Marker(
            markerId: MarkerId("destination"),
            position: destLocation,
          ),
        },
         onMapCreated: (mapController){
           _controller.complete(mapController);
         },
      ),
    );
  }

}



