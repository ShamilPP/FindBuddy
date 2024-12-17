import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static const String _userKey = 'userId';

  Future<String?> getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userKey);
  }

  Future<bool> setUserId(String value) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setString(_userKey, value);
  }
}
