import 'package:find_buddy/core/constants/app_strings.dart';
import 'package:find_buddy/core/constants/app_theme.dart';
import 'package:flutter/material.dart';

import '../core/routes/app_route_generator.dart';
import '../core/routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppRouteGenerator.generateRoute,
    );
  }
}
