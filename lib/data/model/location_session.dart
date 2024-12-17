import 'package:cloud_firestore/cloud_firestore.dart';

import 'location_point.dart';

class LocationSession {
  final String? id;
  final String userId;
  final Timestamp startTime;
  final Timestamp? endTime;
  final List<LocationPoint> locationHistory;

  LocationSession({this.id, required this.userId, required this.startTime, this.endTime, required this.locationHistory});

  bool get isActive => endTime != null;
}
