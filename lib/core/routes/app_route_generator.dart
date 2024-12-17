import 'package:find_buddy/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/login_screen.dart';
import '../../features/home/presentation/views/home_screen.dart';
import 'app_routes.dart';

class AppRouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('No route defined for this screen')),
          ),
        );
    }
  }
}
