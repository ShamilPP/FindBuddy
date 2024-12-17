import 'package:cloud_firestore/cloud_firestore.dart';

class LocationPoint {
  final GeoPoint geoPoint;
  final DateTime time;

  LocationPoint({required this.geoPoint, required this.time});
}
