import 'package:google_maps_flutter/google_maps_flutter.dart';

Marker1(String id, String title , String snipped, double x , double y ){
  return Marker(
      markerId:  MarkerId('$id'),
      position: LatLng(x, y),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(
          title: '$title',
          snippet: '$snipped'

      )
  );
}