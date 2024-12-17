import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void setupDi() {
  // // Register services
  // getIt.registerLazySingleton<FirebaseAuthService>(() => FirebaseAuthService());
  // getIt.registerLazySingleton<FirestoreService>(() => FirestoreService());
  //
  // // Register repositories
  // getIt.registerLazySingleton<AuthRepository>(() => AuthRepository(authService: getIt<FirebaseAuthService>()));
  // getIt.registerLazySingleton<LocationRepository>(() => LocationRepository(firestoreService: getIt<FirestoreService>()));
}
