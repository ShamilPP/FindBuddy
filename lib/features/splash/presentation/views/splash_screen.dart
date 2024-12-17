import 'package:find_buddy/app/di.dart';
import 'package:find_buddy/data/repositories/user_repository.dart';
import 'package:find_buddy/features/splash/bloc/splash_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routes/app_routes.dart';
import '../../bloc/splash_bloc.dart';
import '../../bloc/splash_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SplashBloc(locator<UserRepository>())..add(GetUserEvent()),
        child: BlocListener<SplashBloc, SplashState>(
          listener: (context, state) {
            if (state is SplashToHome) {
              Navigator.pushReplacementNamed(context, AppRoutes.home);
            } else if (state is SplashToLogin) {
              Navigator.pushReplacementNamed(context, AppRoutes.login);
            }
          },
          child: const Center(
            child: FlutterLogo(size: 130),
          ),
        ),
      ),
    );
  }
}
