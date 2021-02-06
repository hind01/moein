import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:location/location.dart';

Location location = new Location();
bool _serviceEnabled;
PermissionStatus _permissionGranted;
LocationData _locationData;

Completer<GoogleMapController> _controller = Completer();

class ProviderOrderDetails extends StatefulWidget {

  @override
  State<ProviderOrderDetails> createState() => ProviderOrderDetailsState();
}

class ProviderOrderDetailsState extends State<ProviderOrderDetails> with WidgetsBindingObserver {
  GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  BitmapDescriptor customIcon;

  @override
  void initState() {
    BitmapDescriptor.fromAssetImage(
        ImageConfiguration(
          size: Size(48, 48),
        ),
        'images/ic_current.png')
        .then((d) {
      customIcon = d;
    });
  }

  Map<MarkerId, Marker> markers =
  <MarkerId, Marker>{}; // CLASS MEMBER, MAP OF MARKS
  void _add() {
    var markerIdVal = 'Source';
    final MarkerId markerId = MarkerId(markerIdVal);

    // creating a new MARKER
    final Marker marker = Marker(
      markerId: markerId,
      icon: customIcon,
      position: LatLng(
        _locationData.latitude,
        _locationData.longitude,
      ),
      infoWindow: InfoWindow(title: markerIdVal, snippet: '*'),
      onTap: () {
        // _onMarkerTapped(markerId);
      },
    );
    var dis_markerIdVal = 'dist';
    final MarkerId dis_markerId = MarkerId(dis_markerIdVal);

    // creating a new MARKER
    final Marker dis_marker = Marker(
      markerId: dis_markerId,
      position: LatLng(
        30.0607,
        31.22172,
      ),
      infoWindow: InfoWindow(title: dis_markerIdVal, snippet: '+'),
      onTap: () {
        // _onMarkerTapped(markerId);
      },
    );

    setState(() {
      // adding a new marker to map
      markers[markerId] = marker;
      markers[dis_markerId] = dis_marker;
    });
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _key,
       appBar: AppBar(
         leading: IconButton(
           icon: Icon(Icons.arrow_back, color: Colors.white),
           onPressed: () => Navigator.of(context).pop(),
         ),
         centerTitle: true,
         backgroundColor: Colors.blue,
         title: Text(
           "Order Details",
           style: TextStyle(
               fontSize: 17,
               fontWeight: FontWeight.bold,
               color: Colors.white),
           textAlign: TextAlign.center,
         ),
       ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child:
                  GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) async {
                      _controller.complete(controller);
                      _serviceEnabled = await location.serviceEnabled();
                      if (!_serviceEnabled) {
                        _serviceEnabled = await location.requestService();
                        if (!_serviceEnabled) {
                          return;
                        }
                      }

                      _permissionGranted = await location.hasPermission();
                      if (_permissionGranted == PermissionStatus.denied) {
                        _permissionGranted = await location.requestPermission();
                        if (_permissionGranted != PermissionStatus.granted) {
                          return;
                        }
                      }

                      _locationData = await location.getLocation();
                      _add();
                      _goToTheLake();
                      location.onLocationChanged
                          .listen((LocationData currentLocation) {
                        _locationData = currentLocation;
                      });
                    },
                    markers: Set<Marker>.of(markers.values),
                    polylines: {},
                  ),
              
            ),
            Container(

              width: double.infinity,
              color: Colors.white54,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 30,bottom: 30, left: 15),
                    alignment: Alignment.centerLeft,
                    child: Text('Determine the building, class number',
                      style: TextStyle(fontSize: 15, color: Colors.grey),),),



                  RaisedButton(
                    elevation: 5.0,
                    hoverColor: Colors.blue,
                    color: Colors.blue,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Click here",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight:
                          FontWeight.bold,),
                      ),
                    ),
                    onPressed: () {
                      // Sheets.displayBottomSheet(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    CameraPosition position = new CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng((_locationData.latitude + 30.0607) / 2,
            (_locationData.longitude + 31.22172) / 2),
        zoom: 8.151926040649414);
    controller.animateCamera(CameraUpdate.newCameraPosition(position));
  }
}
