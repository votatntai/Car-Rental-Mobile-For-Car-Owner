import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/app/dio_helper.dart';
import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/repositories/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required this.authenticationRepository,
  }) : super(const AuthenticationState(status: AuthenticationStatus.unknown)) {
    on<_StatusChangedEvent>(_onStatusChanged);

    // add subscription
    _authenticationStatusSubscription = authenticationRepository.status.listen(
      (status) => add(AuthenticationEvent.statusChanged(status: status)),
    );
  }

  final AuthenticationRepository authenticationRepository;

  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  @override
  Future<void> close() async {
    await _authenticationStatusSubscription.cancel();
    await authenticationRepository.dispose();
    return super.close();
  }

  FutureOr<void> _onStatusChanged(
    _StatusChangedEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        //* remove dio config
        getIt.get<DioHelper>().removeDioInterceptors();

        emit(AuthenticationState(status: event.status));
        break;

      case AuthenticationStatus.unknown:
        emit(AuthenticationState(status: event.status));

        break;
      case AuthenticationStatus.authenticated:
        //* config dio
        await getIt.get<DioHelper>().initDioInterceptors();

        // final user = await _tryGetUser();
        // if (user == null) {
        //   return emit(
        //     const AuthenticationState(
        //       status: AuthenticationStatus.unauthenticated,
        //     ),
        //   );
        // }

        emit(AuthenticationState(
          status: event.status,
          // user: user,
        ));
        break;
    }
  }

// Future<User?> _tryGetUser() async {
//   try {
//     final user = await _userRepository.getProfile();
//     return user;
//   } catch (_) {
//     return null;
//   }
// }
}
