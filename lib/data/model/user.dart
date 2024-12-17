class User {
  final String? id;
  final String name;
  final int phone;
  final String? liveId;

  bool get isLive => liveId != null;

  User({this.id, required this.name, required this.phone, this.liveId});
}
