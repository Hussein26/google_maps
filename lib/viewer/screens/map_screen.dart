import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps/viewer/widget/marker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(30.033333, 31.233334),
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        markers: {
          Marker1("1", "Marker1", "Hello World", 30.033333, 31.233334),
          Marker1("2", "Marker2", "Hello World2", 30.033333, 31.266334),
          Marker1("3", "Marker3", "Hello World3", 30.133333, 31.296334),

        },
        // polylines: {Polyline(
        //   polylineId: PolylineId('1'),
        //   points: [LatLng(30.033333,31.233334),LatLng(30.033333,31.266334),LatLng(30.133333,31.296334)],
        //   color: Colors.red,
        //   width: 2
        // )},
        polygons: {
          Polygon(
              polygonId: PolygonId('1'),
              points: [
                LatLng(30.033333, 31.233334),
                LatLng(30.033333, 31.266334),
                LatLng(30.133333, 31.296334)
              ],
              fillColor: Colors.red,
              strokeWidth: 2)
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
