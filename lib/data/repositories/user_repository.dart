import 'package:find_buddy/core/services/local/shared_preferences_service.dart';

class UserRepository {
  final SharedPreferencesService _sharedPreferencesService;

  UserRepository(this._sharedPreferencesService);

  Future<String?> getUserId() async {
    return await _sharedPreferencesService.getUserId();
  }
}
