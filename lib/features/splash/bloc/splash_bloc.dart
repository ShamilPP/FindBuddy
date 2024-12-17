import 'package:find_buddy/data/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'splash_event.dart';
import 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final UserRepository repository;

  SplashBloc(this.repository) : super(SplashInitial()) {
    on<GetUserEvent>(_getUser);
  }

  Future<void> _getUser(GetUserEvent event, Emitter<SplashState> emit) async {
    emit(SplashLoading());
    final userId = await repository.getUserId();
    if (userId != null) {
      emit(SplashToHome());
    } else {
      emit(SplashToLogin());
    }
  }
}
