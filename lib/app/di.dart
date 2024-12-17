import 'package:find_buddy/core/services/local/shared_preferences_service.dart';
import 'package:find_buddy/data/repositories/user_repository.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void setupDi() {
  // Register services
  locator.registerSingleton<SharedPreferencesService>(SharedPreferencesService());
  // getIt.registerLazySingleton<FirestoreService>(() => FirestoreService());

  // Register repositories
  locator.registerSingleton<UserRepository>(UserRepository(locator<SharedPreferencesService>()));
  // getIt.registerLazySingleton<LocationRepository>(() => LocationRepository(firestoreService: getIt<FirestoreService>()));
}
